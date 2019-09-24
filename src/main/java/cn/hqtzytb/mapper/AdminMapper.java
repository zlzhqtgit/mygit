package cn.hqtzytb.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import cn.hqtzytb.entity.Admin;


public interface AdminMapper
{
	Integer insert(Admin admin);
	Integer update(Admin admin);
	Integer delete(Admin admin);
	List<Admin> select(
			@Param("where")String where,
			@Param("orderBy")String orderBy,
			@Param("offset")Integer offset,
			@Param("countPerPage")Integer countPerPage);
	Integer updatePwd(Admin admin);
}
