package cn.hqtzytb.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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

import cn.hqtzytb.entity.Enshrine;
import cn.hqtzytb.entity.ResponseResult;
import cn.hqtzytb.entity.University;
import cn.hqtzytb.entity.UniversityAdmission;
import cn.hqtzytb.entity.UniversityRelation;
import cn.hqtzytb.mapper.EnshrineMapper;
import cn.hqtzytb.mapper.UniversityMapper;
import cn.hqtzytb.service.IUniversityService;
import cn.hqtzytb.utils.Constants;
import cn.hqtzytb.utils.GetCommonUser;

/**
 * @ClassName: IUniversityServiceImpl
 * @Description: TODO
 * @Author: WuPeiLong
 * @Date: 2019年12月03日
 * @Copyright:好前途教育
 * @Version V1.0
 */
@Service
public class IUniversityServiceImpl implements IUniversityService {
	private static final Logger logger = LogManager.getLogger(IUniversityServiceImpl.class.getName());
	@Autowired
	private UniversityMapper universityMapper;
	@Autowired
	private EnshrineMapper enshrineMapper;

	@Override
	public ResponseResult<Map<String, Object>> getUniversityList(String where, Integer offset, Integer countPerPage,
			HttpServletRequest request) {
		Map<String, Object> resultMap = new HashMap<>();
		try {
			Subject subject = SecurityUtils.getSubject();
			Session session = subject.getSession();
			session.setAttribute("COLLEGE_PHOTO_PREFIX", Constants.COLLEGE_PHOTO_PREFIX);
			List<University> universityList = universityMapper.selectUniversityList2(
					StringUtils.isEmpty(where) ? null : where, " ur.ur_year DESC ", offset == null ? 0 : offset,
					countPerPage == null ? 5 : countPerPage);
			Integer count = universityMapper.selectUniversityListCount2(StringUtils.isEmpty(where) ? null : where);
			if (subject.isAuthenticated()) {// 若用户已登录
				List<Enshrine> enshrineList = enshrineMapper.select(" uid = '" + session.getAttribute("uid") + "' AND e_type = '0' ", null, null, null);
				for (University university : universityList) {
					university.setEnshrineCount(enshrineMapper.selectCount("e_code ='" + university.getUniversitiesCode() + "' ") + 80);//学校收藏数
					for(Enshrine enshrine : enshrineList){
						if(enshrine.geteCode().equals(university.getUniversitiesCode())){
							university.seteId(enshrine.geteId());
						}
					}
				}
			} else {
				for (University university : universityList) {
					university.setEnshrineCount(enshrineMapper.selectCount("e_code ='" + university.getUniversitiesCode() + "' ") + 80);//学校收藏数					
				}
			}
			resultMap.put("list", universityList);
			resultMap.put("count", count);
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作； 查询院校信息  错误信息：" + e);
			return new ResponseResult<>(Constants.RESULT_CODE_FAIL, Constants.RESULT_MESSAGE_FAIL);
		}
		return new ResponseResult<>(Constants.RESULT_CODE_SUCCESS, Constants.RESULT_MESSAGE_SUCCESS, resultMap);
	}

	@Override
	public ResponseResult<List<String>> getProvince() {
		return new ResponseResult<List<String>>(Constants.RESULT_CODE_SUCCESS, Constants.RESULT_MESSAGE_SUCCESS)
				.setData(universityMapper.selectUniversityProvince());
	}

	@Override
	public String getUniversityInfo(String universityCode, ModelMap map, HttpServletRequest request) {
		try {
			if (StringUtils.isNotEmpty(universityCode)) {
				List<University> universityList = universityMapper.selectUniversityList(" u.universities_code = '" + universityCode + "' ", " ur.ur_year DESC ", null, null);
				if (!universityList.isEmpty()) {
					University university = universityList.get(0);
					Subject subject = SecurityUtils.getSubject();
					if (subject.isAuthenticated()) {
						Integer uid = (Integer)SecurityUtils.getSubject().getSession().getAttribute("uid");
						List<Enshrine> enshrineList = enshrineMapper.select(" uid = '" + uid + "' AND e_code = '" + university.getUniversitiesCode() + "'", null, null, null);
						if (!enshrineList.isEmpty()) {
							university.seteId(enshrineList.get(0).geteId());
						}
					}					
					Set<String> proviceOption = new HashSet<>();
					Set<String> typeOption = new HashSet<>();
					Set<String> yearOption = new HashSet<>();
					Set<String> batchOption = new HashSet<>();
					for (UniversityRelation relation : university.getUniversRelationList()) {
						proviceOption.add(relation.getUrProvince());
						typeOption.add(relation.getSubjectType());
						yearOption.add(relation.getUrYear());
						batchOption.add(relation.getAdmissionBatch());
						relation.setCollegeScoreLineList(GetCommonUser.getList(relation.getCollegeScoreLine(), request));// 院校分数线
						relation.setEnrollmentPlanList(GetCommonUser.getJson(relation.getEnrollmentPlan(), request));// 招生计划
						System.err.println("111: " + relation.getProfessionalAdmissionScore());
						relation.setProfessionalAdmissionScoreList(GetCommonUser.getJson(relation.getProfessionalAdmissionScore(), request));// 专业录取分数线
						System.err.println("222: " + GetCommonUser.getJson(relation.getProfessionalAdmissionScore(), request));
					}
					map.addAttribute("COLLEGE_PHOTO_PREFIX", Constants.COLLEGE_PHOTO_PREFIX);
					map.addAttribute("proviceOption", proviceOption);// 省份集合
					map.addAttribute("typeOption", typeOption);// 录取类型集合
					map.addAttribute("yearOption", yearOption);// 年份集合
					map.addAttribute("batchOption", batchOption);// 录取批次集合
					map.addAttribute("school", university);// 学校信息
					map.addAttribute("images", StringUtils.isEmpty(university.getUniversitiesLife()) ? null : university.getUniversitiesLife().split(";"));// 院校生活图片
					map.addAttribute("teachingResearch", GetCommonUser.getJson(university.getTeachingResearch(), request));// 教学研究
					map.addAttribute("teaching_research", JSON.toJSONString(GetCommonUser.getJson(university.getTeachingResearch(), request)));// 教学研究
					map.addAttribute("coreSpecialty", GetCommonUser.getJson(university.getCoreSpecialty(), request));// 重点专业
					List<List<List<String>>> coreSubjectList = new ArrayList<List<List<String>>>();
					List<List<String>> subjectList = GetCommonUser.getJson(university.getCoreSubject(), request);
					for (int i = 0; i < subjectList.size(); i++) {
						List<List<String>> list = GetCommonUser.getJson(subjectList.get(i).toString(), request);
						coreSubjectList.add(i, list);
					}
					map.addAttribute("coreSubject", coreSubjectList);// 重点学科
					List<List<List<String>>> coreLaboratoriesList = new ArrayList<List<List<String>>>();
					List<List<String>> coreList = GetCommonUser.getJson(university.getCoreLaboratoriesAndResearchCenters(), request);
					for (int i = 0; i < coreList.size(); i++) {
						List<List<String>> list = GetCommonUser.getJson(coreList.get(i).toString(), request);
						coreLaboratoriesList.add(i, list);
					}
					map.addAttribute("coreLaboratoriesList", coreLaboratoriesList);// 重点实验室及科研中心
					map.addAttribute("universityAdmissionList",JSON.toJSONString(university.getUniversityAdmissionList()));
				}
			}
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作； 查看院校详情信息   错误信息：" + e);
			return "web/xgk/xgk_error_404";
		}
		return "web/xgk/xgk_sch_info";
	}

	@Override
	public ResponseResult<Void> addAadmissionBrowse(String uaId, String type, HttpServletRequest request) {
		try {
			List<UniversityAdmission> universityAdmissionList = universityMapper
					.selectUniversityAdmissionList(" ua_id = '" + uaId + "'", null, null, null);
			if (!universityAdmissionList.isEmpty()) {
				UniversityAdmission ur = universityAdmissionList.get(0);
				if ("1".equals(type)) {// 招生简章 浏览数 +1
					ur.setBrochureBrowseCount(ur.getBrochureBrowseCount() + 1);
				} else {
					ur.setRegulationsBrowseCount(ur.getRegulationsBrowseCount() + 1);
				}
				universityMapper.updateUniversityAdmission(ur);
				return new ResponseResult<Void>(ResponseResult.STATE_OK, Constants.RESULT_MESSAGE_SUCCESS);
			}
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作； 添加招生简章/章程  错误信息：" + e);
		}
		return new ResponseResult<Void>(ResponseResult.ERR, Constants.RESULT_MESSAGE_FAIL);
	}

	@Override
	public String showUniversitySearch(HttpServletRequest request, HttpServletResponse response) {
		try {
			Session session = SecurityUtils.getSubject().getSession();
			session.setAttribute("COLLEGE_PHOTO_PREFIX", Constants.COLLEGE_PHOTO_PREFIX);
			session.setAttribute("university_province_list", universityMapper.selectUniversityProvince());
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作； 展示学院搜索页面  错误信息：" + e);
		}
		return "web/xgk/xgk_sch_search";
	}

	@Override
	public ResponseResult<List<UniversityRelation>> getUniversityRelationList(String universitiesCode, String urProvince, String subjectType,String urYear, String admissionBatch ,String type, HttpServletRequest request) {
		try {
			String where = "universities_code = '" + universitiesCode + "' ";
			if(StringUtils.isNotEmpty(urProvince)){
				where += "AND ur_province = '" + urProvince + "' ";
			}
			if (StringUtils.isNotEmpty(subjectType)) {
				where += "AND subject_type = '" + subjectType + "' ";
			}
			if (StringUtils.isNotEmpty(subjectType)) {
				where += "AND ur_year = '" + urYear + "' ";
			}
			if (StringUtils.isNotEmpty(admissionBatch)) {
				where += "AND admission_batch = '" + admissionBatch + "' ";
			}
			List<UniversityRelation> universityRelationList = universityMapper.selectUniversityRelationList(where, null, null, null);
			for (UniversityRelation ur : universityRelationList) {
				if("yxfsx".equals(type)){
					ur.setCollegeScoreLineList(GetCommonUser.getList(ur.getCollegeScoreLine(), request));
					continue;
				}
				if("zsjh".equals(type)){
					ur.setEnrollmentPlanList(GetCommonUser.getJson(ur.getEnrollmentPlan(), request));
					continue;
				}
				if("zylqfsx".equals(type)){
					ur.setProfessionalAdmissionScoreList(GetCommonUser.getJson(ur.getProfessionalAdmissionScore(), request));
					continue;
				}
			}
			return new ResponseResult<>(ResponseResult.STATE_OK,Constants.RESULT_MESSAGE_SUCCESS,universityRelationList);
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作； 展示学院搜索页面  错误信息：" + e);
			return new ResponseResult<>(ResponseResult.ERR,Constants.RESULT_MESSAGE_FAIL);
		}
	}

}
