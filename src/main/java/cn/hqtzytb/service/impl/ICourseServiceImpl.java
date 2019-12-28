package cn.hqtzytb.service.impl;

import javax.servlet.http.HttpServletRequest;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Service;
import cn.hqtzytb.service.ICourseService;

/**
 * @ClassName: ICourseServiceImpl
 * @Description: 在线课程接口
 * @Author: WuPeiLong
 * @Date: 2019年12月28日
 * @Copyright:好前途教育
 * @Version V1.0
 */
@Service
public class ICourseServiceImpl implements ICourseService {
	private  static final Logger logger = LogManager.getLogger(ICourseServiceImpl.class.getName());
	@Override
	public String showOnlineCourseIndex(HttpServletRequest request) {
		try {
			return "web/xgk/xgk_course";
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作； 查询院校信息  错误信息：" + e);
			return "web/xgk/xgk_error_404";
		}
		
	}
	@Override
	public String showMoreOnlineCourse(HttpServletRequest request) {
		try {
			return "web/xgk/xgk_courseList";
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作； 查询院校信息  错误信息：" + e);
			return "web/xgk/xgk_error_404";
		}
	}
	@Override
	public String showVideoPage(String videoParam, HttpServletRequest request) {
		try {
			return "web/xgk/xgk_coursePlay";
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作； 查询院校信息  错误信息：" + e);
			return "web/xgk/xgk_error_404";
		}
	}

}
