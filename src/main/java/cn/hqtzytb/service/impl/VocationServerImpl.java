package cn.hqtzytb.service.impl;

import java.util.List;
import cn.hqtzytb.service.IVocationServer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import cn.hqtzytb.entity.Vocation;
import cn.hqtzytb.mapper.VocationMapper;



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
public class VocationServerImpl implements IVocationServer {
	
	@Autowired
	public VocationMapper vocationMapper;

	
	@Override
	public List<Vocation> getVocationByCode(String personalityCode) {
		String where="e.personality_id='"+personalityCode+"'";
		return vocationMapper.select(where, null, null, null);
	}
	
	@Override
	public List<Vocation> getLargeClassByPCode(String personalityCode) {
		String where="e.personality_id='"+personalityCode+"' LIMIT 6";
		return vocationMapper.selectLargeClass(where, null, null, null);
	}

	
	@Override
	public List<Vocation> getVocationById(String vocationId) {
		String where="vocation_id='"+vocationId+"'";
		return vocationMapper.selectId(where, null, null, null);
	}
	@Override
	public List<Vocation> getVocationByIdtwo(String where) {
		// TODO Auto-generated method stub
		return vocationMapper.selectId(where, null, null, null);
	}

	

}
