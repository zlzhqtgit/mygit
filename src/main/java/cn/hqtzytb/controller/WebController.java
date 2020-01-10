package cn.hqtzytb.controller;




import java.util.Map;
import java.util.UUID;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import cn.hqtzytb.entity.ResponseResult;
import cn.hqtzytb.service.IWebService;



/**
 * @Title: WebController.java
 * @Package cn.hqtzytb.controller
 * @Description:(前端公共功能控制层)
 * @author: ZhouLingZhang
 * @date 2019年10月15日
 * @Copyright:好前途教育
 * @version V1.0
 */
@Controller
@RequestMapping("/web")
public class WebController {	

	@Autowired
	private IWebService iWebService;

	/**
	 * 搜索框搜索【职业、专业、院校】内容
	 * @return
	 */
	@RequestMapping("/hqt_search.do")
	public String browserSearch(String content, Integer offset, Integer countPerPage, ModelMap map, HttpServletRequest request) {
		
		return iWebService.browserSearch(content, offset, countPerPage, map, request );
	}
		

	
	/**
	 * 在线聊天图片传输
	 * @param request
	 * @param file
	 * @return
	 */
	@RequestMapping(value = "/hqt_img.do", method = RequestMethod.POST)
	@ResponseBody
	public ResponseResult<Void> handlexyghReg(HttpServletRequest request,@RequestParam(value="inputImage",required=false)MultipartFile file){
		
		return iWebService.handlexyghReg(request,file);
	}
	

	/**
	 * 微信支付测试页面
	 * @param session
	 * @param response
	 * @param request
	 * @return
	 */
	@RequestMapping("/weixzf.do")	
	public String showXgkIndex(HttpSession session,HttpServletResponse response,HttpServletRequest request){			
		return "web/public/weixzf";				
	}
	
	/**
	* @Title: getUUID
	* @Description: ( 随机生成序列号 )
	* @param @return    
	* @return String    
	* @throws
	 */
	 
	public String getUUID() {
		return UUID.randomUUID().toString().replaceAll("-", "");
	}

	/**	
	* @Title: getTempName
	* @Description: (生成游客名称)
	* @param @return    
	* @return String    
	* @throws
	*/	
	public String getTempName() {
		String tempName = "游客" + (int) ((Math.random() * 9 + 1) * 100000);
		return tempName;
	}
	
	/**
	 * 进入VIP页面
	 * @return
	 */
	@RequestMapping("/hqt_vip_index.do")	
	public String showVipIndex(HttpServletRequest request) {
		
		return iWebService.showVipIndex(request);
	}
	
	/**
	 * 进入新手教程页面
	 * @return
	 */
	@RequestMapping("/hqt_newbie_index.do")	
	public String showNewbieIndex(HttpServletRequest request) {
		
		return iWebService.showNewbieIndex(request);
	}
	
	/**
	 * 进入商务合作页
	 * @return
	 */
	@RequestMapping("/hqt_business_cooperation.do")	
	public String showBusinessCooperationIndex(HttpServletRequest request) {
		
		return iWebService.showBusinessCooperationIndex(request);
	}
}
