package cn.hqtzytb.controller;

import java.util.Date;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.hqtzytb.entity.User;
import net.sf.json.JSONObject;

/**
* @Title: WebController.java
* @Package cn.hqtzytb.controller
* @Description:(前端公共功能控制层)
* @author: ZhouLingZhang
* @date 2019年10月15日
* @Copyright:好前途教育
* @version V1.0
*/
@Controller
@RequestMapping("/web")
public class WebController {
	
	private  static final  Logger logger = LogManager.getLogger(WebController.class.getName());
	//用户登录
		@RequestMapping(value = "/login.do")
		public String login(HttpSession session,HttpServletRequest request,String name,String password,Integer userId){		
			User user = null;
			System.out.println("controller类中用户登录方法中获取用户名和密码："+name+"/"+password);
			//判断是否有用户登陆  参数为null时,自动生成游客信息；否则，使用用户登录
			if (name == null || password == null) {
				logger.info("日志\t"+new Date().toLocaleString()+":\t生成游客信息。");
				user=getUser();
				JSONObject userJson = JSONObject.fromObject(user);
				session.setAttribute("userJson", userJson);//提供给前端页面使用
				session.setAttribute("user", user);//提供给后台服务websocket类使用(存放对象，避免过多的json转换)
			}else if (!"".equals(name.trim()) && !"".equals(password.trim())) {
//				//从数据库中读取user信息
//				user = uService.queryUser(name, password);
//				System.out.println("controller 从数据库中获取的user："+user);
//				if (user != null) {
//					JSONObject userJson = JSONObject.fromObject(user);
//					session.setAttribute("userJson", userJson);//提供给前端页面使用
//					session.setAttribute("user", user);//提供给后台服务websocket类使用(存放对象，避免过多的json转换)
//				}else {
//					logger.info("用户名和密码错误，重新登录。");
//					return "index";
//				}
			}
			
			return "web/public/chat";
			
		}
		/**
		 * 生成游客信息
		 * @return User
		 */
		public User getUser(){
			User user= new User();
			user.setId(20);
			user.setUsername(getTempName());
			return user;
		}
		
		/**
		 * 生成唯一序列码
		 * @return String
		 */
		public String getUUID(){
			return UUID.randomUUID().toString().replaceAll("-", "");
		}
		
		/**
		 * 生成游客名称 
		 * @return String
		 */
		public String getTempName(){
			String tempName = "游客"+(int)((Math.random()*9+1)*100000);
			return tempName;
		}
}
