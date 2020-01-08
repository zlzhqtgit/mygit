package cn.hqtzytb.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import cn.hqtzytb.entity.ResponseResult;
import cn.hqtzytb.entity.User;
import cn.hqtzytb.exception.MyRuntimeException;
import cn.hqtzytb.service.IUserRoleDetailsServer;
import cn.hqtzytb.service.IUserRoleServer;
import cn.hqtzytb.service.IUserServer;


/**
* @Title: UserController.java
* @Package cn.hqtzytb.controller
* @Description:(前端用户控制层)
* @author: ZhouLingZhang
* @date 2019年10月14日
* @Copyright:好前途教育
* @version V1.0
*/
@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	public IUserServer iUserServer;
	@Autowired
	public IUserRoleServer iUserRoleServer;
	@Autowired
	public IUserRoleDetailsServer iUserRoleDetailsServer;
	
	
	/**
	 * 进入新高考登录模块
	 * @param map
	 * @param nowUrl
	 * @param request
	 * @param response
	 * @return
	 * @throws MyRuntimeException
	 */
	@RequestMapping("xgk_login.do")
	public String hanldLogin(ModelMap map,String nowUrl,HttpServletRequest request,HttpServletResponse response) throws MyRuntimeException{
		
		return iUserServer.hanldLogin(map,nowUrl,request,response);
	}

	
	/**
	 * 新高考用户登录实现方法
	 * @param phone
	 * @param password
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/xgk_userLogin.do", method = RequestMethod.POST)
	@ResponseBody
	public ResponseResult<Void> handleUserlogin(String account, String password, HttpServletRequest request) {

		return iUserServer.handleUserlogin(account, password, request);
	}
	

	/**
	 * 进入用户注册页面
	 * @param map
	 * @param request
	 * @param response
	 * @return
	 * @throws MyRuntimeException
	 */
	@RequestMapping("register.do")
	public String hanldRegister(ModelMap map, HttpServletRequest request, HttpServletResponse response) throws MyRuntimeException {
		
		return iUserServer.hanldRegister(map,request,response);
	}
	

	/**
	 * 用户注册获取短信验证码
	 * @param phone
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/hqt_photoyzm.do", method = RequestMethod.POST)
	@ResponseBody
	public ResponseResult<Void> handlephotoyzm(String phone, HttpServletRequest request){
		
		return iUserServer.handlephotoyzm(phone,request);
	}
	
	
	/**
	 * 用户注册实现方法
	 * @param user
	 * @param verifyCode
	 * @param request
	 * @return
	 */
	@PostMapping(value = "/hqt_registeradd.do")
	@ResponseBody
	public ResponseResult<Void> handleRegisteradd(User user, String verifyCode, HttpServletRequest request) {
		
		return iUserServer.handleRegisteradd(user,verifyCode,request);
	}

	/**
	 * 微信丶QQ登陆绑定已有账户
	 * @param session
	 * @param phone
	 * @param verifyCode
	 * @return
	 */
	@RequestMapping("/hqt_bind_account.do")
	@ResponseBody
	public ResponseResult<Void> bindAccount(String phone,String verifyCode){

		return iUserServer.bindAccount(phone,verifyCode);
	}


	/**
	 * 查用手机号是否已注册
	 * @param phone
	 * @return
	 */
	@RequestMapping("/user_is_exist.do")
	@ResponseBody
	public ResponseResult<Void> userIsExist(@RequestParam(value = "phone") String phone, HttpServletRequest request){
		
		return iUserServer.userIsExist(phone,request);
	}


	/**
	 * 给已注册用户发送短信
	 * @param phone
	 * @param session
	 * @param request
	 * @return
	 */
	@RequestMapping("/send_message.do")
	@ResponseBody
	public ResponseResult<Void> sendMessage(@RequestParam(value = "phone") String phone, HttpSession session, HttpServletRequest request){
		
		return iUserServer.sendMessage(phone, session, request);
	}
	
	/**
	 * 进入用户个人中心
	 * @param phone
	 * @return
	 */
	@RequestMapping("/hqt_user_info.do")
	public String showUserCenterInfo(HttpServletRequest request){
		
		return iUserServer.showUserCenterInfo(request);
	}
	
	
	/**
	 * 判断用户是否能够下载报告
	 */
	@RequestMapping("/hqt_download_count.do")
	@ResponseBody
	public ResponseResult<Map<String, Object>> reduceDownloadCount(HttpServletRequest request){
		
		return iUserServer.reduceDownloadCount(request);
	}
	
	/**
	 * 上传任务报告
	 */
	@RequestMapping("/hqt_task_add.do")
	@ResponseBody
	public ResponseResult<Map<String, Object>> addTaskResult(Integer taskId, HttpServletRequest request){
		
		return iUserServer.addTaskResult(taskId, request);
	}
	
	
	/**
	 * 修改用户信息
	 */
	@RequestMapping("/hqt_update_user.do")
	@ResponseBody
	public ResponseResult<Void> updateUserInfo(User user, HttpServletRequest request){
		return iUserServer.updateUserInfo(user, request);
	}

	/**
	 * 用户修改手机号
	 */
	@RequestMapping("/hqt_update_phone.do")
	@ResponseBody
	public ResponseResult<Void> updateUserPhone(String phone,String verifyCode , HttpServletRequest request){
		
		return iUserServer.updateUserPhone(phone, verifyCode, request);
	}
	
	
}
