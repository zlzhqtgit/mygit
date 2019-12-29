package cn.hqtzytb.service;

import javax.servlet.http.HttpServletRequest;

/**
 * @ClassName: ICourseService
 * @Description: 在线课程接口
 * @Author: WuPeiLong
 * @Date: 2019年12月28日
 * @Copyright:好前途教育
 * @Version V1.0
 */
public interface ICourseService {

	/**
	 * 展现在线课程首页
	 * @param request
	 * @return
	 */
	String showOnlineCourseIndex(HttpServletRequest request);

	/**
	 * 进入查看更多课程页
	 * @param request
	 * @return
	 */
	String showMoreOnlineCourse(HttpServletRequest request);

	/**
	 * 
	 * @param videoParam
	 * @param request
	 * @return
	 */
	String showVideoPage(String videoParam, HttpServletRequest request);

}
