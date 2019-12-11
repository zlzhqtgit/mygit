package cn.hqtzytb.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import cn.hqtzytb.entity.UserRole;
import cn.hqtzytb.mapper.UserRoleMapper;



@Service
public class UserRoleServer implements IUserRoleServer
{
	@Autowired
	public UserRoleMapper userRoleMapper;

	
	@Override
	public List<UserRole> getUserRoleAll() {
		return userRoleMapper.select(null, null, null, null);
	}	
}
