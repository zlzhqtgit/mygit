package cn.hqtzytb.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import cn.hqtzytb.entity.ResponseResult;
import cn.hqtzytb.entity.User;
import cn.hqtzytb.exception.MyRuntimeException;
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
	public String hanldLogin(ModelMap map,String nowUrl,HttpSession session,HttpServletRequest request,HttpServletResponse response) throws MyRuntimeException{
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
	public ResponseResult<Void> handleUserlogin(String phone,String password, HttpSession session,HttpServletRequest request)
	{	
		ResponseResult<Void> rr;		
		try {			
			//查询用户名是否存在
			User user=userServer.queryUser(phone);			
			//判断用户名是否存在
			if (user==null){
				rr=new ResponseResult<Void>(ResponseResult.ERR,"手机号不存在!请重新输入...");
				logger.info("用户手机："+phone+" 模块名：登录模块 操作：登录  状态：Failed! ");
			}else{			
				GetCommonUser get=new GetCommonUser();				
				String md5Password = get.getEncrpytedPassword(password,user.getUuid());
				if(user.getPassword().equals(md5Password)){
					session.setAttribute("uid", user.getId());
					session.setAttribute("username", user.getUsername());
					JSONObject userJson = JSONObject.fromObject(user);
					session.setAttribute("userJson", userJson);//提供给前端页面使用
					session.setAttribute("user", user);//提供给后台服务websocket类使用(存放对象，避免过多的json转换)
					rr = new ResponseResult<Void>(ResponseResult.STATE_OK, "登录成功");				
					logger.info("用户名："+user.getUsername()+" 模块名：登录模块 操作：登录  状态：OK!");
				}else{
					rr = new ResponseResult<Void>(ResponseResult.ERR, "用户密码不正确");
					logger.info("用户名："+user.getUsername()+" 模块名：登录模块 操作：登录  状态：Failed!");
				}			
			}			
		} catch (Exception e) {
			logger.error("访问路径："+request.getRequestURI()+"操作：添加区库信息  错误信息: "+e);
			rr=new ResponseResult<Void>(ResponseResult.ERR,"数据存在异常，请联系工作人员处理！");
		}
		return rr;
	}

}
