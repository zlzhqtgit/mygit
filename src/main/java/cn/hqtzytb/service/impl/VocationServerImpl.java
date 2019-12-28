package cn.hqtzytb.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import cn.hqtzytb.service.IVocationServer;
import cn.hqtzytb.utils.Constants;
import cn.hqtzytb.utils.GetCommonUser;
import net.sf.json.JSONArray;
import org.apache.commons.lang.StringUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
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
    private  static final Logger logger = LogManager.getLogger(VocationServerImpl.class.getName());
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
		return vocationMapper.selectId(where, null, null, null);
	}

	
	
	@Override
	public String getVocationIndex() {
		try {
			SecurityUtils.getSubject().getSession().setAttribute("industry_name", JSON.toJSONString(vocationMapper.selectIndustryName()));
		} catch (Exception e) {
			logger.error("模块： 职业库  操作：进入展示职业库首页异常    状态：FAIL!" + e);
		}
		return "web/xgk/xgk_libCareer_s";
	}

	@Override
	public ResponseResult<List<Vocation>> getVocationQuery(String industry, String education) {
		List<Vocation> vocationList = null;
		try {
			Map<String, Object> paramMap = new HashMap<>();
			paramMap.put("industryName", StringUtils.isEmpty(industry) ? null : industry);
			paramMap.put("educationQualification", StringUtils.isEmpty(education) ? null : education);
			vocationList = vocationMapper.selectVocationListByMap(paramMap);
		} catch (Exception e) {
			logger.error("模块： 职业库  操作：搜索职业库信息异常    状态：FAIL!" + e);
			return new ResponseResult<>(ResponseResult.ERR,Constants.RESULT_MESSAGE_FAIL);
		}
		return new ResponseResult<>(ResponseResult.STATE_OK,Constants.RESULT_MESSAGE_SUCCESS,vocationList);
		
	}

	@Override
	public String getVocationDetail(String vocationId, HttpServletRequest request) {
		try {
			Vocation vocation = vocationMapper.selectId("vocation_id = '" + vocationId + "' ", null, null, null).get(0);
			List<Vocation> vocationList = vocationMapper.selectId(" industry_name = '" + vocation.getIndustryName() + "' AND vocation_id <> '" + vocationId + "' " ,null,0,5);
			vocationList.add(0, vocation);
			int max = 0;
			int min = 0;
			List<List<String>> salaryList = null;
			for(Vocation voc :vocationList){
				salaryList = GetCommonUser.getJson(JSONArray.fromObject(voc.getSalaryTrend()), request);
				max = Integer.valueOf("-".equals(salaryList.get(0).get(1)) ? "0" : salaryList.get(0).get(1)) ;
				min = max;

				for(List<String> salary : salaryList){
					int current = Integer.valueOf("-".equals(salary.get(1)) ? "0" : salary.get(1));
					if (current > max) {
						max = current;
					}
					if (current < min) {
						min = current ;
					}				
				}
				voc.setIncomeInfo(min + " - " + max + "元/月");
			}
			Session session = SecurityUtils.getSubject().getSession();
			// 薪资趋势
			session.setAttribute("salary_trend", GetCommonUser.getJson(vocation.getSalaryTrend(), request));
			// 薪资分布
			session.setAttribute("salary_distribution", GetCommonUser.getJson(vocation.getSalaryDistribution(), request));		
			//就业趋势(按学历) employmentSituationEducation
			session.setAttribute("employment_situation_education", GetCommonUser.getJson(vocation.getEmploymentSituationEducation(), request));	
			//就业趋势(按经验) employmentSituationExperience	
			session.setAttribute("employment_situation_experience", GetCommonUser.getJson(vocation.getEmploymentSituationExperience(), request));
			//从业资格 requirement_qualification
			session.setAttribute("requirement_qualification", StringUtils.isEmpty(vocation.getRequirementQualification()) ? new ArrayList<String>() : vocation.getRequirementQualification().split(";"));			
			session.setAttribute("relation_specialty", StringUtils.isEmpty(vocation.getRelationSpecialty()) ? new ArrayList<String>() : vocation.getRelationSpecialty().split("、"));			
			JSONArray jsonArray = JSONArray.fromObject(vocation.getProspect());
			//行业收入
			session.setAttribute("industry_income", GetCommonUser.getJson(jsonArray.get(0), request));
			//地区收入
			session.setAttribute("regional_income", GetCommonUser.getJson(jsonArray.get(1), request));
			//职业列表
			session.setAttribute("vocationList", vocationList);
		} catch (Exception e) {
			logger.error("模块： 职业库  操作：查看职业信息详情异常    状态：FAIL!" + e);
			return "web/xgk/xgk_error_404";
		}
		return "web/xgk/xgk_libCareer_d";
	}

	@Override
	public ResponseResult<Map<String, Object>> getVocationOtherDetail(String vocationId, HttpServletRequest request) {
		Map<String, Object> map = new HashMap<>();
		try {
			Vocation vocation = vocationMapper.selectId(" vocation_id = '" + vocationId + "' ", null, null, null).get(0);
			//薪资趋势
			map.put("salary_trend", GetCommonUser.getJson(JSONArray.fromObject(vocation.getSalaryTrend()), request));
			//薪资分布
			map.put("salary_distribution", GetCommonUser.getJson(JSONArray.fromObject(vocation.getSalaryDistribution()), request));				
			//就业趋势(按学历)
			map.put("employment_situation_education", GetCommonUser.getJson(JSONArray.fromObject(vocation.getEmploymentSituationEducation()), request));		
			//就业趋势(按经验)	
			map.put("employment_situation_experience", GetCommonUser.getJson(JSONArray.fromObject(vocation.getEmploymentSituationExperience()), request));	
			//从业资格
			map.put("requirement_qualification", StringUtils.isEmpty(vocation.getRequirementQualification())? new ArrayList<String>() : vocation.getRequirementQualification().split(";"));		
			//相关专业 
			map.put("relation_specialty", StringUtils.isEmpty(vocation.getRelationSpecialty()) ? new ArrayList<String>() : vocation.getRelationSpecialty().split("、"));
			JSONArray jsonArray = JSONArray.fromObject( vocation.getProspect());
			//行业收入
			map.put("industry_income", GetCommonUser.getJson(JSONArray.fromObject(jsonArray.get(0)), request));
			//地区收入
			map.put("regional_income", GetCommonUser.getJson(JSONArray.fromObject(jsonArray.get(1)), request));
		} catch (Exception e) {
			logger.error("模块： 职业库  操作：查看职业信息其他详情异常    状态：FAIL!" + e);
		}
		return new ResponseResult<>(ResponseResult.STATE_OK,Constants.RESULT_MESSAGE_SUCCESS,map);
	}

	@Override
	public ResponseResult<Map<String, Object>> getVocationList(String where, Integer offset, Integer countPerPage, HttpServletRequest request) {
		try {
			Map<String,Object> resultMap = new HashMap<>();
			//职业
			List<Vocation> vocationList = vocationMapper.select(StringUtils.isEmpty(where) ? null : where, null, offset == null ? 0 : offset, countPerPage == null ? 5 : countPerPage);
			Integer vocationCount = vocationMapper.selectCount(StringUtils.isEmpty(where) ? null : where);
			resultMap.put("vocationList", vocationList);
			resultMap.put("vocationCount", vocationCount);
			return new ResponseResult<>(ResponseResult.STATE_OK,Constants.RESULT_MESSAGE_SUCCESS,resultMap);
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：搜索框搜索职业信息异常   错误信息: " + e);
			return new ResponseResult<>(ResponseResult.ERR,Constants.RESULT_MESSAGE_FAIL);
		}
	}

	

}
