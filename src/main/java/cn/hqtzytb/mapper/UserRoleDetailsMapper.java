package cn.hqtzytb.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import cn.hqtzytb.entity.UserRoleDetails;



public interface UserRoleDetailsMapper
{
	Integer insert(UserRoleDetails userRoleDetails);
	Integer update(UserRoleDetails userRoleDetails);
	Integer delete(UserRoleDetails userRoleDetails);
	List<UserRoleDetails> select(
			@Param("where")String where,
			@Param("orderBy")String orderBy,
			@Param("offset")Integer offset,
			@Param("countPerPage")Integer countPerPage);
	Integer updatePwd(UserRoleDetails userRoleDetails);	
}
