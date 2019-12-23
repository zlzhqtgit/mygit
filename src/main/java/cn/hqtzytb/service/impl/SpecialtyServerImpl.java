package cn.hqtzytb.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import cn.hqtzytb.service.ISpecialtyServer;
import cn.hqtzytb.utils.Constants;
import cn.hqtzytb.utils.GetCommonUser;

import org.apache.commons.lang.StringUtils;
import org.apache.coyote.Request;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;

import com.alibaba.fastjson.JSON;

import cn.hqtzytb.entity.ResponseResult;
import cn.hqtzytb.entity.Specialty;
import cn.hqtzytb.entity.SpecialtyOut;
import cn.hqtzytb.entity.University;
import cn.hqtzytb.entity.UniversityRelation;
import cn.hqtzytb.mapper.EnrollmentRequirementsMapper;
import cn.hqtzytb.mapper.SpecialtyMapper;
import cn.hqtzytb.mapper.UniversityMapper;



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
	private  static final Logger logger = LogManager.getLogger(SpecialtyServerImpl.class.getName());
	@Autowired
	private SpecialtyMapper specialtyMapper;
	@Autowired
	private EnrollmentRequirementsMapper enrollmentRequirementsMapper;
	@Autowired
	private UniversityMapper universityMapper;
	
	@Override
	public List<Specialty> getSpecialtyByPCode(String personalityCode) {
		String where="e.personality_id='"+personalityCode+"'";
		return specialtyMapper.select(where, null, null, null);
	}
	@Override
	public List<Specialty> getLargeClassByPCode(String personalityCode) {
		String where="e.personality_id='"+personalityCode+"' LIMIT 6";
		return specialtyMapper.selectLargeClass(where, null, null, null);
	}
	
	@Override
	public List<Specialty> getSpecialtyById(String specialtyId) {
		String where="specialty_id='"+specialtyId+"'";
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
	public ResponseResult<Map<String,Object>> getSpecialtyList(String where, HttpServletRequest request) {
		try {
			List<Specialty> list = specialtyMapper.select(StringUtils.isEmpty(where) ? null : where ,null,null,null);
			Map<String, SpecialtyOut> bkmap = new HashMap<>();//本科类专业对应专业数量
			Map<String, SpecialtyOut> zkmap = new HashMap<>();//专科类专业对应专业数量
			List<String> bkList = new ArrayList<>();
			List<String> zkList = new ArrayList<>();
			for(Specialty sp : list){
				if ("本科".equals(sp.getSpecialtyEducation())) {
					if(bkmap.containsKey(sp.getSpecialtyMajorName())){
						SpecialtyOut out = bkmap.get(sp.getSpecialtyMajorName());
						List<Specialty> specialtyList = out.getSpecialtyList();
						specialtyList.add(sp);
						out.setCount(out.getCount() +1 ).setSpecialtyList(specialtyList);
						bkmap.put(sp.getSpecialtyMajorName(), out);
					} else {
						List<Specialty> specialtyList = new ArrayList<>();
						specialtyList.add(sp);
						SpecialtyOut out = new SpecialtyOut(1, sp.getSpecialtyMajorName(), sp.getSpecialtyDisciplines(), specialtyList);
						bkmap.put(sp.getSpecialtyMajorName(), out);
						bkList.add(sp.getSpecialtyMajorName());
					}
				} else {//专科
					if(zkmap.containsKey(sp.getSpecialtyMajorName())){
						SpecialtyOut out = zkmap.get(sp.getSpecialtyMajorName());
						List<Specialty> specialtyList = out.getSpecialtyList();
						specialtyList.add(sp);
						out.setCount(out.getCount() +1 ).setSpecialtyList(specialtyList);
						zkmap.put(sp.getSpecialtyMajorName(), out);
					} else {
						List<Specialty> specialtyList = new ArrayList<>();
						specialtyList.add(sp);
						SpecialtyOut out = new SpecialtyOut(1, sp.getSpecialtyMajorName(), sp.getSpecialtyDisciplines(), specialtyList);
						zkmap.put(sp.getSpecialtyMajorName(), out);
						zkList.add(sp.getSpecialtyMajorName());
					}
				}
			}
			Map<String,Object> resultMap = new HashMap<>();
			resultMap.put("bk",bkmap);
			resultMap.put("zk",zkmap);
			resultMap.put("bkList", bkList);
			resultMap.put("zkList", zkList);
		    return new ResponseResult<Map<String,Object>>(Constants.RESULT_CODE_SUCCESS,Constants.RESULT_MESSAGE_SUCCESS,resultMap);
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作； 查看专业列表信息   错误信息：" + e);
		}
		return new ResponseResult<>(Constants.RESULT_CODE_FAIL,Constants.RESULT_MESSAGE_FAIL);
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
			List<Specialty> specialtyList = specialtyMapper.select(" b.specialty_id = '" + specialtyId + "' ", null, null, null);
			map.addAttribute("specialty", specialtyList.get(0));
			map.addAttribute("majorCourses", specialtyList.get(0).getMajorCourses().split(";"));
			//考生生源地
			map.addAttribute("er_provinceList", enrollmentRequirementsMapper.geyProvince(specialtyId));
			map.addAttribute("er_yaerList", enrollmentRequirementsMapper.geyYear(specialtyId));
			//院校省份
			map.addAttribute("sch_provinceList", universityMapper.selectUniversityProvince());
			//就业职业方向
			map.addAttribute("employment_career_direction",JSON.toJSONString(GetCommonUser.getJson(specialtyList.get(0).getEmploymentCareerDirection(), request)));
			map.addAttribute("employment_industry_distribution", GetCommonUser.getJson(specialtyList.get(0).getEmploymentIndustryDistribution(), request));
			map.addAttribute("employment_area_distribution", GetCommonUser.getJson(specialtyList.get(0).getEmploymentAreaDistribution(), request));
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作； 查询专业详情信息   错误信息：" + e);
		}
		return "web/xgk/xgk_sch_major_info";
	}
	
	
	@Override
	public ResponseResult<List<University>> getSpecialtySchool(String specialtyId, String er_year, String er_province, String sch_province, HttpServletRequest request) {
		try{
			String where = "";
			boolean andTrue = false;//是否需要AND链接SQL
			if(StringUtils.isNotEmpty(sch_province) && !"全部".equals(sch_province)){
				where += " u.province = '" + sch_province + "' ";
				andTrue = true;
			}
			if(StringUtils.isNotEmpty(er_province)){
				if(andTrue){
					where += " AND er.e_province = '" + er_province + "' ";
				} else {
					where += " er.e_province = '" + er_province + "' ";
					andTrue = true;
				}
			}
			if (StringUtils.isNotEmpty(er_year)) {
				if(andTrue){
					where += " AND er.e_year = '" + er_year + "' ";
				} else {
					where += " er.e_year = '" + er_year + "' ";
					andTrue = true;
				}
			}
			if (StringUtils.isNotEmpty(specialtyId)) {
				if (andTrue) {
					where += " AND LOCATE('" + specialtyId + "',include_major) ";
				} else {
					where += " LOCATE('" + specialtyId + "',include_major) ";
				}
			}
			List<University> universityList = universityMapper.selectUniversityList(where, null, null, null);
			for(University university : universityList){
	    		for(UniversityRelation relation : university.getUniversRelationList()){
	    			relation.setCollegeScoreLineList(GetCommonUser.getList(relation.getCollegeScoreLine(),request));
	    		}
	    	}
			return new ResponseResult<>(ResponseResult.STATE_OK,Constants.RESULT_MESSAGE_SUCCESS,universityList);
		}catch(Exception e){
			logger.error("访问路径：" + request.getRequestURI() + "操作； 查询专业详情信息   错误信息：" + e);
		}
		return new ResponseResult<>(ResponseResult.ERR,Constants.RESULT_MESSAGE_FAIL);
	}


}
