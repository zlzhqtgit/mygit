package cn.hqtzytb.service.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import cn.hqtzytb.service.IUserFeatureServer;
import cn.hqtzytb.service.IXgkcpResultServer;
import cn.hqtzytb.service.IXgkcpServer;
import cn.hqtzytb.utils.GetCommonUser;
import net.sf.json.JSONArray;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;
import cn.hqtzytb.entity.ResponseResult;
import cn.hqtzytb.entity.UserFeature;
import cn.hqtzytb.entity.Xgkcp;
import cn.hqtzytb.entity.XgkcpResult;
import cn.hqtzytb.mapper.XgkcpMapper;

/**
* @Title: XgkcpServerImpl.java
* @Package cn.hqtzytb.service
* @Description:(测评结果信息查询业务层实现类)
* @author: ZhouLingZhang
* @date 2019年9月5日
* @Copyright:好前途教育
* @version V1.0
*/

@Service
public class XgkcpServerImpl implements IXgkcpServer {
	private  static final Logger logger = LogManager.getLogger(XgkcpServerImpl.class.getName());
	@Autowired
	public XgkcpMapper xgkcpMapper;
	@Autowired
	private IXgkcpResultServer iXgkcpResultServer;
	@Autowired
	private IUserFeatureServer userFeatureServer;

	public List<Xgkcp> getCpResult(String cpName) {
		String where="cp_name ='" + cpName + "'";
		return xgkcpMapper.select(where, null, null, null);
	}

	public List<Xgkcp> getCpType(String cpName) {
		String where="cp_name ='" + cpName + "'";
		return xgkcpMapper.selectType(where, null, null, null);
	}

	
	@Override
	public String showhqtCpAnswer(ModelMap map, Integer cpid, HttpServletRequest request,HttpServletResponse response){
		try {
			Session session = SecurityUtils.getSubject().getSession();
			map.addAttribute("cpid", cpid);
			logger.info("用户名：" + session.getAttribute("username") + " 模块名：答题页面     操作：进入模块  状态：OK!");
			return "web/xgk/xgk_answer";
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：进入答题页面  错误信息: " + e);
			return "web/xgk/xgk_error_404";
		}
	}

	@Override
	public String showhqtCpAnswerHld(ModelMap map, HttpServletRequest request, HttpServletResponse response) {
		try {
			Session session = SecurityUtils.getSubject().getSession();
			logger.info("用户名：" + session.getAttribute("username") + " 模块名：霍兰德答题简介  操作：进入模块  状态：OK!");
			return "web/xgk/xgk_answer_hld";
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：进入霍兰德答题简介  错误信息: " + e);
			return "web/xgk/xgk_error_404";
		}
	}

	@Override
	public String showhqtCpAnswerMbti(ModelMap map, HttpServletRequest request, HttpServletResponse response) {
		try {
			Session session = SecurityUtils.getSubject().getSession();
			logger.info("用户名：" + session.getAttribute("username") + " 模块名：MBTI答题简介  操作：进入模块  状态：OK!");
			return "web/xgk/xgk_answer_mbti";
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：进入霍兰德答题简介  错误信息: " + e);
			return "web/xgk/xgk_error_404";
		}
	}

	@Override
	public String showhqtCpIndex(ModelMap map, HttpServletRequest request, HttpServletResponse response) {
		try {
			Session session = SecurityUtils.getSubject().getSession();
			logger.info("用户名：" + session.getAttribute("username") + " 模块名：新高考首页  操作：进入模块  状态：OK!");
			return "web/xgk/xgk_index";
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：进入新高考首页  错误信息: " + e);
			return "web/xgk/xgk_error_404";
		}
	}

	@Override
	public String showhqtCpChoice(ModelMap map, HttpServletRequest request, HttpServletResponse response) {
		try {
			Session session = SecurityUtils.getSubject().getSession();
			logger.info("用户名：" + session.getAttribute("username") + " 模块名：认知测评页面  操作：进入模块  状态：OK!");
			return "web/xgk/xgk_choice";
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：进入认知测评页面  错误信息: " + e);
			return "web/xgk/xgk_error_404";
		}
	}

	@Override
	public String showIndexno(ModelMap map, HttpServletRequest request) {
		try {
			Session session = SecurityUtils.getSubject().getSession();
			// 从session里面提取分数与测评类型
			String testName = (String) session.getAttribute("cpName");
			@SuppressWarnings("unchecked")
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
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：进入认知测评结果页面 异常  错误信息: " + e);
			return "web/xgk/xgk_error_404";
		}

	}

	@Override
	public ResponseResult<Void> handleCpResult(Integer id,String cpda, HttpServletRequest request) {
		ResponseResult<Void> rr;
		try {
			Session session = SecurityUtils.getSubject().getSession();
			System.err.println("uid:" + session.getAttribute("uid"));
			List<UserFeature> userFeatureList = userFeatureServer.getUserFeatureByUid(Integer.valueOf(session.getAttribute("uid").toString()));
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
			// 筛选出相测评名称的所有类型结果
			List<Xgkcp> typelist = getCpType(cpName);
			// 把所有类型结果存入二维数组，用于记录类型的分
			for (int i = 0; i < typelist.size(); i++) {
				cpResult.put(typelist.get(i).getCpType(), 0);
			}
			// 把答案转换为json数组
			JSONArray cpdajson = JSONArray.fromObject(cpda);
			// 查询出相应的题目
			List<Xgkcp> cplist = getCpResult(cpName);
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

	@Override
	public ResponseResult<Void> haveYouCognitionEvaluation(Integer uid, String type) {
		return userFeatureServer.haveYouCognitionEvaluation(uid,type);
	}

	@Override
	public String showUserResultReport(String cpResult, HttpServletRequest request) {
		return iXgkcpResultServer.showUserResultReport(cpResult,request);
	}

	
	

}
