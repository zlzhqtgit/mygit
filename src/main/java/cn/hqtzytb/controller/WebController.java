package cn.hqtzytb.controller;



import java.io.File;
import java.util.Date;
import java.util.UUID;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import cn.hqtzytb.entity.ResponseResult;



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

	private static final Logger logger = LogManager.getLogger(WebController.class.getName());


	/**
	* @Title: handlexyghReg
	* @Description: (在线聊天图片传输)
	* @param @param session
	* @param @param request
	* @param @param file
	* @param @return    
	* @return ResponseResult<Void>    
	* @throws
	 */
	@RequestMapping(value = "/hqt_img.do", method = RequestMethod.POST)
	@ResponseBody
	public ResponseResult<Void> handlexyghReg(HttpSession session,HttpServletRequest request,@RequestParam(value="inputImage",required=false)MultipartFile file)
	{
		ResponseResult<Void> rr;		
        try{        	
        	String classpath = this.getClass().getResource("/").getPath(); 				
    		String path = classpath.replaceAll("WEB-INF/classes/", "")+"img/chat";
    		File file5 = new File(path);
    	    if (!file5.exists()) {
    	        file5.mkdirs();				      
    	    }
    	    Date now=new Date();
            // 获取图片后缀
            String extName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));		            					
    		file.transferTo(new File(path+"/"+now.getTime()+extName));       
            rr =new ResponseResult<Void>(ResponseResult.STATE_OK,"/img/chat/"+now.getTime()+extName);         
            logger.info("用户名："+session.getAttribute("username") +" 模块名：上传图片信息 操作：上传  状态：OK!");
		} catch (Exception e) {
			logger.error("访问路径："+request.getRequestURI()+"操作：上传图片信息  错误信息: "+e);
			rr=new ResponseResult<Void>(ResponseResult.ERR,"数据存在异常，请联系工作人员处理！");
		}
		return rr;
	}
	/**
	* @Title: showXgkIndex
	* @Description: (微信支付测试页面)
	* @param @param session
	* @param @param response
	* @param @param request
	* @param @return    
	* @return String    
	* @throws
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
}
