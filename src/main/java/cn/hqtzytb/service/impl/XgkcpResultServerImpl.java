package cn.hqtzytb.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import cn.hqtzytb.service.IXgkcpResultServer;
import cn.hqtzytb.utils.Constants;
import cn.hqtzytb.utils.GetCommonUser;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import cn.hqtzytb.entity.UserFeature;
import cn.hqtzytb.entity.XgkcpResult;
import cn.hqtzytb.mapper.UserFeatureMapper;
import cn.hqtzytb.mapper.XgkcpResultMapper;

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
public class XgkcpResultServerImpl implements IXgkcpResultServer {
	private  static final Logger logger = LogManager.getLogger(XgkcpResultServerImpl.class.getName());
	@Autowired
	private XgkcpResultMapper xgkcpResultMapper;
	@Autowired
	private UserFeatureMapper userFeatureMapper;
	

	@Override
	public List<XgkcpResult> resultReport(List<String> personalityCode, String testName) {
		String where = "personality_code LIKE '%" + personalityCode.get(0) + "%' AND personality_code LIKE '%"
				+ personalityCode.get(1) + "%' AND personality_code LIKE '%" + personalityCode.get(2)
				+ "%' and test_name='" + testName + "'";
		return xgkcpResultMapper.select(where, null, null, null);
	}

	@Override
	public List<XgkcpResult> getAll() {
		return xgkcpResultMapper.select(null, null, null, null);
	}

	
	@Override
	public String showUserResultReport(String cpResult, HttpServletRequest request) {
		try {
			Subject subject = SecurityUtils.getSubject();
			if (subject.isAuthenticated()) {
				Session session = subject.getSession();
				if (cpResult.length() > 3) {//MBTI测评报告
					session.setAttribute("report", "report_" + cpResult);
					
				} else {//霍兰德测评报告
					List<UserFeature> userFeatureList = userFeatureMapper.select(" uid = '" + session.getAttribute("uid") + "' AND evaluation_type = '" + Constants.EVALUATION_TYPE_HOLLAND_ANALYSIS + "'", null, null, null);
					if (userFeatureList.isEmpty()) {
						logger.error("访问路径：" + request.getRequestURI() + "操作：查看个人潜能报告   错误信息: 用户未进行过霍兰德测评！");
						return "web/xgk/xgk_error_404";
					}

					@SuppressWarnings("unchecked")//消除黄线警示
					Map<String, Integer> cpFengshu = (Map<String, Integer>)JSONObject.fromObject(userFeatureList.get(0).getEvaluationFraction());
					
					List<String> mobileList = new ArrayList<String>();
					for(char c : cpResult.toCharArray()){
						mobileList.add(c + "");
					}
					List<XgkcpResult> reportResult = resultReport(mobileList, Constants.EVALUATION_TYPE_HOLLAND_ANALYSIS);
					String[][] strList = { { "R", "0", "现实型" }, { "I", "0", "研究型" }, { "A", "0", "艺术型" }, 
										   { "S", "0", "社会型" }, { "E", "0", "企业型" }, { "C", "0", "常规型" } };
					String fs = "";
					for (int i = 0; i < strList.length; i++) {
						strList[i][1] = cpFengshu.get(strList[i][0]).toString();
						fs += strList[i][0] + "," + strList[i][1] + "," + strList[i][2] + "-";
					}
					
					for(int i=0; i<reportResult.size(); i++){
						//专业列表
						session.setAttribute("specialty" + i,GetCommonUser.getJson(JSONArray.fromObject(reportResult.get(i).getPersonalitySpecialty()), request));
						//职业列表
						session.setAttribute("vocation" + i,GetCommonUser.getJson(JSONArray.fromObject(reportResult.get(i).getPersonalityVocation()), request));
					}
					session.setAttribute("cpFengshu", fs);
					session.setAttribute("hldreport", reportResult);
					session.setAttribute("report", "report_hld");
				}
			}
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：查看个人潜能报告   错误信息: " + e);
			return "web/xgk/xgk_error_404";
		}
		return "web/xgk/xgk_report";
	}

}
