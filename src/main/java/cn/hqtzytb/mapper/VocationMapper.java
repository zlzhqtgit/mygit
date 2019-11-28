package cn.hqtzytb.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import cn.hqtzytb.entity.Vocation;


/**
 * @Title: XgkcpMapper.java
 * @Package cn.hqtzytb.mapper
 * @Description:职业数据信息自定义Mapper
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


	/**
	 * 新增职业数据信息
	 * @param specialty
	 * @return
	 */
	Integer insertVocation(Vocation specialty);

	/**
	 * 更新职业数据信息
	 * @param specialty
	 * @return
	 */
	Integer updateVocationById(Vocation specialty);

	/**
	 * 删除职业数据信息
	 * @param vId
	 * @return
	 */
	Integer deleteVocationById(Integer vId);

	/**
	 * 查询职业数据信息
	 * 备注:[offset-跳过计数,pageSize-每页计数]
	 * @param paramMap
	 * @return
	 */
	List<Vocation> selectVocationListByMap(Map<String, Object> paramMap);
}
