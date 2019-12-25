package cn.hqtzytb.service;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.ui.ModelMap;
import cn.hqtzytb.entity.ResponseResult;
import cn.hqtzytb.entity.Xgkcp;

/**
* @Title: IXgkcpServer.java
* @Package cn.hqtzytb.service
* @Description:(测评结果信息查询业务层接口)
* @author: ZhouLingZhang
* @date 2019年9月5日
* @Copyright:好前途教育
* @version V1.0
*/
public interface IXgkcpServer {
	List<Xgkcp> getCpResult(String cpName);
	List<Xgkcp> getCpType(String cpName);
	String showhqtCpAnswer(ModelMap map, Integer cpid, HttpServletRequest request, HttpServletResponse response);
	String showhqtCpAnswerHld(ModelMap map, HttpServletRequest request, HttpServletResponse response);
	String showhqtCpAnswerMbti(ModelMap map, HttpServletRequest request, HttpServletResponse response);
	String showhqtCpIndex(ModelMap map, HttpServletRequest request, HttpServletResponse response);
	String showhqtCpChoice(ModelMap map, HttpServletRequest request, HttpServletResponse response);
	String showIndexno(ModelMap map, HttpServletRequest request);
	ResponseResult<Void> handleCpResult(Integer id,String cpda, HttpServletRequest request);
	ResponseResult<Void> haveYouCognitionEvaluation(Integer uid, String type);
	String showUserResultReport(String cpResult, HttpServletRequest request);
}
