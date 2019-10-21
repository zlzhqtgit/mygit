package cn.hqtzytb.controller;
import java.util.List;
import java.util.UUID;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.hqtzytb.entity.Admin;
import cn.hqtzytb.entity.UserChat;
import cn.hqtzytb.service.AdminServer;
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
	@Autowired
	private AdminServer adminServer;
	//用户登录
		@RequestMapping(value = "/hqt_chat.do")
		public String login(ModelMap map,HttpSession session,Integer id,HttpServletRequest request,Integer userId){	
			List<Admin> adminlist=adminServer.getuserByid(id);			
			UserChat userChat= new UserChat();
			userChat.setId(getUUID());
			userChat.setAdminid(id.toString());
			userChat.setUsername(getTempName());
			userChat.setUsertype("3");
			JSONObject userJson = JSONObject.fromObject(userChat);
			session.setAttribute("userJson", userJson);//提供给前端页面使用
			session.setAttribute("userChat", userChat);//提供给后台服务websocket类使用(存放对象，避免过多的json转换)
			map.addAttribute("chatName", adminlist.get(0).getUsername());
			return "web/public/hqt_chat";			
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
