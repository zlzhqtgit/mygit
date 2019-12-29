package cn.hqtzytb.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.hqtzytb.entity.TaskDetails;



public interface TaskMapper{
	
	/**
	 * 修改用户任务状态
	 * @param taskDetails
	 * @return
	 */
	Integer updateTaskDetails(TaskDetails taskDetails);		
	
	/**
	 * 查询用户任务详情
	 * @param where
	 * @param orderBy
	 * @param offset
	 * @param countPerPage
	 * @return
	 */
	List<TaskDetails> selectTaskDetails(@Param("where") String where, 
										@Param("orderBy") String orderBy,
										@Param("offset") Integer offset, 
										@Param("countPerPage") Integer countPerPage);
	
}
