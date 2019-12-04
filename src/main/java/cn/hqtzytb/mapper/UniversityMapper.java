package cn.hqtzytb.mapper;

import cn.hqtzytb.entity.University;
import cn.hqtzytb.entity.UniversityRelation;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @ClassName: UniversityMapper
 * @Description: TODO
 * @Author: WuPeiLong
 * @Date: 2019年12月03日
 * @Copyright:好前途教育
 * @Version V1.0
 */
public interface UniversityMapper {

    Integer insertUniversity(University university);
    Integer updateUniversity(University university);
    Integer deleteUniversity(University university);
    List<University> selectUniversityById(@Param("where")String where,
                                      @Param("orderBy")String orderBy,
                                      @Param("offset")Integer offset,
                                      @Param("countPerPage")Integer countPerPage);


    Integer insertUniversityRelation(UniversityRelation university);
    Integer updateUniversityRelation(UniversityRelation university);
    Integer deleteUniversityRelation(UniversityRelation university);
    List<UniversityRelation> selectUniversityRelation(@Param("where")String where,
                                      @Param("orderBy")String orderBy,
                                      @Param("offset")Integer offset,
                                      @Param("countPerPage")Integer countPerPage);
}
