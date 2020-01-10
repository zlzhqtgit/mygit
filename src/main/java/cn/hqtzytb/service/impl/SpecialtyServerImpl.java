package cn.hqtzytb.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;

import com.alibaba.fastjson.JSON;

import cn.hqtzytb.entity.Disciplines;
import cn.hqtzytb.entity.Education;
import cn.hqtzytb.entity.Enshrine;
import cn.hqtzytb.entity.ResponseResult;
import cn.hqtzytb.entity.Specialty;
import cn.hqtzytb.entity.SpecialtyOut;
import cn.hqtzytb.entity.University;
import cn.hqtzytb.entity.UniversityRelation;
import cn.hqtzytb.mapper.EnrollmentRequirementsMapper;
import cn.hqtzytb.mapper.EnshrineMapper;
import cn.hqtzytb.mapper.SpecialtyMapper;
import cn.hqtzytb.mapper.UniversityMapper;
import cn.hqtzytb.service.ISpecialtyServer;
import cn.hqtzytb.utils.Constants;
import cn.hqtzytb.utils.GetCommonUser;

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
public class SpecialtyServerImpl implements ISpecialtyServer {
	private static final Logger logger = LogManager.getLogger(SpecialtyServerImpl.class.getName());
	@Autowired
	private SpecialtyMapper specialtyMapper;
	@Autowired
	private EnrollmentRequirementsMapper enrollmentRequirementsMapper;
	@Autowired
	private UniversityMapper universityMapper;
	@Autowired
	private EnshrineMapper enshrineMapper;

	@Override
	public List<Specialty> getSpecialtyByPCode(String personalityCode) {
		String where = "e.personality_id='" + personalityCode + "'";
		return specialtyMapper.select(where, null, null, null);
	}

	@Override
	public List<Specialty> getLargeClassByPCode(String personalityCode) {
		String where = "e.personality_id='" + personalityCode + "' LIMIT 6";
		return specialtyMapper.selectLargeClass(where, null, null, null);
	}

	@Override
	public List<Specialty> getSpecialtyById(String specialtyId) {
		String where = "specialty_id='" + specialtyId + "'";
		return specialtyMapper.selectId(where, null, null, null);
	}

	@Override
	public List<Specialty> getSpecialtyByvocation(String where) {
		return specialtyMapper.selectvoction(where, null, null, null);
	}

	@Override
	public List<Specialty> getLargeClassByvocation(String where) {
		return specialtyMapper.selectLargeClassByvocation(where, null, null, null);
	}

	@Override
	public ResponseResult<List<Education>> getSpecialtyList(String where, Integer offset, Integer countPerPage, String type, HttpServletRequest request) {
		try {
			List<Education> list = specialtyMapper.selectList(StringUtils.isEmpty(where) ? null : where, null, null, null);
			return new ResponseResult<>(Constants.RESULT_CODE_SUCCESS,Constants.RESULT_MESSAGE_SUCCESS,list);
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作； 查看专业列表信息   错误信息：" + e);
		}
		return new ResponseResult<>(Constants.RESULT_CODE_FAIL, Constants.RESULT_MESSAGE_FAIL);
	}

	@Override
	public String getSpecialtySearchIndex(ModelMap map, HttpServletRequest request) {
		try {
			List<Specialty> specialtyClassList = specialtyMapper.selectSpecialtyClass();
			map.addAttribute("specialtyClassList", specialtyClassList);
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作； 进入专业查询首页信息   错误信息：" + e);
		}
		return "web/xgk/xgk_sch_major";
	}

	@Override
	public String getSpecialtyDetail(String specialtyId, HttpServletRequest request, ModelMap map) {
		try {
			Subject subject = SecurityUtils.getSubject();
			if (subject.isAuthenticated()) {
				Object uid = SecurityUtils.getSubject().getSession().getAttribute("uid");
				if (uid != null) {
					List<Enshrine> enshrineList = enshrineMapper.select(" uid = '" + (Integer) uid + "' AND e_code = '" + specialtyId + "'", null, null, null);
					if (!enshrineList.isEmpty()) {
						map.addAttribute("school_like", enshrineList.get(0));
					}
				}
			}
			List<Specialty> specialtyList = specialtyMapper.select(" b.specialty_id = '" + specialtyId + "' ", null, null, null);
			map.addAttribute("specialty", specialtyList.get(0));
			map.addAttribute("majorCourses", specialtyList.get(0).getMajorCourses().split(";"));
			// 考生生源地
			/*
			 * map.addAttribute("er_provinceList",
			 * enrollmentRequirementsMapper.geyProvince(specialtyId));
			 * map.addAttribute("er_yaerList",
			 * enrollmentRequirementsMapper.geyYear(specialtyId));
			 */
			// 院校省份
			map.addAttribute("sch_provinceList", universityMapper.selectUniversityProvince());
			// 就业职业方向
			map.addAttribute("employment_career_direction", JSON
					.toJSONString(GetCommonUser.getJson(specialtyList.get(0).getEmploymentCareerDirection(), request)));
			map.addAttribute("employment_industry_distribution",
					GetCommonUser.getJson(specialtyList.get(0).getEmploymentIndustryDistribution(), request));
			map.addAttribute("employment_area_distribution",
					GetCommonUser.getJson(specialtyList.get(0).getEmploymentAreaDistribution(), request));
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作； 查询专业详情信息   错误信息：" + e);
		}
		return "web/xgk/xgk_sch_major_info";
	}

	@Override
	public ResponseResult<List<University>> getSpecialtySchool(String specialtyId, String er_year, String er_province,
			String sch_province, HttpServletRequest request) {
		try {
			List<Specialty> specialtyList = specialtyMapper.select(" b.specialty_id = '" + specialtyId + "'", null,
					null, null);
			if (!specialtyList.isEmpty()) {
				String[] splitList = specialtyList.get(0).getOpenCollege().split("、");
				String where = " u.universities_name  IN (";
				for (int i = 0; i < splitList.length; i++) {
					if (i == splitList.length - 1) {
						where += "'" + splitList[i] + "')";
					} else {
						where += "'" + splitList[i] + "',";
					}
				}
				if (StringUtils.isNotEmpty(sch_province) && !"全部".equals(sch_province)) {
					where += " AND u.province = '" + sch_province + "' ";
				}
				if (StringUtils.isNotEmpty(er_province) && !"全部".equals(er_province)) {
					where += " AND er.e_province = '" + er_province + "' ";
				}
				if (StringUtils.isNotEmpty(er_year)) {
					where += " AND er.e_year = '" + er_year + "' ";
				}
				System.out.println("where：" + where);
				List<University> universityList = universityMapper.selectUniversityList(where, null, null, null);
				Subject subject = SecurityUtils.getSubject();
				if(subject.isAuthenticated()){
					Session session = subject.getSession();
					List<Enshrine> eList = enshrineMapper.select(" uid = '" + session.getAttribute("uid") + "' AND e_type = '0' ", null, null, null);
					for (University university : universityList) {
						university.setEnshrineCount(enshrineMapper.selectCount("e_code ='" + university.getUniversitiesCode() + "' ") + 80);//学校收藏数		
						for (UniversityRelation relation : university.getUniversRelationList()) {
							relation.setCollegeScoreLineList(GetCommonUser.getList(relation.getCollegeScoreLine(), request));
						}						
						for(Enshrine e : eList){
							System.err.println("收藏ID: " + e.geteId());
							if(university.getUniversitiesCode().equals(e.geteCode())){
								university.seteId(e.geteId());//喜欢的学校
							}
						}
					}
				} else {
					for (University university : universityList) {
						university.setEnshrineCount(enshrineMapper.selectCount("e_code ='" + university.getUniversitiesCode() + "' ") + 80);//学校收藏数		
						for (UniversityRelation relation : university.getUniversRelationList()) {
							relation.setCollegeScoreLineList(GetCommonUser.getList(relation.getCollegeScoreLine(), request));
						}
					}
				}		
				System.err.println(universityList.get(0).geteId());
				SecurityUtils.getSubject().getSession().setAttribute("COLLEGE_PHOTO_PREFIX",Constants.COLLEGE_PHOTO_PREFIX);
				return new ResponseResult<>(ResponseResult.STATE_OK, Constants.RESULT_MESSAGE_SUCCESS, universityList);
			}
			return new ResponseResult<>(ResponseResult.ERR, Constants.RESULT_MESSAGE_FAIL);
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作； 查询专业详情信息   错误信息：" + e);
			return new ResponseResult<>(ResponseResult.ERR, Constants.RESULT_MESSAGE_FAIL);
		}

	}

	@Override
	public ResponseResult<Map<String, Object>> getSpecialtyList2(String where, Integer offset, Integer countPerPage,
			HttpServletRequest request) {
		try {
			Map<String, Object> resultMap = new HashMap<>();
			// 专业
			List<Specialty> specialtyList = specialtyMapper.select(StringUtils.isEmpty(where) ? null : where, null, offset == null ? 0 : offset, countPerPage == null ? 5 : countPerPage);
			Subject subject = SecurityUtils.getSubject();
			if (subject.isAuthenticated() && !specialtyList.isEmpty()) {
				Session session = subject.getSession();
				Integer uid = (Integer)session.getAttribute("uid");
				List<Enshrine> eList = enshrineMapper.select(" uid = '" + uid + "' AND e_type = '1' ", null, null, null);
				for(Specialty s : specialtyList){
					for(Enshrine e : eList){
						if(s.getSpecialtyId().equals(e.geteCode())){
							s.seteId(e.geteId());
						}
					}
				}	
			}
			Integer specialtyCount = specialtyMapper.selectCount(StringUtils.isEmpty(where) ? null : where);
			resultMap.put("specialtyList", specialtyList);
			resultMap.put("specialtyCount", specialtyCount);
			return new ResponseResult<>(ResponseResult.STATE_OK, Constants.RESULT_MESSAGE_SUCCESS, resultMap);
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：搜索框搜索专业信息异常   错误信息: " + e);
			return new ResponseResult<>(ResponseResult.ERR, Constants.RESULT_MESSAGE_FAIL);
		}
	}

}
