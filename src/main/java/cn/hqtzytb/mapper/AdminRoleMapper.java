package cn.hqtzytb.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import cn.hqtzytb.entity.AdminRole;

public interface AdminRoleMapper
{
	Integer insert(AdminRole role);
	Integer update(AdminRole role);
	Integer delete(AdminRole role);
	List<AdminRole> select(
			@Param("where")String where,
			@Param("orderBy")String orderBy,
			@Param("offset")Integer offset,
			@Param("countPerPage")Integer countPerPage);
}
