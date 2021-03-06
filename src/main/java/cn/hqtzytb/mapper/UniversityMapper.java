package cn.hqtzytb.mapper;

import cn.hqtzytb.entity.University;
import cn.hqtzytb.entity.UniversityRelation;
import cn.hqtzytb.entity.UniversityAdmission;
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
    List<University> selectUniversityList(@Param("where")String where,
                                      @Param("orderBy")String orderBy,
                                      @Param("offset")Integer offset,
                                      @Param("countPerPage")Integer countPerPage);
    
    List<University> selectUniversityList2(@Param("where")String where,
            @Param("orderBy")String orderBy,
            @Param("offset")Integer offset,
            @Param("countPerPage")Integer countPerPage);
	Integer selectUniversityListCount2(@Param("where") String where);


    Integer insertUniversityRelation(UniversityRelation university);
    Integer updateUniversityRelation(UniversityRelation university);
    Integer deleteUniversityRelation(UniversityRelation university);
    List<UniversityRelation> selectUniversityRelationList(@Param("where")String where,
                                      @Param("orderBy")String orderBy,
                                      @Param("offset")Integer offset,
                                      @Param("countPerPage")Integer countPerPage);

    /**
     * 获得院校省份信息
     * @return
     */
    List<String> selectUniversityProvince();
    
    Integer insertUniversityAdmission(UniversityAdmission university);
    Integer updateUniversityAdmission(UniversityAdmission university);
    Integer deleteUniversityAdmission(UniversityAdmission university);
    List<UniversityAdmission> selectUniversityAdmissionList(@Param("where")String where,
                                      @Param("orderBy")String orderBy,
                                      @Param("offset")Integer offset,
                                      @Param("countPerPage")Integer countPerPage);


}
