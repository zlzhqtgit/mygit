package cn.hqtzytb.service;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.hqtzytb.entity.ResponseResult;

/**
 * @ClassName: IWxPayService
 * @Description: TODO
 * @Author: WuPeiLong
 * @Date: 2019年12月25日
 * @Copyright:好前途教育
 * @Version V1.0
 */
public interface IWxPayService {

	Object wxpay(HttpServletRequest request, String out_trade_no, String total_fee, String body);

	void generateQRCode(HttpServletRequest request, HttpServletResponse response, String body, String outTradeNo)
			throws Exception;

	void weixinNotify(HttpServletRequest request, HttpServletResponse response) throws IOException;

	ResponseResult<Void> queryWxIsPay(HttpServletRequest request, HttpServletResponse response, String outTradeNo);

	String wxPaySucees(HttpServletRequest request, HttpServletResponse response, String nowUrl);

	String wxPayFail(HttpServletRequest request, HttpServletResponse response, String nowUrl);

}
