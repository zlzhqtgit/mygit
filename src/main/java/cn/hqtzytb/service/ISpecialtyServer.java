package cn.hqtzytb.service;

import java.util.List;
import cn.hqtzytb.entity.Specialty;


public interface ISpecialtyServer
{

	List<Specialty> getSpecialtyByPCode(String personalityCode);
	List<Specialty> getLargeClassByPCode(String personalityCode);
	
}
