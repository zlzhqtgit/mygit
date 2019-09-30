package cn.hqtzytb.service;

import java.util.List;
import cn.hqtzytb.entity.Vocation;


public interface IVocationServer
{

	List<Vocation> getVocationByCode(String personalityCode);
	List<Vocation> getLargeClassByPCode(String personalityCode);
	List<Vocation> getVocationById(String vocationId);
	
	
}
