package cn.hqtzytb.service;

import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import cn.hqtzytb.entity.ResponseResult;
import cn.hqtzytb.entity.Vocation;


public interface IVocationServer{

	List<Vocation> getVocationByCode(String personalityCode);
	List<Vocation> getLargeClassByPCode(String personalityCode);
	List<Vocation> getVocationById(String vocationId);
	List<Vocation> getVocationByIdtwo(String where);
	
	String getVocationIndex();
	ResponseResult<List<Vocation>> getVocationQuery(String industry, String education);
	String getVocationDetail(String vocationId, HttpServletRequest request);
	ResponseResult<Map<String, Object>> getVocationOtherDetail(String vocationId, HttpServletRequest request);
	
	
}
