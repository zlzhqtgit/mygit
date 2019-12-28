package cn.hqtzytb.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import cn.hqtzytb.service.ICourseService;

/**
 * @ClassName: CourseController
 * @Description: 在线课程控制器
 * @Author: WuPeiLong
 * @Date: 2019年12月28日
 * @Copyright:好前途教育
 * @Version V1.0
 */
@Controller
@RequestMapping("/online")
public class CourseController {
	@Autowired
	private ICourseService iCourseService;
	
	/**
	 * 展现在线课程首页
	 * @param request
	 * @return
	 */
	@RequestMapping("/xgk_online_index.do")
	public String showOnlineCourseIndex(HttpServletRequest request){
		
		return iCourseService.showOnlineCourseIndex(request);
	}

	
	/**
	 * 进入查看更多课程页
	 * @param request
	 * @return
	 */
	@RequestMapping("/xgk_online_more.do")
	public String showMoreOnlineCourse(HttpServletRequest request){
		
		return iCourseService.showMoreOnlineCourse(request);
	}
	
	/**
	 * 进入视频播放页
	 * @param request
	 * @return
	 */
	@RequestMapping("/xgk_video_page.do")
	public String showVideoPage(String videoParam,HttpServletRequest request){
		// TODO 响应对应参数视频
		return iCourseService.showVideoPage(videoParam, request);
	}
}
