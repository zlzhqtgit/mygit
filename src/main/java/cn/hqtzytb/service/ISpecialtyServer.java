package cn.hqtzytb.service;

import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.ui.ModelMap;

import cn.hqtzytb.entity.Education;
import cn.hqtzytb.entity.ResponseResult;
import cn.hqtzytb.entity.Specialty;
import cn.hqtzytb.entity.University;



public interface ISpecialtyServer{

	List<Specialty> getSpecialtyByPCode(String personalityCode);
	List<Specialty> getLargeClassByPCode(String personalityCode);
	List<Specialty> getLargeClassByvocation(String where);
	List<Specialty> getSpecialtyById(String specialtyId);
	List<Specialty> getSpecialtyByvocation(String where);
	ResponseResult<List<Education>> getSpecialtyList(String where, Integer offset, Integer countPerPage, String type, HttpServletRequest request);
	String getSpecialtySearchIndex(ModelMap map, HttpServletRequest request);
	String getSpecialtyDetail(String specialtyId, HttpServletRequest request, ModelMap map);
	ResponseResult<List<University>> getSpecialtySchool(String specialtyId, String er_year, String er_province, String sch_province, HttpServletRequest request);
	
	/**
	 * 分页专业查询
	 * @param where
	 * @param offset
	 * @param countPerPage
	 * @param request
	 * @return
	 */
	ResponseResult<Map<String, Object>> getSpecialtyList2(String where, Integer offset, Integer countPerPage, HttpServletRequest request);
}
