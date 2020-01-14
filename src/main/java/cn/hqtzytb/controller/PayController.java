package cn.hqtzytb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.request.AlipayTradePagePayRequest;

import cn.hqtzytb.entity.ResponseResult;
import cn.hqtzytb.service.IPayService;

/**
 * @Title: PayController.java
 * @Package cn.hqtzytb.controller
 * @Description:(微信支付控制层)
 * @author: ZhouLingZhang
 * @date 2019年11月11日
 * @Copyright:好前途教育
 * @version V1.0
 */
@Controller
@RequestMapping("/api")
public class PayController {

	@Autowired
	private IPayService iPayService;

	/**
	 * 微信支付
	 * 
	 * @param request
	 * @param out_trade_no
	 * @param total_fee
	 * @param body
	 * @return
	 */
	@RequestMapping("/wxpay.do")
	@ResponseBody
	public Object wxpay(HttpServletRequest request,
			@RequestParam(value = "out_trade_no", required = true) String out_trade_no,
			@RequestParam(value = "total_fee", required = true) String total_fee,
			@RequestParam(value = "body", required = true) String body) {

		return iPayService.wxpay(request, out_trade_no, total_fee, body);
	}

	/**
	 * 微信生成二维码
	 * 
	 * @param request
	 * @param response
	 * @param body
	 * @param rechargeMoney
	 * @throws Exception
	 */
	@RequestMapping(value = "/weixinQRCode.do")
	public void generateQRCode(HttpServletRequest request, HttpServletResponse response, String body, String outTradeNo)
			throws Exception {

		iPayService.generateQRCode(request, response, body, outTradeNo);
	}

	/**
	 * 微信支付回调 这里在统一下单中提供的notify_url地址是:http://blodan.cn/api/callback.do callback
	 * 映射到微信本地
	 */
	@RequestMapping(value = "/callback.do")
	public void weixin_notify(HttpServletRequest request, HttpServletResponse response) throws Exception {

		iPayService.weixinNotify(request, response);
	}

	/**
	 * 查询微信是否扫码支付成功
	 */
	@RequestMapping(value = "/query_order_status.do")
	@ResponseBody
	public ResponseResult<Void> queryWxIsPay(HttpServletRequest request, HttpServletResponse response,
			String outTradeNo) throws Exception {

		return iPayService.queryWxIsPay(request, response, outTradeNo);
	}

	/**
	 * 微信扫码支付成功页面
	 */
	@RequestMapping(value = "/wx_pay_sucees.do")
	public String wxPaySucees(HttpServletRequest request, HttpServletResponse response, String nowUrl)
			throws Exception {

		return iPayService.wxPaySucees(request, response, nowUrl);
	}

	/**
	 * 微信扫码支付失败页面
	 */
	@RequestMapping(value = "/wx_pay_fail.do")
	public String wxPayFail(HttpServletRequest request, HttpServletResponse response, String nowUrl) throws Exception {

		return iPayService.wxPayFail(request, response, nowUrl);
	}
	
	/**
	 * 支付宝支付
	 * @param request
	 * @param response
	 * @param body
	 * @param outTradeNo
	 * @throws Exception
	 */
	@RequestMapping("/alipay.do")
	public void alipay(HttpServletRequest request, HttpServletResponse response, String body, String outTradeNo)  throws Exception {
		
		iPayService.alipay(request, response, body, outTradeNo);		
	}
	
	/**
	 * 支付宝异步回调
	 */
	@RequestMapping(value = "/ali_notify_url.do")
	@ResponseBody
	public String aliNotifyUrl(HttpServletRequest request, HttpServletResponse response, String nowUrl)throws Exception {

		return iPayService.aliNotifyUrl(request, response);
	}

	/**
	 * 支付宝同步回调
	 */
	@RequestMapping(value = "/ali_return_url.do")
	public String aliReturnUrl(HttpServletRequest request, HttpServletResponse response, String nowUrl)	throws Exception {

		return iPayService.aliReturnUrl(request, response);
	}
}
