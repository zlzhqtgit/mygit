package cn.hqtzytb.controller;




import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import cn.hqtzytb.entity.Enrollment;
import cn.hqtzytb.entity.ResponseResult;
import cn.hqtzytb.entity.Specialty;
import cn.hqtzytb.entity.UserFeature;
import cn.hqtzytb.entity.Vocation;
import cn.hqtzytb.exception.MyRuntimeException;
import cn.hqtzytb.service.IEnrollmentServer;
import cn.hqtzytb.service.ISpecialtyServer;
import cn.hqtzytb.service.IUserFeatureServer;
import cn.hqtzytb.service.IVocationServer;




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
	@Autowired
	private IUserFeatureServer userFeatureServer;
	@Autowired
	private ISpecialtyServer specialtyServer;
	@Autowired
	private IEnrollmentServer enrollmentServer;
	@Autowired
	private IVocationServer vocationServer;
	
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
	public String showhqtXgkGuideSelect(ModelMap map,HttpServletRequest request,HttpServletResponse response) throws MyRuntimeException{	
		try
		{
			Session session = SecurityUtils.getSubject().getSession();		
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
	public String showhqtCustomise(ModelMap map,HttpServletRequest request,HttpServletResponse response) throws MyRuntimeException{		
		try
		{
			Session session = SecurityUtils.getSubject().getSession();	
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
	public String showhqtCustomisereport(ModelMap map,String str,HttpServletRequest request,HttpServletResponse response) throws MyRuntimeException{		
		try
		{
			Session session = SecurityUtils.getSubject().getSession();
			System.out.println(str);
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
	@RequestMapping("/xgk_guide_xuanke.do")	
	public String showhqtCpfxselectreportone(ModelMap map,String personalityCode,HttpServletRequest request,HttpServletResponse response) throws MyRuntimeException{		
		try
		{		
			Session session = SecurityUtils.getSubject().getSession();
			logger.info("用户名："+session.getAttribute("username")+" 模块名：测评选科报告页面简介  操作：进入模块  状态：OK!");
			return  "web/xgk/xgk_guide_xuanke";
		} catch (Exception e){
			logger.error("访问路径："+request.getRequestURI()+"操作：进入测评选科报告页面  错误信息: "+e);
			throw new MyRuntimeException(e);
		}							
	}
	
	/**
	* @Title: handleCpXk
	* @Description: (测评选科报告)
	* @param @param session
	* @param @param request
	* @param @return    
	* @return ResponseResult<Void>    
	* @throws
	 */
	@RequestMapping(value = "/xgk_cpxk.do", method = RequestMethod.POST)
	@ResponseBody
	public ResponseResult<Void> handleCpXk(HttpServletRequest request) {
		ResponseResult<Void> rr=null;
		try{
			Session session = SecurityUtils.getSubject().getSession();
			List<UserFeature> featurelist=userFeatureServer.getUserFeatureByUid(2);
			if(featurelist.size()>0){				
				rr = new ResponseResult<Void>(ResponseResult.STATE_OK,featurelist.get(0).getEvaluationName());
			}else{
				rr = new ResponseResult<Void>(ResponseResult.ERR,"你还没有进行测评");
			}			
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：获取测评报告信息  错误信息: " + e);
			rr = new ResponseResult<Void>(ResponseResult.ERR, "数据存在异常，请联系工作人员处理！");
		}
		return rr;
	}
	/**
	* @Title: showhqtCpEnrollment
	* @Description: (查询选科各地要求)
	* @param @param map
	* @param @param includeMajor
	* @param @param session
	* @param @param request
	* @param @param response
	* @param @return
	* @param @throws MyRuntimeException    
	* @return String    
	* @throws
	 */
	@RequestMapping("/xgk_cpEnrollment.do")	
	public String showhqtCpEnrollment(ModelMap map,String includeMajor,HttpServletRequest request,HttpServletResponse response) throws MyRuntimeException{		
		try
		{
			Session session = SecurityUtils.getSubject().getSession();
			String includeMajors=new String(includeMajor.getBytes("ISO-8859-1"),"utf-8"); 			
			List<Enrollment> enrollmentlist=enrollmentServer.getMajor(includeMajors, "湖南省");			
			map.addAttribute("enrollmentlist", enrollmentlist);
			map.addAttribute("includeMajor", includeMajor);
			logger.info("用户名："+session.getAttribute("username")+" 模块名：查询选科各地要求  操作：进入模块  状态：OK!");
			return  "web/xgk/xgk_enrollemnt";
		} catch (Exception e){
			logger.error("访问路径："+request.getRequestURI()+"操作：进入查询选科各地要求页面  错误信息: "+e);
			throw new MyRuntimeException(e);
		}							
	}
	/**
	* @Title: showhqtCpSpecialty
	* @Description: (专业详细信息页面)
	* @param @param map
	* @param @param specialtyId
	* @param @param session
	* @param @param request
	* @param @param response
	* @param @return
	* @param @throws MyRuntimeException    
	* @return String    
	* @throws
	 */
	@RequestMapping("/xgk_specialty.do")	
	public String showhqtCpSpecialty(ModelMap map,String specialtyId,HttpServletRequest request,HttpServletResponse response) throws MyRuntimeException{		
		try
		{		
			Session session = SecurityUtils.getSubject().getSession();
			List<Specialty> specialtylist=specialtyServer.getSpecialtyById(specialtyId);
			map.addAttribute("specialtylist",specialtylist);
			logger.info("用户名："+session.getAttribute("username")+" 模块名：测评选科报告页面简介  操作：进入模块  状态：OK!");
			return  "web/xgk/xgk_specialty";
		} catch (Exception e){
			logger.error("访问路径："+request.getRequestURI()+"操作：进入测评选科报告页面  错误信息: "+e);
			throw new MyRuntimeException(e);
		}							
	}
	@RequestMapping("/xgk_vocation.do")	
	public String showhqtCpVocation(ModelMap map,String vocationId,HttpServletRequest request,HttpServletResponse response) throws MyRuntimeException{		
		try
		{		
			Session session = SecurityUtils.getSubject().getSession();
			List<Vocation> vocationlist=vocationServer.getVocationById(vocationId);
			System.out.println(vocationId);
			map.addAttribute("vocationlist",vocationlist);
			logger.info("用户名："+session.getAttribute("username")+" 模块名：测评选科报告页面简介  操作：进入模块  状态：OK!");
			return  "web/xgk/xgk_vocation";
		} catch (Exception e){
			logger.error("访问路径："+request.getRequestURI()+"操作：进入测评选科报告页面  错误信息: "+e);
			throw new MyRuntimeException(e);
		}							
	}
	/**
	* @Title: handlezsyq
	* @Description: (这里用一句话描述这个方法的作用)
	* @param @param session
	* @param @param request
	* @param @return    
	* @return ResponseResult<Void>    
	* @throws
	 */
	@RequestMapping(value = "/xgk_zsyqselect.do", method = RequestMethod.POST)
	@ResponseBody
	public ResponseResult<List<Enrollment> > handlezsyq(String includeMajor,String eProvince, HttpServletRequest request) {
		ResponseResult<List<Enrollment> > rr;
		try{		
			String includeMajors=new String(includeMajor.getBytes("ISO-8859-1"),"utf-8"); 
			List<Enrollment> enrollmentlist=enrollmentServer.getMajor(includeMajors, eProvince);
			System.out.println(includeMajors);
			System.out.println(eProvince);
			System.out.println(enrollmentlist);
			if(enrollmentlist.size()>0){				
				rr = new ResponseResult<List<Enrollment> >(ResponseResult.STATE_OK,enrollmentlist);
			}else{
				rr = new ResponseResult<List<Enrollment> >(ResponseResult.ERR,"在当前区域没有该专业的相关招生信息");
			}			
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：获取招生信息  错误信息: " + e);
			rr = new ResponseResult<List<Enrollment> >(ResponseResult.ERR, "数据存在异常，请联系工作人员处理！");
		}
		return rr;
	}


}
