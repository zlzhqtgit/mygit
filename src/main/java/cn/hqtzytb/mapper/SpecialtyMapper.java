package cn.hqtzytb.mapper;

import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import cn.hqtzytb.entity.Specialty;


/**
 * @Title: XgkcpMapper.java
 * @Package cn.hqtzytb.mapper
 * @Description:(新高考获取测评报告持久层接口)
 * @author: ZhouLingZhang
 * @date 2019年9月5日
 * @Copyright:好前途教育
 * @version V1.0
 */
public interface SpecialtyMapper {
	List<Specialty> select(@Param("where") String where, @Param("orderBy") String orderBy,
			@Param("offset") Integer offset, @Param("countPerPage") Integer countPerPage);
	List<Specialty> selectvoction(@Param("where") String where, @Param("orderBy") String orderBy,
			@Param("offset") Integer offset, @Param("countPerPage") Integer countPerPage);
	List<Specialty> selectLargeClass(@Param("where") String where, @Param("orderBy") String orderBy,
		@Param("offset") Integer offset, @Param("countPerPage") Integer countPerPage);
	List<Specialty> selectId(@Param("where") String where, @Param("orderBy") String orderBy,
			@Param("offset") Integer offset, @Param("countPerPage") Integer countPerPage);
	List<Specialty> selectLargeClassByvocation(@Param("where") String where, @Param("orderBy") String orderBy,
			@Param("offset") Integer offset, @Param("countPerPage") Integer countPerPage);

	/**
	 * 新增专业数据信息
	 * @param specialty
	 * @return
	 */
	Integer insertSpecialty(Specialty specialty);

	/**
	 * 更新专业数据信息
	 * @param specialty
	 * @return
	 */
	Integer updateSpecialtyById(Specialty specialty);

	/**
	 * 删除专业数据信息
	 * @param id
	 * @return
	 */
	Integer deleteSpecialtyById(Integer id);

	/**
	 * 查询专业数据信息
	 * 备注:[offset-跳过计数,pageSize-每页计数]
	 * @param paramMap
	 * @return
	 */
	List<Specialty> selectSpecialtyListByMap(Map<String,Object> paramMap);
}
