package cn.hqtzytb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import cn.hqtzytb.entity.ResponseResult;
import cn.hqtzytb.exception.MyRuntimeException;
import cn.hqtzytb.service.IXgkcpServer;

/**
 * @Title: XgkcpController.java
 * @Package cn.hqtzytb.controller
 * @Description:(测评控制层)
 * @author: ZhouLingZhang
 * @date 2019年9月5日
 * @Copyright:好前途教育
 * @version V1.0
 */
@Controller
@RequestMapping("/cp")
public class XgkcpController {
	private static final Logger logger = LogManager.getLogger(XgkcpController.class.getName());
	@Autowired
	private IXgkcpServer iXgkcpServer;

	
	/**
	 * @throws MyRuntimeException
	 * @Title: showhqtCpAnswer 
	 * @Description: (测评题目显示页面) 	
	 * @param map 
	 * @param session 
	 * @param request 
	 * @param response 
	 * @return String 
	 */
	@RequestMapping("/xgk_answer.do")
	public String showhqtCpAnswer(ModelMap map, Integer cpid, HttpServletRequest request, HttpServletResponse response){
		
		return iXgkcpServer.showhqtCpAnswer(map, cpid, request, response);
	}

	/**
	 * @throws MyRuntimeException
	 * @Title: showhqtCpAnswerHld 
	 * @Description: (霍兰德测评题目提示页面) 
	 * @param map 
	 * @param session 
	 * @param request 
	 * @param response 
	 * @return String 
	 */
	@RequestMapping("/xgk_answer_hld.do")
	public String showhqtCpAnswerHld(ModelMap map, HttpServletRequest request, HttpServletResponse response) throws MyRuntimeException {
		
		return iXgkcpServer.showhqtCpAnswerHld(map, request, response);		
	}

	/**
	 * @throws MyRuntimeException
	 * @Title: showhqtCpAnswerHld 
	 * @Description: (MBTI测评题目提示页面) 
	 * @param map 
	 * @param session 
	 * @param request 
	 * @param response 
	 * @return String 
	 */
	@RequestMapping("/xgk_answer_mbti.do")
	public String showhqtCpAnswerMbti(ModelMap map, HttpServletRequest request, HttpServletResponse response){
		
		return iXgkcpServer.showhqtCpAnswerMbti(map, request, response);		
	}

	/**
	 * @throws MyRuntimeException
	 * @Title: showhqtCpIndex 
	 * @Description: (新高考首页) 
	 * @param map 
	 * @param session 
	 * @param request 
	 * @param response 
	 * @return String 
	 */
	@RequestMapping("/xgk_index.do")
	public String showhqtCpIndex(ModelMap map, HttpServletRequest request, HttpServletResponse response) throws MyRuntimeException {
		
		return iXgkcpServer.showhqtCpIndex(map, request, response);		
	}
	
	/**
	 * @throws MyRuntimeException
	 * @Title: showhqtCpIndex 
	 * @Description: (新高考首页) 
	 * @param map 
	 * @param session 
	 * @param request 
	 * @param response 
	 * @return String 
	 */	
	@RequestMapping("/xgk_choice.do")
	public String showhqtCpChoice(ModelMap map, HttpServletRequest request,	HttpServletResponse response) throws MyRuntimeException {
		
		return iXgkcpServer.showhqtCpChoice(map, request, response);		
	}
	/**
	 * @throws MyRuntimeException
	 * @Title: showIndexno 
	 * @Description: (新高考首页) 
	 * @param map 
	 * @param session 
	 * @param request 
	 * @param response 
	 * @return String 
	 */	
	@SuppressWarnings("unchecked")
	@RequestMapping("/xgk_report.do")
	public String showIndexno(ModelMap map, HttpServletRequest request) {
		
		return iXgkcpServer.showIndexno(map, request);	
		
	}

	/**
	* @Title: handleCpResult
	* @Description: (测评计算分数)
	* @param @param id
	* @param @param cpda
	* @param @param session
	* @param @param request
	* @param @return    
	* @return ResponseResult<Void>    
	* @throws
	 */
	@RequestMapping(value = "/xgk_result.do", method = RequestMethod.POST)
	@ResponseBody
	public ResponseResult<Void> handleCpResult(Integer id, @RequestParam(value = "cpda") String cpda, HttpServletRequest request) {
		
		return iXgkcpServer.handleCpResult(id, cpda, request);	
	}
	
	/**
	 * 
	 * @param map
	 * @param request
	 * @param response
	 * @return
	 * @throws MyRuntimeException
	 */
	@RequestMapping("/xgk_guide_xuanke.do")	
	public String xgk_guide_xuanke(ModelMap map,HttpServletRequest request,HttpServletResponse response) throws MyRuntimeException{	
		
		return  "web/public/xgk_guide_xuanke";
	}

	/**
	 * 是否做过认知测评 [hld丶MBTI]
	 * @param uid
	 * @param type
	 * @return
	 */
	@RequestMapping("/xgk_cognition_evaluation.do")
	@ResponseBody
	public ResponseResult<Void> haveYouCognitionEvaluation(@RequestParam(value="uid") Integer uid,@RequestParam(value="type") String type){
		
		return iXgkcpServer.haveYouCognitionEvaluation(uid,type);
	}

	/**
	 * 展示用户认知测评结果页面
	 */
	@RequestMapping("/xgk_user_report.do")
	public String showUserResultReport(String cpResult,HttpServletRequest request){
		
		return iXgkcpServer.showUserResultReport(cpResult,request);
	}
}
