package cn.hqtzytb.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import cn.hqtzytb.entity.EnrollmentRequirements;


/**
 * @ClassName: EnrollmentRequirementsMapper
 * @Description: 当地招生政策要求Mapper
 * @author: wuPeiLong
 * @date: 2019年12月16日
 * @Copyright:好前途教育
 * @version V1.0
 */
public interface EnrollmentRequirementsMapper {
    int deleteById(Integer eId);
    Integer insert(EnrollmentRequirements enrollmentRequirements);
	Integer update(EnrollmentRequirements enrollmentRequirements);
	List<EnrollmentRequirements> select(
			@Param("where")String where,
			@Param("orderBy")String orderBy,
			@Param("offset")Integer offset,
			@Param("countPerPage")Integer countPerPage);
}