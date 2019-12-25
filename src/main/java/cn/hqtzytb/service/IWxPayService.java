package cn.hqtzytb.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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

	void generateQRCode(HttpServletRequest request, HttpServletResponse response, String out_trade_no, Double rechargeMoney);

	void weixinNotify(HttpServletRequest request, HttpServletResponse response);
	

}