package cn.hqtzytb.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import cn.hqtzytb.entity.Specialty;
import cn.hqtzytb.mapper.SpecialtyMapper;



/**
* @Title: UserFeatureServerImpl.java
* @Package cn.hqtzytb.service
* @Description:(用户特征业务层实现类)
* @author: ZhouLingZhang
* @date 2019年9月27日
* @Copyright:好前途教育
* @version V1.0
 */
@Service
public class SpecialtyServerImpl implements ISpecialtyServer {
	
	@Autowired
	public SpecialtyMapper specialtyMapper;

	@Override
	public List<Specialty> getSpecialtyByPCode(String personalityCode) {
		String where="e.personality_id='"+personalityCode+"'";
		return specialtyMapper.select(where, null, null, null);
	}
	@Override
	public List<Specialty> getLargeClassByPCode(String personalityCode) {
		String where="e.personality_id='"+personalityCode+"' LIMIT 6";
		return specialtyMapper.selectLargeClass(where, null, null, null);
	}
	
	@Override
	public List<Specialty> getSpecialtyById(String specialtyId) {
		String where="specialty_id='"+specialtyId+"'";
		return specialtyMapper.selectId(where, null, null, null);
	}
	
	

}