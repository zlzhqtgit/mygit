package cn.hqtzytb.service;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import cn.hqtzytb.entity.XgkcpResult;

/**
 * @Title: IXgkcpServer.java
 * @Package cn.hqtzytb.service
 * @Description:(测评结果信息查询业务层接口)
 * @author: ZhouLingZhang
 * @date 2019年9月5日
 * @Copyright:好前途教育
 * @version V1.0
 */
public interface IXgkcpResultServer {
	List<XgkcpResult> resultReport(List<String> tzName, String tzType);

	List<XgkcpResult> getAll();

	/**
	 * 展示用户认知测评结果页面
	 * @param cpResult
	 * @param request
	 * @return
	 */
	String showUserResultReport(String cpResult, HttpServletRequest request);
}
