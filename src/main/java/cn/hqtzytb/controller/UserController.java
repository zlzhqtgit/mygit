package cn.hqtzytb.controller;


import java.util.Date;
import java.util.List;
import java.util.UUID;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import cn.hqtzytb.utils.Constants;
import cn.hqtzytb.utils.GetCommonUser;
import cn.hqtzytb.utils.Photo;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsResponse;
import cn.hqtzytb.entity.PhotoConfig;
import cn.hqtzytb.entity.ResponseResult;
import cn.hqtzytb.entity.User;
import cn.hqtzytb.entity.UserFeature;
import cn.hqtzytb.entity.UserRole;
import cn.hqtzytb.entity.UserRoleDetails;
import cn.hqtzytb.exception.MyRuntimeException;
import cn.hqtzytb.intercepter.MyUsernamePasswordToken;
import cn.hqtzytb.mapper.UserFeatureMapper;
import cn.hqtzytb.service.IUserRoleDetailsServer;
import cn.hqtzytb.service.IUserRoleServer;
import cn.hqtzytb.service.IUserServer;
import net.sf.json.JSONObject;

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
	public IUserServer userServer;
	@Autowired
	public IUserRoleServer userRoleServer;
	@Autowired
	public IUserRoleDetailsServer userRoleDetailsServer;
	@Autowired
	private PhotoConfig photoConfig;


	private  static final  Logger logger = LogManager.getLogger(UserController.class.getName());

	
	/**
	* @Title: hanldLogin
	* @Description: (进入新高考登录模块)
	* @param @param map
	* @param @param session
	* @param @param request
	* @param @param response
	* @param @return
	* @param @throws MyRuntimeException    
	* @return String    
	* @throws
	 */
	@RequestMapping("xgk_login.do")
	public String hanldLogin(ModelMap map,String nowUrl,HttpServletRequest request,HttpServletResponse response) throws MyRuntimeException{
		Session session = SecurityUtils.getSubject().getSession();
		try
		{
			map.addAttribute("nowUrl", nowUrl);
			logger.info("用户名："+session.getAttribute("username")+" 模块名：新高考用户登录模块  操作：进入模块  状态：OK!");
			return "web/xgk/xgk_login";	
		} catch (Exception e){
			logger.error("访问路径："+request.getRequestURI()+"操作：进入新高考用户登录模块     错误信息: "+e);
			throw new MyRuntimeException(e);
		}	
	}

	
	/**
	* @Title: handleUserlogin
	* @Description: (新高考用户登录实现方法)
	* @param @param phone
	* @param @param password
	* @param @param session
	* @param @param request
	* @param @return    
	* @return ResponseResult<Void>    
	* @throws
	 */
	@RequestMapping(value = "/xgk_userLogin.do", method = RequestMethod.POST)
	@ResponseBody
	public ResponseResult<Void> handleUserlogin(String phone, String password, HttpServletRequest request) {
		Subject subject = SecurityUtils.getSubject();
		ResponseResult<Void> rr=null;		
		try {			
			//查询用户名是否存在
			User user = userServer.queryUser(phone);
			System.out.println("手机号：" + phone);
			System.out.println("密码：" + password);
			//判断用户名是否存在
			if (user == null){
				rr = new ResponseResult<Void>(ResponseResult.ERR,"手机号不存在!请重新输入...");
				logger.info("用户手机：" + phone + " 模块名：登录模块 操作：登录  状态：Failed! ");
			}else{
				MyUsernamePasswordToken token = new MyUsernamePasswordToken(phone, password);	
				subject.login(token);
				Session session= subject.getSession();
				session.setAttribute(Constants.SYSTEM_USER,user);
				session.setAttribute("uid", user.getId());
				session.setAttribute("username", user.getUsername());
				session.setAttribute("headUrl", user.getHeadUrl());
				JSONObject userJson = JSONObject.fromObject(user);
				session.setAttribute("userJson", userJson);//提供给前端页面使用
				session.setAttribute("user", user);//提供给后台服务websocket类使用(存放对象，避免过多的json转换)
				rr = new ResponseResult<Void>(ResponseResult.STATE_OK, "登录成功");
				logger.info("用户名："+user.getUsername()+" 模块名：登录模块 操作：登录  状态：OK!");
			}			
		} catch (Exception e) {
			e.printStackTrace();
//			logger.error("访问路径："+request.getRequestURI()+"操作：添加区库信息  错误信息: "+e);
//			rr=new ResponseResult<Void>(ResponseResult.ERR,"数据存在异常，请联系工作人员处理！");
		}
		return rr;
	}
	
	/**
	 * @Title: hanldRegister @Description: (用户注册页面) @param @param
	 * map @param @param session @param @param request @param @param
	 * response @param @return @param @throws MyRuntimeException @return
	 * String @throws
	 */
	@RequestMapping("register.do")
	public String hanldRegister(ModelMap map, HttpServletRequest request, HttpServletResponse response) throws MyRuntimeException {
		Session session = SecurityUtils.getSubject().getSession();
		try {
			logger.info("用户名：" + session.getAttribute("username") + " 模块名：用户注册模块  操作：进入模块  状态：OK!");
			return "web/public/register";
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：进入用户注册模块     错误信息: " + e);
			throw new MyRuntimeException(e);
		}
	}
	
	/**
	* @Title: handlephotoyzm
	* @Description: (获取短信验证码)
	* @param @param phone
	* @param @param session
	* @param @return    
	* @return ResponseResult<Void>    
	* @throws
	 */
	@RequestMapping(value = "/hqt_photoyzm.do", method = RequestMethod.POST)
	@ResponseBody
	public ResponseResult<Void> handlephotoyzm(String phone, HttpServletRequest request){
		Session session = SecurityUtils.getSubject().getSession();
		ResponseResult<Void> rr;		
		Photo.setNewcode();
	    String code = Integer.toString(Photo.getNewcode());	  
	    System.out.println(code);
	    SendSmsResponse response;	       
		try {
			User user=userServer.queryUser(phone);
			if(user!=null){
				 rr =new ResponseResult<Void>(ResponseResult.ERR, "该手机号已经存在，请重新输入");
				 logger.info("用户手机："+phone+" 模块名：注册模块 操作：登录  状态：Failed! ");
			}else{
				response = Photo.sendSms(phone,code, photoConfig.getAccessKeyId(), photoConfig.getAccessKeySecret(), photoConfig.getQm_name(), photoConfig.getQm_sms());
				if(response.getCode().equals("OK") && response.getMessage().equals("OK")){
					session.setAttribute("code",code);
					session.setAttribute("phone",phone);
					rr =new ResponseResult<Void>(ResponseResult.STATE_OK, "短信验证码已成功发送");
					logger.info("用户手机："+phone+" 模块名：注册模块 操作：登录  状态：Success! ");
					System.out.println(code);
				}else{
					 rr =new ResponseResult<Void>(ResponseResult.ERR, "短信验证码发送失败");
					 logger.info("用户手机："+phone+" 模块名：注册模块 操作：登录  状态：Failed! ");
				}					       
			}				
		} catch (Exception e) {
			logger.error("访问路径："+request.getRequestURI()+"操作：注册信息  错误信息: "+e);
			rr=new ResponseResult<Void>(ResponseResult.ERR,"数据存在异常，请联系工作人员处理！");			
		}			
		return rr;
	}
	
	
	/**
	 * (用户注册实现方法)
	 * @param user
	 * @param verifyCode
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/hqt_registeradd.do", method = RequestMethod.POST)
	@ResponseBody
	public ResponseResult<Void> handleRegisteradd(User user, String verifyCode, HttpServletRequest request) {
		Subject subject = SecurityUtils.getSubject();
		Session session = subject.getSession();
		ResponseResult<Void> rr = null;
		System.out.println(verifyCode);
		System.err.println(user);
		if	(session.getAttribute("phone") == null || session.getAttribute("code") == null ){
			return new ResponseResult<>(Constants.RESULT_CODE_FAIL,"请先获取手机验证码");
		}
		if (!user.getPhone().equals(session.getAttribute("phone").toString())){
			return new ResponseResult<>(Constants.RESULT_CODE_FAIL,"验证码和手机号不匹配");
		}
		if (!verifyCode.equals(session.getAttribute("code").toString())){
			return new ResponseResult<>(Constants.RESULT_CODE_FAIL,"验证码输入错误");
		}
		try {	
			//查询用户名是否存在
			User userlist=userServer.queryUser(user.getPhone());			
			//判断用户名是否存在
			if (userlist!=null){
				rr=new ResponseResult<Void>(ResponseResult.ERR,"手机号已经存在!请重新输入...");
				logger.info("用户手机：" + user.getPhone() + " 模块名：注册模块 操作：登录  状态：Failed! ");
			}else{	
				GetCommonUser get=new GetCommonUser();			
				Date creatTime = new Date();
				System.err.println("注册密码：" + user.getPassword());
				String uuid = UUID.randomUUID().toString().toUpperCase();
				String md5Password = get.getEncrpytedPassword(Constants.MD5,user.getPassword(), uuid,1024);
				user.setUuid(uuid);
				user.setPassword(md5Password);
				user.setRid(5);//默认角色 为个人
				user.setBelongTo("2019100001");// TODO 隶属于 
				user.setWexinChat(session.getAttribute("wexinChat") == null ? null : session.getAttribute("wexinChat").toString());
				user.setQqChat(session.getAttribute("qqChat") == null ? null : session.getAttribute("qqChat").toString());
				user.setHeadUrl(session.getAttribute("headUrl") == null ? "${pageContext.request.contextPath}/img/public/head.jpg" : session.getAttribute("headUrl").toString());
				user.setCreatTime(creatTime);	
				userServer.insert(user);	
				JSONObject userJson = JSONObject.fromObject(user);
				session.setAttribute("uid", user.getId());
				session.setAttribute("username", user.getUsername());
				session.setAttribute("headUrl", user.getHeadUrl());
				session.setAttribute("userJson", userJson);//提供给前端页面使用
				session.setAttribute("user", user);//提供给后台服务websocket类使用(存放对象，避免过多的json转换)
				logger.info("用户名："+user.getUsername()+" 模块名：注册模块 操作：登录  状态：OK!");
				rr = new ResponseResult<Void>(ResponseResult.STATE_OK, "注册成功");	
				subject.login(new MyUsernamePasswordToken());
			}			
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：注册信息  错误信息: "+e);
			rr=new ResponseResult<Void>(ResponseResult.ERR,"数据存在异常，请联系工作人员处理！");
		}
		return rr;
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

		return userServer.bindAccount(phone,verifyCode);
	}


	/**
	 * 查用用户是否已注册
	 * @param phone
	 * @return
	 */
	@RequestMapping("/user_is_exist.do")
	@ResponseBody
	public ResponseResult<Void> userIsExist(@RequestParam(value = "phone") String phone){
		if (userServer.queryUser(phone) == null) {//未注册
			return new ResponseResult<Void>(ResponseResult.ERR,Constants.RESULT_MESSAGE_SUCCESS);
		}
		return new ResponseResult<Void>(ResponseResult.STATE_OK,Constants.RESULT_MESSAGE_SUCCESS);
	}

	/**
	 * 给已存在用户发送短信
	 * @param phone
	 * @return
	 */
	@RequestMapping("/send_message.do")
	@ResponseBody
	public ResponseResult<Void> sendMessage(@RequestParam(value = "phone") String phone, HttpSession session, HttpServletRequest request){
		ResponseResult<Void> rr;
		Photo.setNewcode();
		String code = Integer.toString(Photo.getNewcode());
		System.out.println(code);
		SendSmsResponse response;
		try {
			User user=userServer.queryUser(phone);
			if(user == null){
				rr =new ResponseResult<Void>(ResponseResult.ERR, "该手机号账户不存存在，请重新输入");
				logger.info("用户手机："+phone+" 模块名：注册模块 操作：登录  状态：Failed! ");
			}else{
				response = Photo.sendSms(phone,code, photoConfig.getAccessKeyId(), photoConfig.getAccessKeySecret(), photoConfig.getQm_name(), photoConfig.getQm_sms());
				if(response.getCode().equals("OK") && response.getMessage().equals("OK")){
					session.setAttribute("code",code);
					session.setAttribute("phone",phone);
					rr =new ResponseResult<Void>(ResponseResult.STATE_OK, "短信验证码已成功发送");
					logger.info("用户手机："+phone+" 模块名：注册模块 操作：登录  状态：Success! ");
					System.out.println(code);
				}else{
					rr =new ResponseResult<Void>(ResponseResult.ERR, "短信验证码发送失败");
					logger.info("用户手机："+phone+" 模块名：注册模块 操作：登录  状态：Failed! ");
				}
			}
		} catch (Exception e) {
			logger.error("访问路径："+request.getRequestURI()+"操作：注册信息  错误信息: "+e);
			rr = new ResponseResult<Void>(ResponseResult.ERR,"数据存在异常，请联系工作人员处理！");
		}
		return rr;
	}
}
