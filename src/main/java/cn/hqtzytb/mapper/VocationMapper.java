package cn.hqtzytb.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import cn.hqtzytb.entity.Vocation;


/**
 * @Title: XgkcpMapper.java
 * @Package cn.hqtzytb.mapper
 * @Description:(新高考获取测评报告持久层接口)
 * @author: ZhouLingZhang
 * @date 2019年9月5日
 * @Copyright:好前途教育
 * @version V1.0
 */
public interface VocationMapper {
	List<Vocation> select(@Param("where") String where, @Param("orderBy") String orderBy,
			@Param("offset") Integer offset, @Param("countPerPage") Integer countPerPage);
	List<Vocation> selectLargeClass(@Param("where") String where, @Param("orderBy") String orderBy,
		@Param("offset") Integer offset, @Param("countPerPage") Integer countPerPage);	
	List<Vocation> selectId(@Param("where") String where, @Param("orderBy") String orderBy,
			@Param("offset") Integer offset, @Param("countPerPage") Integer countPerPage);
}
