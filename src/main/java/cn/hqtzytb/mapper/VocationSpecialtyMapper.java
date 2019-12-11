package cn.hqtzytb.mapper;

import cn.hqtzytb.entity.Specialty;



/**
 * @ClassName: VocationSpecialtyMapper
 * @Description: 专业与职业关系数据信息自定义Mapper
 * @author: wuPeiLong
 * @date: 2019年11月26日
 * @Copyright:好前途教育
 * @version V1.0
 */
public interface VocationSpecialtyMapper {
	/**
	 * 新增专业与职业关系数据信息
	 * @param specialty
	 * @return
	 */
	Integer insertVocationSpecialty(Specialty specialty);

	/**
	 * 更新专业与职业关系数据信息
	 * @param specialty
	 * @return
	 */
	Integer updateVocationSpecialtyById(Specialty specialty);

	/**
	 * 删除专业与职业关系数据信息
	 * @param vsId
	 * @return
	 */
	Integer deleteVocationSpecialtyById(Integer vsId);

}
