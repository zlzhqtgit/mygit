package cn.hqtzytb.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import cn.hqtzytb.service.IVocationServer;
import cn.hqtzytb.utils.Constants;
import cn.hqtzytb.utils.GetCommonUser;
import net.sf.json.JSONArray;

import org.apache.commons.lang.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSON;

import cn.hqtzytb.entity.ResponseResult;
import cn.hqtzytb.entity.Vocation;
import cn.hqtzytb.mapper.VocationMapper;



/**
* @Title: UserFeatureServerImpl.java
* @Package cn.hqtzytb.service
* @Description:(用户特征业务层实现类)
* @author: ZhouLingZhang
* @date 2019年9月27日
* @Copyright:好前途教育
* @version V1.0
 */
@Service
public class VocationServerImpl implements IVocationServer {
	
	@Autowired
	public VocationMapper vocationMapper;
	
	
	@Override
	public List<Vocation> getVocationByCode(String personalityCode) {
		String where="e.personality_id='"+personalityCode+"'";
		return vocationMapper.select(where, null, null, null);
	}
	
	@Override
	public List<Vocation> getLargeClassByPCode(String personalityCode) {
		String where="e.personality_id='"+personalityCode+"' LIMIT 6";
		return vocationMapper.selectLargeClass(where, null, null, null);
	}

	
	@Override
	public List<Vocation> getVocationById(String vocationId) {
		String where="vocation_id='"+vocationId+"'";
		return vocationMapper.selectId(where, null, null, null);
	}
	@Override
	public List<Vocation> getVocationByIdtwo(String where) {
		// TODO Auto-generated method stub
		return vocationMapper.selectId(where, null, null, null);
	}

	
	
	@Override
	public String getVocationIndex() {
		SecurityUtils.getSubject().getSession().setAttribute("industry_name", JSON.toJSONString(vocationMapper.selectIndustryName()));
		return "web/xgk/xgk_libCareer_s";
	}

	@Override
	public ResponseResult<List<Vocation>> getVocationQuery(String industry, String education) {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("industryName", StringUtils.isEmpty(industry) ? null : industry);
		paramMap.put("educationQualification", StringUtils.isEmpty(education) ? null : education);
		List<Vocation> vocationList = vocationMapper.selectVocationListByMap(paramMap);
		return new ResponseResult<>(ResponseResult.STATE_OK,Constants.RESULT_MESSAGE_SUCCESS,vocationList);
	}

	@Override
	public String getVocationDetail(String vocationId, HttpServletRequest request) {
		Vocation vocation = vocationMapper.selectId("vocation_id = '" + vocationId + "' ", null, null, null).get(0);
		List<Vocation> vocationList = vocationMapper.selectId(" industry_name = '" + vocation.getIndustryName() + "' AND vocation_id <> '" + vocationId + "' " ,null,0,5);
		vocationList.add(0, vocation);
		int max = 0;
		int min = 0;
		List<List<String>> salaryList = null;
		for(Vocation voc :vocationList){
			salaryList = GetCommonUser.getJson(JSONArray.fromObject(voc.getSalaryTrend()), request);
			max = Integer.valueOf(salaryList.get(0).get(1)) ;
			min = Integer.valueOf(salaryList.get(0).get(1)) ;
			for(List<String> salary : salaryList){
				//[["应届生","4190"],["1-3年","4320"],["3-5年","4550"],["5-10年","4640"],["10年以上","4920"]]
				if (Integer.valueOf(salary.get(1)) > max) {
					max = Integer.valueOf(salary.get(1));
				}
				if (Integer.valueOf(salary.get(1)) < min) {
					min = Integer.valueOf(salary.get(1)) ;
				}				
			}
			voc.setIncomeInfo(min + " - " + max + "元/月");
		}
		Session session = SecurityUtils.getSubject().getSession();
		//salary_trend 薪资趋势
		session.setAttribute("salary_trend", GetCommonUser.getJson(vocation.getSalaryTrend(), request));
		//salaryDistribution 薪资分布
		session.setAttribute("salary_distribution", GetCommonUser.getJson(vocation.getSalaryDistribution(), request));
				
		//就业趋势(按学历) employmentSituationEducation
		session.setAttribute("employment_situation_education", GetCommonUser.getJson(vocation.getEmploymentSituationEducation(), request));	
		
		//就业趋势(按经验) employmentSituationExperience	
		session.setAttribute("employment_situation_experience", GetCommonUser.getJson(vocation.getEmploymentSituationExperience(), request));
		
		//从业资格 requirement_qualification
		session.setAttribute("requirement_qualification", vocation.getRequirementQualification().split(";"));
		
		//相关专业 relation_specialty
		session.setAttribute("relation_specialty", vocation.getRelationSpecialty().split("、"));
		
		
		JSONArray jsonArray = JSONArray.fromObject(vocation.getProspect());
		//行业收入 industry_income
		session.setAttribute("industry_income", GetCommonUser.getJson(jsonArray.get(0), request));
		//地区收入 regional_income
		session.setAttribute("regional_income", GetCommonUser.getJson(jsonArray.get(1), request));
		//职业列表
		session.setAttribute("vocationList", vocationList);
		return "web/xgk/xgk_libCareer_d";
	}

	@Override
	public ResponseResult<Map<String, Object>> getVocationOtherDetail(String vocationId, HttpServletRequest request) {
		
		Vocation vocation = vocationMapper.selectId(" vocation_id = '" + vocationId + "' ", null, null, null).get(0);
		Map<String, Object> map = new HashMap<>();
		//salary_trend 薪资趋势
		map.put("salary_trend", GetCommonUser.getJson(JSONArray.fromObject(vocation.getSalaryTrend()), request));
		//salaryDistribution 薪资分布
		map.put("salary_distribution", GetCommonUser.getJson(JSONArray.fromObject(vocation.getSalaryDistribution()), request));
				
		//就业趋势(按学历) employmentSituationEducation
		map.put("employment_situation_education", GetCommonUser.getJson(JSONArray.fromObject(vocation.getEmploymentSituationEducation()), request));	
		
		//就业趋势(按经验) employmentSituationExperience	
		map.put("employment_situation_experience", GetCommonUser.getJson(JSONArray.fromObject(vocation.getEmploymentSituationExperience()), request));
		
		//从业资格 requirement_qualification
		map.put("requirement_qualification", vocation.getRequirementQualification().split(";"));
		
		//相关专业 relation_specialty
		map.put("relation_specialty", vocation.getRelationSpecialty().split("、"));
		
		JSONArray jsonArray = JSONArray.fromObject(vocation.getProspect());
		//行业收入 industry_income
		map.put("industry_income", GetCommonUser.getJson(JSONArray.fromObject(jsonArray.get(0)), request));
		//地区收入 regional_income
		map.put("regional_income", GetCommonUser.getJson(JSONArray.fromObject(jsonArray.get(1)), request));

		return new ResponseResult<>(ResponseResult.STATE_OK,Constants.RESULT_MESSAGE_SUCCESS,map);
	}

	

}
