package cn.hqtzytb.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import cn.hqtzytb.entity.UserResultReport;

/**
 * @ClassName: UserResultReport
 * @Description: 用户选科报告信息Mapper
 * @author: wuPeiLong
 * @date: 2019年12月14日
 * @Copyright:好前途教育
 * @version V1.0
 */
public interface UserResultReportMapper {
	Integer insert(UserResultReport userResultReport);
	Integer update(UserResultReport userResultReport);
	Integer deleteById(String id);
	List<UserResultReport> select(
			@Param("where")String where,
			@Param("orderBy")String orderBy,
			@Param("offset")Integer offset,
			@Param("countPerPage")Integer countPerPage);
}
