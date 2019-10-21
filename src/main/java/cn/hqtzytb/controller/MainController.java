package cn.hqtzytb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;


/**
* @Title: MainController.java
* @Package cn.hqtzytb.controller
* @Description:(后台响应页面控制层)
* @author: ZhouLingZhang
* @date 2019年9月3日
* @Copyright:好前途教育
* @version V1.0
*/

@Controller
@RequestMapping("/main")
public class MainController {
	
	private  static final  Logger logger = LogManager.getLogger(AdminController.class.getName());
	@RequestMapping("/admin.do")	
	public String showIndexno(HttpSession session,HttpServletResponse response,HttpServletRequest request){	
		if(session.getAttribute("adminname")==null){
			GetCommonUser.getlogin(response, request);
			return null;
		}else{
			
			logger.info("用户名："+session.getAttribute("adminname")+" 模块名：添加用户模块  操作：进入模块  状态：OK!");
			return "main/hqt_main";	
		}	
						
	}
	@RequestMapping("/xgk_index.do")	
	public String showXgkIndex(HttpSession session,HttpServletResponse response,HttpServletRequest request){
		if(session.getAttribute("username")==null){
			GetCommonUser.getlogin(response, request);
			return null;
		}else{
			
			logger.info("用户名："+session.getAttribute("username")+" 模块名：添加用户模块  操作：进入模块  状态：OK!");
			return "main/xgk/xgk_index";
		}
							
	}
	@RequestMapping("/xgk_main.do")	
	public String showXgkmain(HttpSession session,HttpServletResponse response,HttpServletRequest request){		
		if(session.getAttribute("username")==null){
			GetCommonUser.getlogin(response, request);
			return null;
		}else{
			
			logger.info("用户名："+session.getAttribute("username")+" 模块名：添加用户模块  操作：进入模块  状态：OK!");
			return "main/xgk/xgk_main";	
		}
						
	}
	@RequestMapping("/zytb_index.do")	
	public String showZytbIndex(HttpSession session,HttpServletResponse response,HttpServletRequest request){	
		if(session.getAttribute("username")==null){
			GetCommonUser.getlogin(response, request);
			return null;
		}else{
			
			logger.info("用户名："+session.getAttribute("username")+" 模块名：添加用户模块  操作：进入模块  状态：OK!");
			return "main/zytb/zytb_index";
		}							
	}
	/**
	 * 后端用户登录模块
	 * @param map
	 * @return nav_login模块
	 */
	@RequestMapping("/hqt_login.do")	
	public String showNavlogin(ModelMap map){
		logger.info("用户名： 模块名：登录模块  操作：进入模块  状态：OK!");
		return "main/hqt_login";		
	}
}
