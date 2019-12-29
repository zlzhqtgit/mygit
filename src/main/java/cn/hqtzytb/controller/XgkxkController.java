package cn.hqtzytb.controller;


import java.io.UnsupportedEncodingException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import cn.hqtzytb.entity.Enrollment;
import cn.hqtzytb.entity.ResponseResult;
import cn.hqtzytb.entity.Specialty;
import cn.hqtzytb.entity.Vocation;
import cn.hqtzytb.exception.MyRuntimeException;
import cn.hqtzytb.service.IXgkxkService;



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

	@Autowired
	private IXgkxkService iXgkxkService;
	
	

	/**
	 * 进入选科指导页面 
	 * @param map
	 * @param request
	 * @param response
	 * @return
	 * @throws MyRuntimeException
	 */
	@RequestMapping("/xgk_guide_select.do")	
	public String showhqtXgkGuideSelect(Integer taskId, ModelMap map, HttpServletRequest request, HttpServletResponse response) throws MyRuntimeException{	
		
		return iXgkxkService.showhqtXgkGuideSelect(taskId, map, request, response);					
	}
	
	
	/**
	 * 依据职业大类查询职业详情清单
	 * @param industryName
	 * @return
	 */
	@RequestMapping("/xgk_guide_vocation_list.do")
	@ResponseBody
	public ResponseResult<List<Vocation>> getVocationList(String industryName, HttpServletRequest request){
		
		return iXgkxkService.getVocationList(industryName,request);
	}
	
	
	
	
	/**
	 * 依据职业id查询相关专业信息
	 * @param industryName
	 * @return
	 */
	@RequestMapping("/xgk_guide_specialt_list.do")
	@ResponseBody
	public ResponseResult<List<Specialty>> getSpecialtyList(String vocationId, HttpServletRequest request){
		return iXgkxkService.getSpecialtyList(vocationId,request);
	}
	
	
	/**
	 * 判断用户是否能继续选科
	 * @return
	 */
	@RequestMapping("/xgk_pick_verdict.do")
	@ResponseBody
	public ResponseResult<Void> getPickReport(HttpServletRequest request){
		
		return iXgkxkService.getPickReport(request);
	}
	
	
	
	
	/**
	 * 进入选科报告数据分析
	 * @param province 省份
	 * @param specialtyId 专业ID
	 * @return
	 * @throws UnsupportedEncodingException 
	 */
	@RequestMapping("/xgk_pick_report.do")
	public String getGenerateReport(String province, String specialtyId, HttpServletRequest request) throws UnsupportedEncodingException{
		
		return iXgkxkService.getGenerateReport(province, specialtyId, request);
	}
	
	/**
	 * 新增选科组合报告
	 * @param request
	 * @param response
	 * @param result
	 * @return
	 */
	@RequestMapping("/xgk_add_report.do")	
	@ResponseBody
	public ResponseResult<Void> addReport( String result, HttpServletRequest request) {	
		
		return iXgkxkService.addReport(result,request);
	}
	
	
	/**
	 * 进入自定义选科指导首页
	 * @param map
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/xgk_customise.do")	
	public String showhqtCustomise(ModelMap map,HttpServletRequest request,HttpServletResponse response){		
		
		return iXgkxkService.showhqtCustomise(map,request,response);			
	}
	

	/**
	 * 自定义选科报告页面简介
	 * @param map
	 * @param str
	 * @param request
	 * @param response
	 * @return
	 * @throws MyRuntimeException
	 */
	@RequestMapping("/xgk_customisereport.do")	
	public String showhqtCustomisereport(ModelMap map,String str,HttpServletRequest request,HttpServletResponse response){		
		
		 return iXgkxkService.showhqtCustomisereport(map, str, request, response);						
	}
	 
	 
	 /**
	  * 测评选科报告页面
	  * @param personalityCode
	  * @param request
	  * @param response
	  * @return
	  */
	@RequestMapping("/xgk_guide_xuanke.do")	
	public String showhqtCpfxselectreportone(String personalityCode,HttpServletRequest request,HttpServletResponse response){		
		
		return iXgkxkService.showhqtCpfxselectreportone(personalityCode, request, response);						
	}
	

	/**
	 * 测评选科报告
	 * @param request
	 * @return
	 */
	@PostMapping(value = "/xgk_cpxk.do")
	@ResponseBody
	public ResponseResult<Void> handleCpXk(HttpServletRequest request) {
		
		return iXgkxkService.handleCpXk(request);
	}

	
	/**
	 * 查询选科各地要求
	 * @param map
	 * @param includeMajor
	 * @param request
	 * @param response
	 * @return
	 * @throws MyRuntimeException
	 */
	@RequestMapping("/xgk_cpEnrollment.do")	
	public String showhqtCpEnrollment(ModelMap map,String includeMajor,HttpServletRequest request,HttpServletResponse response){		
		
		return iXgkxkService.showhqtCpEnrollment(map, includeMajor, request, response);				
	}

	
	/**
	 * 专业详细信息页面
	 * @param map
	 * @param specialtyId
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/xgk_specialty.do")	
	public String showhqtCpSpecialty(ModelMap map,String specialtyId,HttpServletRequest request,HttpServletResponse response){		
		
		return iXgkxkService.showhqtCpSpecialty(map, specialtyId, request, response);					
	}
	
	/**
	 * 进入测评选科报告页面
	 * @param map
	 * @param vocationId
	 * @param request
	 * @param response
	 * @return
	 * @throws MyRuntimeException
	 */
	@RequestMapping("/xgk_vocation.do")	
	public String showhqtCpVocation(ModelMap map,String vocationId,HttpServletRequest request,HttpServletResponse response) throws MyRuntimeException{		
		
		return iXgkxkService.showhqtCpVocation(map, vocationId, request, response);					
	}
	

	/**
	 * 获取招生信息 
	 * @param includeMajor
	 * @param eProvince
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/xgk_zsyqselect.do", method = RequestMethod.POST)
	@ResponseBody
	public ResponseResult<List<Enrollment> > handlezsyq(String includeMajor,String eProvince, HttpServletRequest request) {
		
		return iXgkxkService.handlezsyq(includeMajor, eProvince, request);
	}


}
