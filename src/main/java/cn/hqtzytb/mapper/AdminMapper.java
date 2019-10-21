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
	/**
	 * 查询单个用户(用于登陆验证)
	 * @param userName 用户名
	 * @param password 密码
	 * @return User
	 */
	public Admin queryAdmin(@Param("username")String username);
}
