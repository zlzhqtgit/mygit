package cn.hqtzytb.service;

import java.util.List;
import cn.hqtzytb.entity.Specialty;


public interface ISpecialtyServer
{

	List<Specialty> getSpecialtyByPCode(String personalityCode);
	List<Specialty> getLargeClassByPCode(String personalityCode);
	List<Specialty> getLargeClassByvocation(String where);
	List<Specialty> getSpecialtyById(String specialtyId);
	List<Specialty> getSpecialtyByvocation(String where);
	
}
