package cn.hqtzytb.mapper;

import cn.hqtzytb.entity.Specialty;
import java.util.List;
import java.util.Map;


/**
 * @ClassName: PersonalityMapper
 * @Description: 认知测评结果数据信息自定义Mapper
 * @author: wuPeiLong
 * @date: 2019年11月26日
 * @Copyright:好前途教育
 * @version V1.0
 */
public interface PersonalityMapper {
	/**
	 * 新增认知测评结果数据信息
	 * @param specialty
	 * @return
	 */
	Integer insertPersonality(Specialty specialty);

	/**
	 * 更新认知测评结果数据信息
	 * @param specialty
	 * @return
	 */
	Integer updatePersonalityById(Specialty specialty);

	/**
	 * 删除认知测评结果数据信息
	 * @param id
	 * @return
	 */
	Integer deletePersonalityById(Integer id);

	/**
     * 查询认知测评结果数据信息
	 * 备注:[offset-跳过计数,pageSize-每页计数]
	 * @param paramMap
     * @return
     */
	List<Specialty> selectPersonalityListByMap(Map<String, Object> paramMap);
}
