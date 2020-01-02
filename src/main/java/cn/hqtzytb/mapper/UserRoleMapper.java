package cn.hqtzytb.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.hqtzytb.entity.AdminSystem;
import cn.hqtzytb.entity.Role;
import cn.hqtzytb.entity.UserRole;

public interface UserRoleMapper {
	List<UserRole> select(@Param("where") String where, @Param("orderBy") String orderBy,
			@Param("offset") Integer offset, @Param("countPerPage") Integer countPerPage);

	Role queryRoleBySystemName(@Param("sysname") String sysname);

	AdminSystem queryAdminSystemByRoleId(@Param("roleId") Integer roleId);
}
