package cn.hqtzytb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.hqtzytb.entity.ResponseResult;
import cn.hqtzytb.service.IWxPayService;

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
public class WXpayController {

	@Autowired
	private IWxPayService iWxPayService;

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

		return iWxPayService.wxpay(request, out_trade_no, total_fee, body);
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

		iWxPayService.generateQRCode(request, response, body, outTradeNo);
	}

	/**
	 * 微信支付回调 这里在统一下单中提供的notify_url地址是:http://blodan.cn/api/callback.do callback
	 * 映射到微信本地
	 */
	@RequestMapping(value = "/callback.do")
	public void weixin_notify(HttpServletRequest request, HttpServletResponse response) throws Exception {

		iWxPayService.weixinNotify(request, response);
	}

	/**
	 * 查询微信是否扫码支付成功
	 */
	@RequestMapping(value = "/query_wx_is_pay.do")
	@ResponseBody
	public ResponseResult<Void> queryWxIsPay(HttpServletRequest request, HttpServletResponse response,
			String outTradeNo) throws Exception {

		return iWxPayService.queryWxIsPay(request, response, outTradeNo);
	}

	/**
	 * 查询微信扫码支付成功
	 */
	@RequestMapping(value = "/wx_pay_sucees.do")
	public String wxPaySucees(HttpServletRequest request, HttpServletResponse response, String nowUrl)
			throws Exception {

		return iWxPayService.wxPaySucees(request, response, nowUrl);
	}

	/**
	 * 查询微信扫码支付失败
	 */
	@RequestMapping(value = "/wx_pay_fail.do")
	public String wxPayFail(HttpServletRequest request, HttpServletResponse response, String nowUrl) throws Exception {

		return iWxPayService.wxPayFail(request, response, nowUrl);
	}
}
