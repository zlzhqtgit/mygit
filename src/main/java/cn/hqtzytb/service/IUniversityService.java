package cn.hqtzytb.service;

import cn.hqtzytb.entity.ResponseResult;
import cn.hqtzytb.entity.Specialty;
import cn.hqtzytb.entity.University;

import org.springframework.ui.ModelMap;
import org.springframework.web.multipart.MultipartFile;
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
    ResponseResult<Void> universityUploadImage(String universitiesCode, MultipartFile[] files, Integer imageType);

    ResponseResult<Map<String, Object>> getUniversityList(String where, Integer offset, Integer countPerPage, HttpServletRequest request);

    ResponseResult<Object> universityDeleteImage(String url);

    ResponseResult<List<String>> getProvince();

	String getUniversityInfo(String universityCode, ModelMap map, HttpServletRequest request);

	ResponseResult<Void> addAadmissionBrowse(String uaId, String type, HttpServletRequest request);

	String showUniversitySearch(HttpServletRequest request, HttpServletResponse response);

	
}
