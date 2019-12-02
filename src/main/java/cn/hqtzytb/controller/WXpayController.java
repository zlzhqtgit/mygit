package cn.hqtzytb.controller;

import java.awt.image.BufferedImage;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import javax.imageio.ImageIO;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.hqtzytb.utils.Constants;
import cn.hqtzytb.utils.HttpClientUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.alibaba.fastjson.JSONObject;
import com.github.wxpay.sdk.WXPayUtil;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import cn.hqtzytb.entity.WxpayConfig;

/**
* @Title: WXpayController.java
* @Package cn.hqtzytb.controller
* @Description:(微信支付控制层)
* @author: ZhouLingZhang
* @date 2019年11月11日
* @Copyright:好前途教育
* @version V1.0
 */
@Controller
@RequestMapping("/api")
public class WXpayController
{
	@Autowired
	private WxpayConfig wxpayConfig;

	@RequestMapping("/wxpay.do")
	public @ResponseBody Object wxpay(HttpServletRequest request,
			@RequestParam(value = "out_trade_no", required = true) String out_trade_no,
			@RequestParam(value = "total_fee", required = true) String total_fee,
			@RequestParam(value = "body", required = true) String body)
	{
		Map<String, String> requestDataMap = new HashMap<String, String>();
		Map<String, String> responseDataMap = null;
		try
		{
			requestDataMap.put("appid", wxpayConfig.getAppid());
			requestDataMap.put("mch_id", wxpayConfig.getMch_id());
			// 生成随机字符串
			String nonceStr = WXPayUtil.generateNonceStr();
			requestDataMap.put("nonce_str", nonceStr);
			requestDataMap.put("body", new String(body.toString().getBytes("ISO8859-1"), "UTF-8"));
			requestDataMap.put("out_trade_no", out_trade_no);
			requestDataMap.put("total_fee", total_fee);
			InetAddress localHost = InetAddress.getLocalHost();
			String hostAddress = localHost.getHostAddress();
			requestDataMap.put("spbill_create_ip", hostAddress);
			requestDataMap.put("notify_url", wxpayConfig.getNotify_url());
			requestDataMap.put("trade_type", wxpayConfig.getTrade_type());
			requestDataMap.put("product_id", out_trade_no);
			String signValue = WXPayUtil.generateSignature(requestDataMap, wxpayConfig.getKey());
			requestDataMap.put("sign", signValue);
			String requestDataXml = WXPayUtil.mapToXml(requestDataMap);
			String responseDataXml = HttpClientUtils.doPostByXml(wxpayConfig.getWxpay_url(), requestDataXml);
			responseDataMap = WXPayUtil.xmlToMap(responseDataXml);
			System.out.println("发送给微信的XML:" + responseDataXml);			
		} catch (Exception e){
			e.printStackTrace();
		}
		return responseDataMap;
	}
	@RequestMapping(value = "/weixinQRCode.do")
	public void generateQRCode(HttpServletRequest request, HttpServletResponse response,
			@RequestParam(value = "out_trade_no", required = true) String out_trade_no,
			@RequestParam(value = "rechargeMoney", required = true) Double rechargeMoney)
	{	
		int i = (new Double(rechargeMoney * 100)).intValue();
		System.out.println(out_trade_no);
		// Integer total_fee=Integer.parseInt(rechargeMoney);
		// 调用pay工程的微信支付接口
		Map<String, Object> paramMap = new ConcurrentHashMap<String, Object>();
		// pay工程微信支付接口返回的json字符串
		String result = HttpClientUtils.doPost("http://localhost:8080/hqtzytb/api/wxpay.do?out_trade_no=" + out_trade_no
				+ "&total_fee=" + i + "&body=停车费充值", paramMap);
		// 获取到code_url，将其生成二维码显示到页面 ;
		// 解析result	
		JSONObject jsonObject = JSONObject.parseObject(result);
		// 获取return_code
		String return_code = jsonObject.getString("return_code");
		// 判断通信是否成功
		if (Constants.SUCCESS.equals(return_code)){
			// 获取result_code业务处理的结果
			String result_code = jsonObject.getString("result_code");
			// 判断业务处理结果
			if (Constants.SUCCESS.equals(result_code))
			{
				try
				{
				// 获取code_url值
				String code_url = jsonObject.getString("code_url");
				// 将code_url生成二维码
				// 二维码宽高
				int width = 200;
				int height = 200;
				// 创建一个map集合
				Map<EncodeHintType, Object> hints = new HashMap<EncodeHintType, Object>();
				hints.put(EncodeHintType.CHARACTER_SET, "UTF-8");
				// 创建一个矩阵对象
				BitMatrix bitMatrix = new MultiFormatWriter().encode(code_url, BarcodeFormat.QR_CODE, width, height,
						hints);
				// 创建字节数组输出流
				ByteArrayOutputStream imageOut = new ByteArrayOutputStream();
				// 将矩阵对象转换为响应到页面
				MatrixToImageWriter.writeToStream(bitMatrix, "jpg", imageOut);
				// 创建一个字节输入流
				ByteArrayInputStream imageIn = new ByteArrayInputStream(imageOut.toByteArray());
				// 创建一个图片缓存对象
				BufferedImage bImage = ImageIO.read(imageIn);
				// 输出流对象
				OutputStream outputStream = response.getOutputStream();
				ImageIO.write(bImage, "jpg", outputStream);
				bImage.flush();
				outputStream.flush();
				outputStream.close();				
				} catch (Exception e)
				{
					e.printStackTrace();
				}
			}
		} 
	}

	/**
	 * 微信支付回调
	 * 这里在统一下单中提供的notify_url地址是:http://blodan.cn/api/callback.do
	 * callback 映射到微信本地
	 */
	@RequestMapping(value = "/callback.do")
	public void weixin_notify(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		String inputLine;
		String notityXml = "";
		ServletContext application = request.getSession().getServletContext();
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		response.setHeader("Access-Control-Allow-Origin", "*");
		// 微信给返回的东西
		try
		{
			while ((inputLine = request.getReader().readLine()) != null)
			{
				notityXml += inputLine;
			}
			request.getReader().close();
		} catch (Exception e)
		{
			e.printStackTrace();
		}
		//创建一个map
		Map<String, String> map = new HashMap<String, String>();
		if(notityXml!=""){
			//把微信返回的XML转换成map
			map = WXPayUtil.xmlToMap(notityXml);
		}
		System.out.println(notityXml);
		//定义一个返回给微信的变量
		String resXml ="";
		//判断返回的通知是否是交易成功
		if ("SUCCESS".equals(map.get("result_code")))
		{			
			// 通知微信.异步确认成功.必写.不然会一直通知后台.八次之后就认为交易失败了.
			resXml = "<xml>" + "<return_code><![CDATA[SUCCESS]]></return_code>"
					+ "<return_msg><![CDATA[OK]]></return_msg>" + "</xml> ";			
			// 向微信服务器发送确认信息，若不发送，微信服务器会间隔不同的时间调用回调方法
			BufferedOutputStream out = new BufferedOutputStream(response.getOutputStream());
			out.write(resXml.getBytes());
			out.flush();
			out.close();			
			application.setAttribute(map.get("out_trade_no")+"SUCCESS","SUCCESS");			
			System.out.println("通知微信.异步确认成功");			
		} else{			
			resXml = "<xml>" + "<return_code><![CDATA[FAIL]]></return_code>"
					+ "<return_msg><![CDATA[报文为空]]></return_msg>" + "</xml> ";
			BufferedOutputStream out = new BufferedOutputStream(response.getOutputStream());
			out.write(resXml.getBytes());
			out.flush();
			out.close();
			application.setAttribute(map.get("out_trade_no")+"SUCCESS","FAIL");
			System.out.println("通知微信.异步确认交易失败");			
		}
	}
}
