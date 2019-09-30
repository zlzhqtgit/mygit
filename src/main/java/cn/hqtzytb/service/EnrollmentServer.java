package cn.hqtzytb.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import cn.hqtzytb.entity.Enrollment;
import cn.hqtzytb.mapper.EnrollmentMapper;




/**
* @Title: EnrollmentServer.java
* @Package cn.hqtzytb.service
* @Description:(各地招生要求)
* @author: ZhouLingZhang
* @date 2019年9月27日
* @Copyright:好前途教育
* @version V1.0
 */
@Service
public class EnrollmentServer implements IEnrollmentServer {
	
	@Autowired
	public EnrollmentMapper enrollmentMapper;

	
	@Override
	public List<Enrollment> getMajor(String includeMajor, String eProvince) {
		String where="(enrollment_major LIKE '%" +includeMajor+ "%' or include_major LIKE '%"
				+ includeMajor + "%') AND e_province='"+eProvince+"'";
		return enrollmentMapper.select(where, null, null, null);
	}

	

	

}
