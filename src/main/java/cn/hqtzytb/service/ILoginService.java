package cn.hqtzytb.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.hqtzytb.entity.ResponseResult;


/**
 * @ClassName: LoginService
 * @Description: TODO
 * @Author: WuPeiLong
 * @Date: 2019年11月28日
 * @Copyright:好前途教育
 * @Version V1.0
 */
public interface ILoginService {
    String wxLogin();

    void qqLogin(HttpServletRequest request, HttpServletResponse response);

    String qqLoginCallback(HttpServletRequest request, HttpServletResponse response);

    String wxLoginCallback(HttpServletRequest request, HttpServletResponse response);

	String logout();
	
	String resetPassword(HttpServletRequest request, HttpServletResponse response);

	ResponseResult<Void> verifyPhone(String phone, String verifyCode, HttpServletRequest request);

	ResponseResult<Void> updatePassword(String phone, String password, HttpServletRequest request);
}
