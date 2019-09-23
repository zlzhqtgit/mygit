package cn.hqtzytb.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import cn.hqtzytb.entity.AdminRole;
import cn.hqtzytb.mapper.AdminRoleMapper;



@Service
public class AdminRoleServer implements IAdminRoleServer
{
	@Autowired
	public AdminRoleMapper adminRoleMapper;

	public AdminRole insert(AdminRole role)
	{
		adminRoleMapper.insert(role);
		return role;
	}

	public Integer update(AdminRole role)
	{
		
		return adminRoleMapper.update(role);
	}

	public Integer delete(AdminRole role)
	{
		
		return adminRoleMapper.delete(role);
	}

	
	public List<AdminRole> getAdminRoleAll() {		
		return adminRoleMapper.select(null, null, null, null);
	}
	
	public List<AdminRole> getAdminRoleByid(Integer roleId) {
		String where="role_id="+roleId;
		return adminRoleMapper.select(where, null, null, null);
	}
	
	public List<AdminRole> getAdminRoleByName(String roleName) {
		String where="role_name='"+roleName+"'";
		return adminRoleMapper.select(where, null, null, null);
	}
	
	
}
