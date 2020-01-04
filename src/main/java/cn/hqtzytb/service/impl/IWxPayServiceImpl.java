package cn.hqtzytb.service.impl;

import java.awt.BasicStroke;
import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.Shape;
import java.awt.geom.RoundRectangle2D;
import java.awt.image.BufferedImage;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.net.InetAddress;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import javax.imageio.ImageIO;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSONObject;
import com.github.wxpay.sdk.WXPayUtil;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;

import cn.hqtzytb.entity.AdminSystem;
import cn.hqtzytb.entity.Order;
import cn.hqtzytb.entity.ResponseResult;
import cn.hqtzytb.entity.Role;
import cn.hqtzytb.entity.User;
import cn.hqtzytb.entity.WxpayConfig;
import cn.hqtzytb.mapper.OrderMapper;
import cn.hqtzytb.mapper.UserMapper;
import cn.hqtzytb.mapper.UserRoleMapper;
import cn.hqtzytb.service.IWxPayService;
import cn.hqtzytb.utils.Constants;
import cn.hqtzytb.utils.HttpClientUtils;

/**
 * @ClassName: IWxPayService
 * @Description: TODO
 * @Author: WuPeiLong
 * @Date: 2019年12月25日
 * @Copyright:好前途教育
 * @Version V1.0
 */
@Service
public class IWxPayServiceImpl implements IWxPayService {
	private static final Logger logger = LogManager.getLogger(IWxPayServiceImpl.class.getName());
	@Autowired
	private WxpayConfig wxpayConfig;
	@Autowired
	private OrderMapper orderMapper;
	@Autowired
	private UserMapper userMapper;
	@Autowired
	private UserRoleMapper userRoleMapper;

	@Override
	public Object wxpay(HttpServletRequest request, String out_trade_no, String total_fee, String body) {
		Map<String, String> responseDataMap = null;
		try {
			Map<String, String> requestDataMap = new HashMap<String, String>();
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
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：微信支付异常     错误信息: " + e);
		}
		return responseDataMap;
	}

	@Override
	public void generateQRCode(HttpServletRequest request, HttpServletResponse response, String body, String outTradeNo)
			throws Exception {
		try {
			Session session = SecurityUtils.getSubject().getSession();
			Integer uid = (Integer) session.getAttribute("uid");
			AdminSystem adminSystem = userRoleMapper.queryAdminSystemByName(body);
			String out_trade_no = outTradeNo + "_" + uid + "_" + adminSystem.getSid();
			int total_fee = (new Double(Double.parseDouble(adminSystem.getSysnub()) * 100)).intValue();
			// 调用pay工程的微信支付接口
			Map<String, Object> paramMap = new ConcurrentHashMap<String, Object>();
			String url = "http://xgk.sxghfwzx.com/api/wxpay.do?out_trade_no=" + out_trade_no + "&total_fee=" + total_fee
					+ "&body=" + adminSystem.getSyscommet();
			// String url = "http://127.0.0.1/api/wxpay.do?out_trade_no=" +
			// out_trade_no + "&total_fee=" + total_fee + "&body="
			// + adminSystem.getSyscommet();
			System.err.println("url：" + url);
			// pay工程微信支付接口返回的json字符串
			String result = HttpClientUtils.doPost(url, paramMap);
			// 获取到code_url，将其生成二维码显示到页面 ;
			// 解析result
			JSONObject jsonObject = JSONObject.parseObject(result);
			// 获取return_code
			String return_code = jsonObject.getString("return_code");
			// 判断通信是否成功
			if (Constants.SUCCESS.equals(return_code)) {
				// 获取result_code业务处理的结果
				String result_code = jsonObject.getString("result_code");
				// 判断业务处理结果
				if (Constants.SUCCESS.equals(result_code)) {
					// 获取code_url值
					String code_url = jsonObject.getString("code_url");
					// 将code_url生成二维码
					// 二维码宽高
					int width = 250;
					int height = 250;
					// 创建一个map集合
					@SuppressWarnings("rawtypes")
					Hashtable<EncodeHintType, Comparable> hints = new Hashtable<EncodeHintType, Comparable>();
					hints.put(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.H);
					hints.put(EncodeHintType.CHARACTER_SET, "UTF-8");
					hints.put(EncodeHintType.MARGIN, 1);

					// 创建一个矩阵对象
					BitMatrix bitMatrix = new MultiFormatWriter().encode(code_url, BarcodeFormat.QR_CODE, width, height,
							hints);
					width = bitMatrix.getWidth();
					height = bitMatrix.getHeight();
					BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
					for (int x = 0; x < width; x++) {
						for (int y = 0; y < height; y++) {
							image.setRGB(x, y, bitMatrix.get(x, y) ? Constants.BLACK : Constants.WHITE);
						}
					}
					url = this.getClass().getResource("/").getPath().replaceFirst("/", "").replace("WEB-INF/classes/",
							"img/public/logo.jpg");
					// url =
					// this.getClass().getResource("/").getPath().replace("WEB-INF/classes/",
					// "img/public/logo.jpg");
					System.err.println(url);
					File file = new File(url);
					Image logo = ImageIO.read(file);
					width = logo.getWidth(null) > (250 * 2 / 10) ? (250 * 2 / 10) : logo.getWidth(null);
					height = logo.getHeight(null) > (250 * 2 / 10) ? (250 * 2 / 10) : logo.getHeight(null);
					// 插入LOGO
					Graphics2D graph = image.createGraphics();
					int x = (250 - width) / 2;
					int y = (250 - height) / 2;
					graph.drawImage(logo, x, y, width, height, null);
					Shape shape = new RoundRectangle2D.Float(x, y, width, width, 6, 6);
					graph.setStroke(new BasicStroke(3f));
					graph.draw(shape);
					graph.dispose();
					OutputStream outputStream = response.getOutputStream();
					// 输出流对象
					ImageIO.write(image, "jpg", outputStream);
					image.flush();
					outputStream.flush();
					outputStream.close();
				}
			}
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：微信支付生成二维码异常     错误信息: " + e);
		}

	}

	@Override
	public void weixinNotify(HttpServletRequest request, HttpServletResponse response) throws IOException {
		try {
			Date currentTime = new Date();
			String inputLine;
			String notityXml = "";
			ServletContext application = request.getServletContext();
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html;charset=UTF-8");
			response.setHeader("Access-Control-Allow-Origin", "*");
			// 微信给返回的东西
			while ((inputLine = request.getReader().readLine()) != null) {
				notityXml += inputLine;
			}
			request.getReader().close();

			// 创建一个map
			Map<String, String> map = new HashMap<String, String>();
			if (notityXml != "") {
				// 把微信返回的XML转换成map
				try {
					map = WXPayUtil.xmlToMap(notityXml);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			System.err.println(map.get("out_trade_no"));
			// 定义一个返回给微信的变量
			String resXml = "";
			// 判断返回的通知是否是交易成功
			if ("SUCCESS".equals(map.get("result_code"))) {
				// 通知微信.异步确认成功.必写.不然会一直通知后台.八次之后就认为交易失败了.
				resXml = "<xml>" + "<return_code><![CDATA[SUCCESS]]></return_code>"
						+ "<return_msg><![CDATA[OK]]></return_msg>" + "</xml> ";
				// 向微信服务器发送确认信息，若不发送，微信服务器会间隔不同的时间调用回调方法
				BufferedOutputStream out;
				out = new BufferedOutputStream(response.getOutputStream());
				out.write(resXml.getBytes());
				out.flush();
				out.close();
				application.setAttribute(map.get("out_trade_no") + "SUCCESS", "SUCCESS");
				System.out.println("通知微信.异步确认成功");
				// 订单详情
				String[] detail = map.get("out_trade_no").split("_");
				// VIP套餐
				AdminSystem adminSystem = userRoleMapper.queryAdminSystemById(detail[2]);
				Order order = new Order();
				order.setUid(Integer.valueOf(detail[1]));
				order.setOutTradeNo(detail[0]);
				order.setRechargeMoney(Double.valueOf(adminSystem.getSysnub()));
				order.setBody(adminSystem.getSyscommet());
				order.setCreateTime(currentTime);
				orderMapper.insert(order);
				// 销毁全局支付成功跳转路径
				List<User> userList = userMapper.select(" id = '" + detail[1] + "'", null, null, null);
				if (!userList.isEmpty()) {
					Calendar expirationTime = Calendar.getInstance();
					expirationTime.setTime(currentTime);
					expirationTime.add(Calendar.YEAR, 1);// 1年后后过期
					if ("VIPRECHAARGE".equals(adminSystem.getSysname())) {// vip充值
						System.err.println("获得VIP角色");
						// 获得VIP角色
						Role role = userRoleMapper.queryRoleBySystemName("SYSTEMVIP");
						AdminSystem uSystem = userRoleMapper.queryAdminSystemByRoleId(userList.get(0).getRid());
						if ("SYSTEMUSER".equals(uSystem.getSysname())) {// 普通用户升级成为vip
							userList.get(0).setRid(role.getRoleId());// 成为个人vip用户
							userList.get(0).setAuthority(role.getRoleAuthority());// 个人vip授权
							userList.get(0).setDownloadCount(9);// 新增9次下载报告次数
							userList.get(0).setExpirationTime(expirationTime.getTime());// 1年后后过期
						} else {// vip续费
							if (currentTime.before(userList.get(0).getExpirationTime())) {// 未过期
								expirationTime = Calendar.getInstance();
								expirationTime.setTime(userList.get(0).getExpirationTime());
								expirationTime.add(Calendar.YEAR, 1);// 增加1年过期时间
							}
							userList.get(0).setDownloadCount(userList.get(0).getDownloadCount() + 9);// 新增9次下载报告次数
							userList.get(0).setExpirationTime(expirationTime.getTime());// 增加1年后后过期
						}
					} else if ("COUNSELORRECHAARGE".equals(adminSystem.getSysname())) {// 咨询师充值
						System.err.println("获得咨询师角色");
						// 获得咨询师角色
						Role role = userRoleMapper.queryRoleBySystemName("SYSTEMCOUNSELOR");
						AdminSystem uSystem = userRoleMapper.queryAdminSystemByRoleId(userList.get(0).getRid());
						if ("SYSTEMUSER".equals(uSystem.getSysname())) {// 普通用户升级成为vip
							expirationTime = Calendar.getInstance();
							expirationTime.setTime(currentTime);
							expirationTime.add(Calendar.YEAR, 1);// 1年后后过期
							userList.get(0).setRid(role.getRoleId());// 成为个人咨询师
							userList.get(0).setAuthority(role.getRoleAuthority());// 个人咨询师授权
							userList.get(0).setDownloadCount(100);// 新增100次下载报告次数
							userList.get(0).setExpirationTime(expirationTime.getTime());// 1年后后过期
						} else {// 咨询师续费
							if (currentTime.before(userList.get(0).getExpirationTime())) {// 未过期
								expirationTime = Calendar.getInstance();
								expirationTime.setTime(userList.get(0).getExpirationTime());
								expirationTime.add(Calendar.YEAR, 1);// 增加1年过期时间
							}
							userList.get(0).setRid(role.getRoleId());// 成为个人咨询师
							userList.get(0).setAuthority(role.getRoleAuthority());// 个人咨询师授权
							userList.get(0).setDownloadCount(userList.get(0).getDownloadCount() + 100);// 新增100次下载报告次数
							userList.get(0).setExpirationTime(expirationTime.getTime());// 增加1年后后过期
						}
					} else if ("DOWNLOADRECHAARGE".equals(adminSystem.getSysname())) {
						System.err.println("单独购买1次下载报告");
						// 单独购买1次下载报告
						userList.get(0).setDownloadCount(userList.get(0).getDownloadCount() + 1);
						if (userList.get(0).getExpirationTime() != null
								&& currentTime.before(userList.get(0).getExpirationTime())) {
							expirationTime = Calendar.getInstance();
							expirationTime.setTime(userList.get(0).getExpirationTime());
							expirationTime.add(Calendar.YEAR, 1);// 增加1年过期时间
						}
						userList.get(0).setExpirationTime(expirationTime.getTime());// 1年后后过期
					}
					Integer row = userMapper.updateById(userList.get(0));
					System.err.println("修改行数：" + row);
				}
			} else {
				resXml = "<xml>" + "<return_code><![CDATA[FAIL]]></return_code>"
						+ "<return_msg><![CDATA[报文为空]]></return_msg>" + "</xml> ";
				BufferedOutputStream out = new BufferedOutputStream(response.getOutputStream());
				out.write(resXml.getBytes());
				out.flush();
				out.close();
				logger.error("访问路径：" + request.getRequestURI() + "操作：用户充值VIP异常  异常数据：" + map.get("out_trade_no"));
				System.out.println("通知微信.异步确认交易失败");
			}
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：微信支付回掉异常 错误信息: " + e);
		}
	}

	/*	*//**
			 * 生成时间戳订单id
			 * 
			 * @return
			 *//*
			 * private String generateOrderTradeNo() { String current_time =
			 * Long.toString(System.currentTimeMillis()); String date = new
			 * SimpleDateFormat("yyyyMMddHHmmss").format(new Date()); return
			 * date + current_time.substring(current_time.length() - 4); }
			 */

	@Override
	public ResponseResult<Void> queryWxIsPay(HttpServletRequest request, HttpServletResponse response,
			String outTradeNo) {
		try {
			Subject subject = SecurityUtils.getSubject();
			if (subject.isAuthenticated()) {
				Integer uid = (Integer) subject.getSession().getAttribute("uid");
				List<Order> orderList = orderMapper
						.select("out_trade_no = '" + outTradeNo + "' AND uid = '" + uid + "'", null, null, null);
				if (orderList.isEmpty()) {
					return new ResponseResult<>(ResponseResult.ERR, Constants.RESULT_MESSAGE_FAIL);
				} else {
					return new ResponseResult<>(ResponseResult.STATE_OK, Constants.RESULT_MESSAGE_SUCCESS);
				}
			}
			return new ResponseResult<>(ResponseResult.ERR, Constants.RESULT_MESSAGE_FAIL);
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：微信支付订单查询异常     错误信息: " + e);
			return new ResponseResult<>(ResponseResult.ERR, Constants.RESULT_MESSAGE_FAIL);
		}
	}

	@Override
	public String wxPaySucees(HttpServletRequest request, HttpServletResponse response, String nowUrl) {
		try {
			SecurityUtils.getSubject().getSession().setAttribute("nowUrl", nowUrl);
			return "web/public/pay_success";
		} catch (Exception e) {
			return "web/xgk/xgk_error_404";
		}

	}

	@Override
	public String wxPayFail(HttpServletRequest request, HttpServletResponse response, String nowUrl) {
		try {
			SecurityUtils.getSubject().getSession().setAttribute("nowUrl", nowUrl);
			return "web/public/pay_failed";
		} catch (Exception e) {
			return "web/xgk/xgk_error_404";
		}
	}

}
