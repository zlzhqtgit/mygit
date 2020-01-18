package cn.hqtzytb.service;

import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.ui.ModelMap;
import cn.hqtzytb.entity.Enrollment;
import cn.hqtzytb.entity.ResponseResult;
import cn.hqtzytb.entity.Specialty;
import cn.hqtzytb.entity.Vocation;

/**
 * @ClassName: IXgkxkService
 * @Description: 选科业务实现接口
 * @Author: WuPeiLong
 * @Date: 2019年12月25日
 * @Copyright:好前途教育
 * @Version V1.0
 */
public interface IXgkxkService {

	/**
	 * 进入选科指导页面
	 * @param map
	 * @param request
	 * @param response
	 * @return
	 */
	String showhqtXgkGuideSelect(Integer taskId,ModelMap map, HttpServletRequest request, HttpServletResponse response);

	/**
	 * 依据职业大类查询职业详情清单
	 * @param industryName
	 * @param request
	 * @return
	 */
	ResponseResult<Map<String,Object>> getVocationList(String industryName, HttpServletRequest request);

	/**
	 * 依据职业id查询相关专业信息
	 * @param vocationId
	 * @param request
	 * @return
	 */
	ResponseResult<List<Specialty>> getSpecialtyList(String vocationId, HttpServletRequest request);

	/**
	 * 判断用户是否能继续选科
	 * @param request
	 * @return
	 */
	ResponseResult<Void> getPickReport(HttpServletRequest request);

	/**
	 * 进入选科报告数据分析
	 * @param specialtyId
	 * @param specialtyId 
	 * @param request
	 * @return
	 */
	String getGenerateReport(String province, String specialtyId, HttpServletRequest request) throws UnsupportedEncodingException ;

	/**
	 * 新增选科组合报告
	 * @param result
	 * @param request
	 * @return
	 */
	ResponseResult<Void> addReport(String result, HttpServletRequest request);

	/**
	 * 进入自定义选科指导首页
	 * @param map
	 * @param request
	 * @param response
	 * @return
	 */
	String showhqtCustomise(ModelMap map, HttpServletRequest request, HttpServletResponse response);

	/**
	 * 自定义选科报告页面简介
	 * @param map
	 * @param str
	 * @param request
	 * @param response
	 * @return
	 */
	String showhqtCustomisereport(ModelMap map, String str, HttpServletRequest request, HttpServletResponse response);

	/**
	 * 测评选科报告页面
	 * @param personalityCode
	 * @param request
	 * @param response
	 * @return
	 */
	String showhqtCpfxselectreportone(String personalityCode, HttpServletRequest request, HttpServletResponse response);

	/**
	 * 测评选科报告
	 * @param request
	 * @return
	 */
	ResponseResult<Void> handleCpXk(HttpServletRequest request);

	/**
	 * 查询选科各地要求
	 * @param map
	 * @param includeMajor
	 * @param request
	 * @param response
	 * @return
	 */
	String showhqtCpEnrollment(ModelMap map, String includeMajor, HttpServletRequest request, HttpServletResponse response);

	/**
	 * 专业详细信息页面
	 * @param map
	 * @param specialtyId
	 * @param request
	 * @param response
	 * @return
	 */
	String showhqtCpSpecialty(ModelMap map, String specialtyId, HttpServletRequest request, HttpServletResponse response);

	/**
	 * 进入测评选科报告页面
	 * @param map
	 * @param vocationId
	 * @param request
	 * @param response
	 * @return
	 */
	String showhqtCpVocation(ModelMap map, String vocationId, HttpServletRequest request, HttpServletResponse response);

	/**
	 * 获取招生信息 
	 * @param includeMajor
	 * @param eProvince
	 * @param request
	 * @return
	 */
	ResponseResult<List<Enrollment>> handlezsyq(String includeMajor, String eProvince, HttpServletRequest request);
	
	
}
