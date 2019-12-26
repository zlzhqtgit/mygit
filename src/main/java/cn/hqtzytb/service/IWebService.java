package cn.hqtzytb.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import cn.hqtzytb.entity.ResponseResult;

/**
 * @ClassName: IWebService
 * @Description: WEB服务接口
 * @Author: WuPeiLong
 * @Date: 2019年12月27日
 * @Copyright:好前途教育
 * @Version V1.0
 */
public interface IWebService {
	
	/**
	 * 搜索框搜索【职业、专业、院校】内容
	 * @param content
	 * @param offset
	 * @param countPerPage
	 * @param request
	 * @return
	 */
	ResponseResult<Map<String, Object>> browserSearch(String content, Integer offset, Integer countPerPage, HttpServletRequest request);

	/**
	 * 在线聊天图片传输
	 * @param request
	 * @param file
	 * @return
	 */
	ResponseResult<Void> handlexyghReg(HttpServletRequest request, MultipartFile file);
	
}
