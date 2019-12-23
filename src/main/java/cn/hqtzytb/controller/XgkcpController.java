package cn.hqtzytb.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import cn.hqtzytb.utils.GetCommonUser;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import cn.hqtzytb.entity.ResponseResult;
import cn.hqtzytb.entity.UserFeature;
import cn.hqtzytb.entity.Xgkcp;
import cn.hqtzytb.entity.XgkcpResult;
import cn.hqtzytb.exception.MyRuntimeException;
import cn.hqtzytb.mapper.PersonalityMapper;
import cn.hqtzytb.mapper.UserFeatureMapper;
import cn.hqtzytb.service.IUserFeatureServer;
import cn.hqtzytb.service.IXgkcpResultServer;
import cn.hqtzytb.service.IXgkcpServer;
import net.sf.json.JSONArray;

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
	private IXgkcpServer xgkcpServer;
	@Autowired
	private IXgkcpResultServer iXgkcpResultServer;
	@Autowired
	private IUserFeatureServer userFeatureServer;
	
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
	public String showhqtCpAnswer(ModelMap map, Integer cpid, HttpServletRequest request, HttpServletResponse response) throws MyRuntimeException {
		try {
			Session session = SecurityUtils.getSubject().getSession();
			map.addAttribute("cpid", cpid);
			logger.info("用户名：" + session.getAttribute("username") + " 模块名：答题页面     操作：进入模块  状态：OK!");
			return "web/xgk/xgk_answer";
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：进入答题页面  错误信息: " + e);
			throw new MyRuntimeException(e);
		}
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
		try {
			Session session = SecurityUtils.getSubject().getSession();
			logger.info("用户名：" + session.getAttribute("username") + " 模块名：霍兰德答题简介  操作：进入模块  状态：OK!");
			return "web/xgk/xgk_answer_hld";
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：进入霍兰德答题简介  错误信息: " + e);
			throw new MyRuntimeException(e);
		}
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
	public String showhqtCpAnswerMbti(ModelMap map, HttpServletRequest request, HttpServletResponse response) throws MyRuntimeException {
		try {
			Session session = SecurityUtils.getSubject().getSession();
			logger.info("用户名：" + session.getAttribute("username") + " 模块名：MBTI答题简介  操作：进入模块  状态：OK!");
			return "web/xgk/xgk_answer_mbti";
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：进入霍兰德答题简介  错误信息: " + e);
			throw new MyRuntimeException(e);
		}
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
		try {
			Session session = SecurityUtils.getSubject().getSession();
			logger.info("用户名：" + session.getAttribute("username") + " 模块名：新高考首页  操作：进入模块  状态：OK!");
			return "web/xgk/xgk_index";
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：进入新高考首页  错误信息: " + e);
			throw new MyRuntimeException(e);
		}
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
	public String showhqtCpChoice(ModelMap map, HttpServletRequest request,
			HttpServletResponse response) throws MyRuntimeException {
		try {
			Session session = SecurityUtils.getSubject().getSession();
			logger.info("用户名：" + session.getAttribute("username") + " 模块名：认知测评页面  操作：进入模块  状态：OK!");
			return "web/xgk/xgk_choice";
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：进入认知测评页面  错误信息: " + e);
			throw new MyRuntimeException(e);
		}
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
		Session session = SecurityUtils.getSubject().getSession();
		// 重session里面提取分数与测评类型
		String testName = (String) session.getAttribute("cpName");
		Map<String, Integer> cpFengshu = (Map<String, Integer>) session.getAttribute("cpResult");
		GetCommonUser get = new GetCommonUser();
		String cpresult = "";
		// 判断测评类型
		if (testName.equals("霍兰德")) {
			List<String> mobileList = get.gethld(cpFengshu);
			// 查询数据库，查出相关的兴趣代码及相关信息
			List<XgkcpResult> reportResult = iXgkcpResultServer.resultReport(mobileList, testName);
			// 渲染到页面
			String[][] str = { { "R", "0", "现实型" }, { "I", "0", "研究型" }, { "A", "0", "艺术型" }, { "S", "0", "社会型" },
					{ "E", "0", "企业型" }, { "C", "0", "常规型" } };
			String fs = "";
			// Iterator iter = cpFengshu.entrySet().iterator(); //获得map的Iterator
			for (int i = 0; i < str.length; i++) {
				str[i][1] = cpFengshu.get(str[i][0]).toString();
				fs += str[i][0] + "," + str[i][1] + "," + str[i][2] + "-";
			}
			System.err.println("cpFengshu:" + cpFengshu);
			System.err.println("mobileList:" + mobileList);
			System.err.println("fs:" + fs);
			System.err.println("reportResult:" + reportResult);
			map.addAttribute("cpFengshu", fs);
			map.addAttribute("hldreport", reportResult);
			map.addAttribute("report", "report_hld");
			

			for(int i=0; i<reportResult.size(); i++){
				//专业列表
				map.addAttribute("specialty" + i,GetCommonUser.getJson(JSONArray.fromObject(reportResult.get(i).getPersonalitySpecialty()), request));
				//职业列表
				map.addAttribute("vocation" + i,GetCommonUser.getJson(JSONArray.fromObject(reportResult.get(i).getPersonalityVocation()), request));
			}
		} else {
			cpresult = get.getMbti(cpFengshu);
			// 组合以上结果渲染到页面
			map.addAttribute("report", "report_" + cpresult);
		}
		
		return "web/xgk/xgk_report";
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
		Session session = SecurityUtils.getSubject().getSession();
		System.err.println("uid:" + session.getAttribute("uid"));
		List<UserFeature> userFeatureList = userFeatureServer.getUserFeatureByUid(Integer.valueOf(session.getAttribute("uid").toString()));
		ResponseResult<Void> rr;
		GetCommonUser get = new GetCommonUser();
		Map<String, Integer> cpResult = new HashMap<String, Integer>();
		// 判断测评类型
		String cpName = "霍兰德";
		if (id == 2){
			cpName = "MBTI";
		}
		UserFeature userFeature = new UserFeature();
		boolean hasTest = false;//是否做过认知测评
		for (UserFeature feature : userFeatureList) {
			if (cpName.equals(feature.getEvaluationType())){
				hasTest = true;
			}
		}
		try {
			// 筛选出相测评名称的所有类型结果
			List<Xgkcp> typelist = xgkcpServer.getCpType(cpName);
			// 把所有类型结果存入二维数组，用于记录类型的分
			for (int i = 0; i < typelist.size(); i++) {
				cpResult.put(typelist.get(i).getCpType(), 0);
			}
			// 把答案转换为json数组
			JSONArray cpdajson = JSONArray.fromObject(cpda);
			// 查询出相应的题目
			List<Xgkcp> cplist = xgkcpServer.getCpResult(cpName);
			// 计算出相应的分数
			for (int j = 0; j < cpdajson.size(); j++) {
				for (int y = 0; y < cplist.size(); y++) {
					if (Integer.parseInt(cpdajson.getJSONArray(j).get(0).toString()) == cplist.get(y).getCpNub()
							&& Integer.parseInt(cpdajson.getJSONArray(j).get(1).toString()) == cplist.get(y)
									.getCpCpda()) {
						cpResult.put(cplist.get(y).getCpType(), cpResult.get(cplist.get(y).getCpType()) + 1);
					}
				}
			}
			// 存入session,在渲染页面时候调用计算结果
			session.setAttribute("cpName", cpName);
			session.setAttribute("cpResult", cpResult);
			if(id==1){
				List<String> mobileList=get.gethld(cpResult);
				userFeature.setEvaluationName(mobileList.get(0)+mobileList.get(1)+mobileList.get(2));
			}else{
				userFeature.setEvaluationName(get.getMbti(cpResult));
			}			
			userFeature.setUid((int)session.getAttribute("uid"));
			userFeature.setEvaluationType(cpName);
			userFeature.setEvaluationFraction(cpResult.toString());
			Date now= new Date();
			userFeature.setEvaluationTime(now);
			if (hasTest){ //已经做过认知测评 更新
				userFeatureServer.update(userFeature);
			} else {//新增测评记录
				userFeatureServer.insert(userFeature);
			}
			rr = new ResponseResult<Void>(ResponseResult.STATE_OK, "题目答案已提交，正在为你生成报告......");
			// logger.info("用户名："+username.getUsername()+" 模块名：区库设置模块 操作：添加区库信息
			// 状态：OK!");
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：获取测评报告信息  错误信息: " + e);
			rr = new ResponseResult<Void>(ResponseResult.ERR, "数据存在异常，请联系工作人员处理！");
		}
		return rr;
	}
	
	
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
		return userFeatureServer.haveYouCognitionEvaluation(uid,type);
	}

	/**
	 * 展示用户认知测评结果页面
	 */
	@RequestMapping("/xgk_user_report.do")
	public String showUserResultReport(String cpResult,HttpServletRequest request){
		
		return iXgkcpResultServer.showUserResultReport(cpResult,request);
	}
}
