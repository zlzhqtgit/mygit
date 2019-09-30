package cn.hqtzytb.service;

import java.util.List;
import cn.hqtzytb.entity.Enrollment;



public interface IEnrollmentServer
{
	List<Enrollment> getMajor(String includeMajor,String eProvince);		
}
