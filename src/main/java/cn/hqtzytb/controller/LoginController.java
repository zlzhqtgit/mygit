package cn.hqtzytb.controller;


import cn.hqtzytb.entity.ResponseResult;
import cn.hqtzytb.service.ILoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.*;



/**
 * @ClassName: LoginController
 * @Description: 登录控制器
 * @Author: WuPeiLong
 * @Date: 2019年11月28日
 * @Copyright:好前途教育
 * @Version V1.0
 */
@Controller
public class LoginController {
    @Autowired
    private ILoginService iLoginService;

    /**
     * 微信扫码登录入口
     * @return
     */
    @RequestMapping("/wxLogin.do")
    private String wxLogin(){
        return iLoginService.wxLogin();
    }

    /**
     * 腾讯登录跳转
     * @return
     */
    @RequestMapping("/qq_login.do")
    private void qqLogin(HttpServletRequest request, HttpServletResponse response){
        iLoginService.qqLogin(request,response);
    }


    /**
     * 腾讯登录回调
     * @param request
     * @param response 
     * @return
     */
    @RequestMapping("/connect.do")
    private String qqLoginCallback(HttpServletRequest request, HttpServletResponse response){
        return iLoginService.qqLoginCallback(request,response);
    }


    /**
     * 微信登录回调
     * @param request
     * @param response
     * @return
     */
//    @RequestMapping("/loginServlet")
    @RequestMapping("/wxLoginCallback.do")
    private String wxLoginCallback(HttpServletRequest request, HttpServletResponse response){
        return iLoginService.wxLoginCallback(request,response);
    }

    /**
     * 用戶登出模块
     * @param session
     * @return
     */
    @RequestMapping("/login_out.do")
    public String logout() {
    	return iLoginService.logout();
    }

    /**
     * 进入用戶重置密码首页
     * @param session
     * @return
     */
    @RequestMapping("/reset_password.do")
    public String resetPassword(HttpServletRequest request, HttpServletResponse response) {
    	return iLoginService.resetPassword(request,response);
    }
    
    /**
	 * 用户重置密码验证手机号
	 */
	@RequestMapping("/hqt_verify_phone.do")
	@ResponseBody
	public ResponseResult<Void> verifyPhone(String phone,String verifyCode , HttpServletRequest request){
		
		return iLoginService.verifyPhone(phone, verifyCode, request);
	}
	
    /**
	 * 用户重置密码
	 */
	@RequestMapping("/hqt_update_password.do")
	@ResponseBody
	public ResponseResult<Void> updatePassword(String phone,String password , HttpServletRequest request){
		
		return iLoginService.updatePassword(phone, password, request);
	}
}