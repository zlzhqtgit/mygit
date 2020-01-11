package cn.hqtzytb.service;

import cn.hqtzytb.entity.ResponseResult;
import cn.hqtzytb.entity.UniversityRelation;

import org.springframework.ui.ModelMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @ClassName: IUniversityService
 * @Description: TODO
 * @Author: WuPeiLong
 * @Date: 2019年12月03日
 * @Copyright:好前途教育
 * @Version V1.0
 */
public interface IUniversityService {

    ResponseResult<Map<String, Object>> getUniversityList(String where, Integer offset, Integer countPerPage, HttpServletRequest request);

    ResponseResult<List<String>> getProvince();

	String getUniversityInfo(String universityCode, ModelMap map, HttpServletRequest request);

	ResponseResult<Void> addAadmissionBrowse(String uaId, String type, HttpServletRequest request);

	String showUniversitySearch(HttpServletRequest request, HttpServletResponse response);

	ResponseResult<List<UniversityRelation>> getUniversityRelationList(String universitiesCode, String urProvince, String subjectType,String urYear, String admissionBatch ,String type, HttpServletRequest request);

	
}
