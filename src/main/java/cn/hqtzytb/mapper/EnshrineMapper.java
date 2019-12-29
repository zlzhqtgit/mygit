package cn.hqtzytb.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import cn.hqtzytb.entity.Enshrine;


/**
 * @ClassName: EnshrineMapper
 * @Description: 用户收藏信息表Mapper
 * @author: wuPeiLong
 * @date: 2019年12月30日
 * @Copyright:好前途教育
 * @version V1.0
 */
public interface EnshrineMapper {
	
	Integer insert(Enshrine record);
    Integer deleteById(Integer eId);
    Integer update(Enshrine record);
    List<Enshrine> select(@Param("where")String where,
		            @Param("orderBy")String orderBy,
		            @Param("offset")Integer offset,
		            @Param("countPerPage")Integer countPerPage);
    Integer selectCount(@Param("where") String where);
    

    
}