package cn.hqtzytb.mapper;

import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import cn.hqtzytb.entity.User;


public interface UserMapper {
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
	User queryUser(@Param("phone")String phone);

	/**
	 * 依据条件查询用户信息
	 * @param paramMap
	 * @return
	 */
	List<User> selectUserListByMap(Map<String,Object> paramMap);

	/**
	 * 依据ID修改用户信息
	 * @param user
	 * @return
	 */
	Integer updateById(User user);

	/**
	 * 查询用户信息
	 * @param username
	 * @return
	 */
    User getUserByUsername(String username);
}
