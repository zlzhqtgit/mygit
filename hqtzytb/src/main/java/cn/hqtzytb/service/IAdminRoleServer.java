package cn.hqtzytb.service;

import java.util.List;
import cn.hqtzytb.entity.AdminRole;

public interface IAdminRoleServer
{
	AdminRole insert(AdminRole adminRole);
	Integer update(AdminRole adminRole);
	Integer delete(AdminRole adminRole);
	List<AdminRole> getAdminRoleAll();
	List<AdminRole> getAdminRoleByid(Integer roleId);
	List<AdminRole> getAdminRoleByName(String roleName);
}
