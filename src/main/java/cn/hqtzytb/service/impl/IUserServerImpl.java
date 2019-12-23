package cn.hqtzytb.service.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import cn.hqtzytb.entity.PhotoConfig;
import cn.hqtzytb.entity.ResponseResult;
import cn.hqtzytb.service.IUserServer;
import cn.hqtzytb.utils.Constants;
import cn.hqtzytb.utils.GetCommonUser;
import cn.hqtzytb.utils.Photo;
import jdk.nashorn.internal.objects.annotations.Where;
import net.sf.json.JSONObject;
import org.apache.commons.lang.StringUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsResponse;
import cn.hqtzytb.entity.User;
import cn.hqtzytb.entity.UserFeature;
import cn.hqtzytb.entity.UserResultReport;
import cn.hqtzytb.exception.MyRuntimeException;
import cn.hqtzytb.intercepter.MyUsernamePasswordToken;
import cn.hqtzytb.mapper.UserFeatureMapper;
import cn.hqtzytb.mapper.UserMapper;
import cn.hqtzytb.mapper.UserResultReportMapper;

@Service
public class IUserServerImpl implements IUserServer {
	private  static final Logger logger = LogManager.getLogger(IUserServerImpl.class.getName());
	@Autowired
	private UserMapper userMapper;
	@Autowired
	private PhotoConfig photoConfig;
	@Autowired
	private UserResultReportMapper userResultReportMapper;
	@Autowired
	private UserFeatureMapper userFeatureMapper;
	
	@Override
	public List<User> getuserAll() {
		return userMapper.select(null, null, null, null);
	}

	
	@Override
	public List<User> getuserByphone(String phone) {
		String where = " phone='" + phone + "'";
		return userMapper.select(where, null, null, null);
	}

	
	// 查询单个用户信息 登陆
	@Override
	public User queryUser(String phone) {
		return userMapper.queryUser(phone);
	}


	@Override
	public User insert(User user) {
		userMapper.insert(user);
		return user;
	}

	
	@Override
	public ResponseResult<Void> bindAccount(String phone, String verifyCode) {
		Subject subject = SecurityUtils.getSubject();
		Session session = subject.getSession();
		String code = session.getAttribute("code").toString();
		String mobile = session.getAttribute("phone").toString();
		if (!verifyCode.equals(code) || !phone.equals(mobile)) {
			logger.error("手机号：" + mobile + " 模块名：第三方用户手机号绑定   操作：绑定  状态：FAIL! 验证码错误");
			return new ResponseResult<>(ResponseResult.ERR,"验证码错误");
		}
		Map<String,Object> paramMap = new HashMap<>();
		paramMap.put("phone",phone);
		List<User> users = userMapper.selectUserListByMap(paramMap);
		if (users.isEmpty()) {
			logger.error("手机号：" + mobile + " 模块名：第三方用户手机号绑定   操作：绑定  状态：FAIL! 用户信息不存在");
			return new ResponseResult<>(ResponseResult.ERR,"验证码错误");
		} else {
			String wexinChat = session.getAttribute("wexinChat") == null ? null :session.getAttribute("wexinChat").toString();
			String qqChat = session.getAttribute("qqChat") == null ? null :session.getAttribute("qqChat").toString();
			User user = users.get(0);
			if (StringUtils.isEmpty(user.getWexinChat()) && StringUtils.isNotEmpty(wexinChat)){
				user.setWexinChat(wexinChat);//绑定微信openid
			}
			if (StringUtils.isEmpty(user.getQqChat()) && StringUtils.isNotEmpty(qqChat)){
				user.setQqChat(qqChat);//绑定腾讯openid
			}
			user.setHeadUrl(session.getAttribute("headUrl").toString());
			userMapper.updateById(user);//修改用户信息
			session.setAttribute("uid", users.get(0).getId());
			session.setAttribute("username", users.get(0).getUsername());
			session.setAttribute("headUrl", users.get(0).getHeadUrl());
			JSONObject userJson = JSONObject.fromObject(users.get(0));
			session.setAttribute("userJson", userJson);//提供给前端页面使用
			session.setAttribute("user", users.get(0));//提供给后台服务websocket类使用(存放对象，避免过多的json转换)
			subject.login(new MyUsernamePasswordToken(user.getPhone()));
			logger.error("手机号：" + mobile + " 模块名：第三方用户手机号绑定   操作：绑定  状态：OK!");
			return new ResponseResult<Void>(ResponseResult.STATE_OK,Constants.RESULT_MESSAGE_SUCCESS);
		}
	}

	
	@Override
	public User getUserByUsername(String username) {
		return userMapper.getUserByUsername(username);
	}

	
	@Override
	public String hanldLogin(ModelMap map, String nowUrl, HttpServletRequest request, HttpServletResponse response) throws MyRuntimeException{
		try{
			Session session = SecurityUtils.getSubject().getSession();	
			map.addAttribute("nowUrl", nowUrl);
			logger.info("用户名：" + session.getAttribute("username") + " 模块名：新高考用户登录模块  操作：进入模块  状态：OK!");
			return "web/xgk/xgk_index";	
		} catch (Exception e){
			logger.error("访问路径：" + request.getRequestURI() + "操作：进入新高考用户登录模块     错误信息: "+e);
			throw new MyRuntimeException(e);
		}
	}

	
	@Override
	public ResponseResult<Void> handleUserlogin(String phone, String password, HttpServletRequest request) {
		ResponseResult<Void> rr=null;		
		try {
			Subject subject = SecurityUtils.getSubject();
			//查询用户名是否存在
			User user = userMapper.queryUser(phone);
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
				session.setAttribute("province", user.getProvince());
				JSONObject userJson = JSONObject.fromObject(user);
				session.setAttribute("userJson", userJson);//提供给前端页面使用
				session.setAttribute("user", user);//提供给后台服务websocket类使用(存放对象，避免过多的json转换)
				rr = new ResponseResult<Void>(ResponseResult.STATE_OK, "登录成功");
				logger.info("用户名：" + user.getUsername() + " 模块名：登录模块 操作：登录  状态：OK!");
			}			
		} catch (Exception e) {
			e.printStackTrace();
			logger.error("访问路径：" + request.getRequestURI() + "操作：登录模块 操作 错误信息: "+e);
		}
		return rr;
	}

	
	@Override
	public ResponseResult<Void> handlephotoyzm(String phone, HttpServletRequest request) {
		Session session = SecurityUtils.getSubject().getSession();
		ResponseResult<Void> rr;		
	    String code = Integer.toString(Photo.getNewcode());	  
	    SendSmsResponse response;	       
		try {
			User user = userMapper.queryUser(phone);
			if(user != null){
				 rr = new ResponseResult<Void>(ResponseResult.ERR, "该手机号已经存在，请重新输入");
				 logger.info("用户手机：" + phone + " 模块名：注册模块 操作：注册发送短信验证码  状态：Failed! ");
			}else{
			    System.out.println(Constants.ERROR_HEAD_INFO +  "开始发送短信");
				response = Photo.sendSms(phone,code, photoConfig.getAccessKeyId(), photoConfig.getAccessKeySecret(), photoConfig.getQm_name(), photoConfig.getQm_sms());
				System.out.println(Constants.ERROR_HEAD_INFO +  "短信发送完毕");
				if(response.getCode().equals("OK") && response.getMessage().equals("OK")){
					session.setAttribute("code",code);
					session.setAttribute("phone",phone);
					rr =new ResponseResult<Void>(ResponseResult.STATE_OK, "短信验证码已成功发送");
					logger.info("用户手机：" + phone + " 模块名：注册模块 操作：注册发送短信验证码  状态：Success! ");
					System.out.println(code);
				}else{
					 rr =new ResponseResult<Void>(ResponseResult.ERR, "短信验证码发送失败");
					 logger.info("用户手机：" + phone + " 模块名：注册模块 操作：注册发送短信验证码  状态：Failed! ");
				}					       
			}				
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：注册发送短信验证码  错误信息: "+e);
			rr=new ResponseResult<Void>(ResponseResult.ERR,"数据存在异常，请联系工作人员处理！");			
		}			
		return rr;
	}

	
	@Override
	public String hanldRegister(ModelMap map, HttpServletRequest request, HttpServletResponse response) throws MyRuntimeException {
		try {
			Session session = SecurityUtils.getSubject().getSession();
			logger.info("用户名：" + session.getAttribute("username") + " 模块名：用户注册模块  操作：进入模块  状态：OK!");
			return "web/public/register";
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：进入用户注册模块     错误信息: " + e);
			throw new MyRuntimeException(e);
		}
	}

	
	@Override
	public ResponseResult<Void> handleRegisteradd(User user, String verifyCode, HttpServletRequest request) {
		Subject subject = SecurityUtils.getSubject();
		Session session = subject.getSession();
		ResponseResult<Void> rr = null;
		if	(session.getAttribute("phone") == null || session.getAttribute("code") == null ){
			return new ResponseResult<>(Constants.RESULT_CODE_FAIL,"请先获取手机验证码");
		}
		if (!user.getPhone().equals(session.getAttribute("phone").toString())){
			return new ResponseResult<>(Constants.RESULT_CODE_FAIL,"验证码和手机号不匹配");
		}
		if (!verifyCode.equals(session.getAttribute("code").toString())){
			return new ResponseResult<>(Constants.RESULT_CODE_FAIL,"验证码输入错误");
		}
//		try {	
			//查询用户名是否存在
			User userlist = userMapper.queryUser(user.getPhone());			
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
				userMapper.insert(user);	
				JSONObject userJson = JSONObject.fromObject(user);
				session.setAttribute("uid", user.getId());
				session.setAttribute("username", user.getUsername());
				session.setAttribute("headUrl", user.getHeadUrl());
				session.setAttribute("userJson", userJson);//提供给前端页面使用
				session.setAttribute("user", user);//提供给后台服务websocket类使用(存放对象，避免过多的json转换)
				logger.info("用户名：" + user.getUsername() + " 模块名：注册模块 操作：登录  状态：OK!");
				rr = new ResponseResult<Void>(ResponseResult.STATE_OK, "注册成功");	
				subject.login(new MyUsernamePasswordToken(user.getPhone()));
			}			
//		} catch (Exception e) {
//			logger.error("访问路径：" + request.getRequestURI() + "操作：注册信息  错误信息: "+e);
//			rr=new ResponseResult<Void>(ResponseResult.ERR,"数据存在异常，请联系工作人员处理！");
//		}
		return rr;
	}

	
	@Override
	public ResponseResult<Void> userIsExist(String phone, HttpServletRequest request) {
		try {
			User user = userMapper.queryUser(phone);
			if (user != null) {
				return new ResponseResult<Void>(ResponseResult.STATE_OK,Constants.RESULT_MESSAGE_SUCCESS);
			}
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：查询手机号注册信息  错误信息: "+e);
		}
		return new ResponseResult<Void>(ResponseResult.ERR,Constants.RESULT_MESSAGE_SUCCESS);
	}

	
	@Override
	public ResponseResult<Void> sendMessage(String phone, HttpSession session, HttpServletRequest request) {
		ResponseResult<Void> rr;
		String code = Integer.toString(Photo.getNewcode());
		try {
			User user = userMapper.queryUser(phone);
			if(user == null){
				rr =new ResponseResult<Void>(ResponseResult.ERR, "该手机号账户不存在，请重新输入");
				logger.info("用户手机：" + phone + " 模块名：注册模块 操作：登录  状态：Failed! ");
			}else{
				SendSmsResponse response = Photo.sendSms(phone,code, photoConfig.getAccessKeyId(), photoConfig.getAccessKeySecret(), photoConfig.getQm_name(), photoConfig.getQm_sms());
				if(response.getCode().equals("OK") && response.getMessage().equals("OK")){
					session.setAttribute("code",code);
					session.setAttribute("phone",phone);
					rr =new ResponseResult<Void>(ResponseResult.STATE_OK, "短信验证码已成功发送");
					logger.info("用户手机：" + phone + " 模块名：注册模块 操作：登录  状态：Success! ");
					System.out.println(code);
				}else{
					rr =new ResponseResult<Void>(ResponseResult.ERR, "短信验证码发送失败");
					logger.info("用户手机：" + phone + " 模块名：注册模块 操作：登录  状态：Failed! ");
				}
			}
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：注册信息  错误信息: " + e);
			rr = new ResponseResult<Void>(ResponseResult.ERR,"数据存在异常，请联系工作人员处理！");
		}
		return rr;	
	}


	@Override
	public String showUserCenterInfo(HttpServletRequest request) {
		
		try {
			Subject subject = SecurityUtils.getSubject();
			if (subject.isAuthenticated()) {
				Session session = subject.getSession();
				String where = " uid = '" + session.getAttribute("uid") + "' ";
				List<UserResultReport> reportList = userResultReportMapper.select(where, null, null, null);
				if(!reportList.isEmpty()){
					session.setAttribute("result_report", reportList.get(0));//测评结果报告
					session.setAttribute("assignment", reportList.get(0).getStatus());//是否存在测评任务
				} else {
					session.setAttribute("assignment", 3);//不存在测评任务
				}
				List<UserFeature> userFeatureList = userFeatureMapper.select(where, null, null, null);
				for(UserFeature userFeature : userFeatureList){
					if(Constants.EVALUATION_TYPE_SCORE_ANALYSIS.equals(userFeature.getEvaluationType())){
						session.setAttribute(Constants.EVALUATION_TYPE_SCORE_ANALYSIS, userFeature);//成绩分析
					}
					if(Constants.EVALUATION_TYPE_POTENTIAL_ANALYSIS.equals(userFeature.getEvaluationType())){
						session.setAttribute(Constants.EVALUATION_TYPE_POTENTIAL_ANALYSIS, userFeature);//潜能测评
					}
					if(Constants.EVALUATION_TYPE_HOLLAND_ANALYSIS.equals(userFeature.getEvaluationType())){
						session.setAttribute(Constants.EVALUATION_TYPE_HOLLAND_ANALYSIS, userFeature);//霍来德测评
					}
					if(Constants.EVALUATION_TYPE_MBTI_ANALYSIS.equals(userFeature.getEvaluationType())){
						session.setAttribute(Constants.EVALUATION_TYPE_MBTI_ANALYSIS, userFeature);//MBTI测评
					}
				}
			}
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：查看个人中心   错误信息: " + e);
		}
		return "web/xgk/center_user";
	}
}