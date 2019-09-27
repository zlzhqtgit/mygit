package cn.hqtzytb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.hqtzytb.exception.MyRuntimeException;




@Controller
@RequestMapping("/test")
public class TestController {	

	@RequestMapping("/xgk_error_404.do")	
	public String showhqtXgkGuideSelect(ModelMap map,HttpSession session,HttpServletRequest request,HttpServletResponse response) throws MyRuntimeException{	
			return  "web/xgk/xgk_error_404";
						
	}
	@RequestMapping("/xgk_error_servers.do")	
	public String showhqtXgk500(ModelMap map,HttpSession session,HttpServletRequest request,HttpServletResponse response) throws MyRuntimeException{	
			return  "web/xgk/xgk_error_servers";
						
	}
}
