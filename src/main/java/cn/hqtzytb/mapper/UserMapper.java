package cn.hqtzytb.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import cn.hqtzytb.entity.User;


public interface UserMapper
{
	Integer insert(User user);
	List<User> select(
			@Param("where")String where,
			@Param("orderBy")String orderBy,
			@Param("offset")Integer offset,
			@Param("countPerPage")Integer countPerPage);	
	/**
	 * 查询单个用户(用于登陆验证)
	 * @param userName 用户名
	 * @param password 密码
	 * @return User
	 */
	public User queryUser(@Param("phone")String phone);
}
