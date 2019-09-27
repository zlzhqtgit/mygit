package cn.hqtzytb.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import cn.hqtzytb.entity.UserFeature;




/**
* @Title: XgkcpMapper.java
* @Package cn.hqtzytb.mapper
* @Description:(新高考测评持久层接口)
* @author: ZhouLingZhang
* @date 2019年9月5日
* @Copyright:好前途教育
* @version V1.0
*/
public interface UserFeatureMapper {
	Integer insert(UserFeature userFeature);
	Integer update(UserFeature userFeature);
	List<UserFeature> select(
			@Param("where")String where,
			@Param("orderBy")String orderBy,
			@Param("offset")Integer offset,
			@Param("countPerPage")Integer countPerPage);

}
