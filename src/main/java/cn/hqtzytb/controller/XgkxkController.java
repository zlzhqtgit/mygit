package cn.hqtzytb.controller;




import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import cn.hqtzytb.exception.MyRuntimeException;



/**
* @Title: XgkcpController.java
* @Package cn.hqtzytb.controller
* @Description:(选科控制层)
* @author: ZhouLingZhang
* @date 2019年9月24日
* @Copyright:好前途教育
* @version V1.0
*/
@Controller
@RequestMapping("/xk")
public class XgkxkController {
	private  static final  Logger logger = LogManager.getLogger(XgkxkController.class.getName());
	
	
	/**
	 * @throws MyRuntimeException 
	* @Title: showhqtCpAnswer
	* @Description: (选科指导页面  )
	* @param @param map
	* @param @param session
	* @param @param request
	* @param @param response
	* @param @return    
	* @return String    
	* @throws
	 */
	@RequestMapping("/xgk_guide_select.do")	
	public String showhqtXgkGuideSelect(ModelMap map,HttpSession session,HttpServletRequest request,HttpServletResponse response) throws MyRuntimeException{
		
		try
		{
			//获取session里的用户名
			//UserAdmin username =  (UserAdmin) session.getAttribute("user");			
			
			logger.info("用户名："+session.getAttribute("username")+" 模块名：选科指导页面     操作：进入模块  状态：OK!");
			return  "web/xgk/xgk_guide_select";
		} catch (Exception e){
			logger.error("访问路径："+request.getRequestURI()+"操作：进入选科指导页面   错误信息: "+e);
			throw new MyRuntimeException(e);
		}
							
	}
	/**
	 * @throws MyRuntimeException 
	* @Title: showhqtCustomise
	* @Description: (自定义选科页面)
	* @param @param map
	* @param @param session
	* @param @param request
	* @param @param response
	* @param @return    
	* @return String    
	* @throws
	 */
	@RequestMapping("/xgk_customise.do")	
	public String showhqtCustomise(ModelMap map,HttpSession session,HttpServletRequest request,HttpServletResponse response) throws MyRuntimeException{		
		try
		{
			//获取session里的用户名
			//UserAdmin username =  (UserAdmin) session.getAttribute("user");			
			logger.info("用户名："+session.getAttribute("username")+" 模块名：自定义选科页面操作：进入模块  状态：OK!");
			return  "web/xgk/xgk_customise";
		} catch (Exception e){
			logger.error("访问路径："+request.getRequestURI()+"操作：进入自定义选科页面操作  错误信息: "+e);
			throw new MyRuntimeException(e);
		}					
	}
	/**
	 * @throws MyRuntimeException 
	* @Title: showhqtCustomisereport
	* @Description: (自定义选科报告页面)
	* @param @param map
	* @param @param session
	* @param @param request
	* @param @param response
	* @param @return    
	* @return String    
	* @throws
	 */
	@RequestMapping("/xgk_customisereport.do")	
	public String showhqtCustomisereport(ModelMap map,HttpSession session,HttpServletRequest request,HttpServletResponse response) throws MyRuntimeException{		
		try
		{
			//获取session里的用户名
			//UserAdmin username =  (UserAdmin) session.getAttribute("user");			
			logger.info("用户名："+session.getAttribute("username")+" 模块名：自定义选科报告页面简介  操作：进入模块  状态：OK!");
			return  "web/xgk/xgk_customisereport";
		} catch (Exception e){
			logger.error("访问路径："+request.getRequestURI()+"操作：进入自定义选科报告页面  错误信息: "+e);
			throw new MyRuntimeException(e);
		}							
	}
	/**	
	* @Title: showhqtCpfxselectreport
	* @Description: (测评选科报告页面)
	* @param @param map
	* @param @param session
	* @param @param request
	* @param @param response
	* @param @return
	* @param @throws MyRuntimeException    
	* @return String    
	* @throws
	 */
	@RequestMapping("/xgk_cpfxselectreport.do")	
	public String showhqtCpfxselectreport(ModelMap map,HttpSession session,HttpServletRequest request,HttpServletResponse response) throws MyRuntimeException{		
		try
		{
			//获取session里的用户名
			//UserAdmin username =  (UserAdmin) session.getAttribute("user");			
			logger.info("用户名："+session.getAttribute("username")+" 模块名：测评选科报告页面简介  操作：进入模块  状态：OK!");
			return  "web/xgk/xgk_cpfxselectreport";
		} catch (Exception e){
			logger.error("访问路径："+request.getRequestURI()+"操作：进入测评选科报告页面  错误信息: "+e);
			throw new MyRuntimeException(e);
		}							
	}

}
