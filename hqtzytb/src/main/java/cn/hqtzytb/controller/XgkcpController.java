package cn.hqtzytb.controller;



import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.stream.Collectors;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import cn.hqtzytb.entity.ResponseResult;
import cn.hqtzytb.entity.Xgkcp;
import cn.hqtzytb.entity.XgkcpResult;
import cn.hqtzytb.exception.MyRuntimeException;
import cn.hqtzytb.service.IXgkcpResultServer;
import cn.hqtzytb.service.IXgkcpServer;
import net.sf.json.JSON;
import net.sf.json.JSONArray;


/**
* @Title: XgkcpController.java
* @Package cn.hqtzytb.controller
* @Description:(测评控制层)
* @author: ZhouLingZhang
* @date 2019年9月5日
* @Copyright:好前途教育
* @version V1.0
*/
@Controller
@RequestMapping("/cp")
public class XgkcpController {
	private  static final  Logger logger = LogManager.getLogger(XgkcpController.class.getName());
	@Autowired
	private IXgkcpServer xgkcpServer;
	@Autowired
	private IXgkcpResultServer xgkcpResultServer;
	
	
	/**
	 * @throws MyRuntimeException 
	* @Title: showhqtCpAnswer
	* @Description: (测评题目显示页面)
	* @param @param map
	* @param @param session
	* @param @param request
	* @param @param response
	* @param @return    
	* @return String    
	* @throws
	 */
	@RequestMapping("/xgk_answer.do")	
	public String showhqtCpAnswer(ModelMap map,Integer cpid,HttpSession session,HttpServletRequest request,HttpServletResponse response) throws MyRuntimeException{
		
		try
		{
			//获取session里的用户名
			//UserAdmin username =  (UserAdmin) session.getAttribute("user");			
			map.addAttribute("cpid",cpid);
			logger.info("用户名："+session.getAttribute("username")+" 模块名：答题页面     操作：进入模块  状态：OK!");
			return  "web/xgk/xgk_answer";
		} catch (Exception e){
			logger.error("访问路径："+request.getRequestURI()+"操作：进入答题页面  错误信息: "+e);
			throw new MyRuntimeException(e);
		}
							
	}
	/**
	 * @throws MyRuntimeException 
	* @Title: showhqtCpAnswerHld
	* @Description: (霍兰德测评题目提示页面)
	* @param @param map
	* @param @param session
	* @param @param request
	* @param @param response
	* @param @return    
	* @return String    
	* @throws
	 */
	@RequestMapping("/xgk_answer_hld.do")	
	public String showhqtCpAnswerHld(ModelMap map,HttpSession session,HttpServletRequest request,HttpServletResponse response) throws MyRuntimeException{		
		try
		{
			//获取session里的用户名
			//UserAdmin username =  (UserAdmin) session.getAttribute("user");			
			logger.info("用户名："+session.getAttribute("username")+" 模块名：霍兰德答题简介  操作：进入模块  状态：OK!");
			return  "web/xgk/xgk_answer_hld";
		} catch (Exception e){
			logger.error("访问路径："+request.getRequestURI()+"操作：进入霍兰德答题简介  错误信息: "+e);
			throw new MyRuntimeException(e);
		}					
	}
	/**
	 * @throws MyRuntimeException 
	* @Title: showhqtCpAnswerHld
	* @Description: (MBTI测评题目提示页面)
	* @param @param map
	* @param @param session
	* @param @param request
	* @param @param response
	* @param @return    
	* @return String    
	* @throws
	 */
	@RequestMapping("/xgk_answer_mbti.do")	
	public String showhqtCpAnswerMbti(ModelMap map,HttpSession session,HttpServletRequest request,HttpServletResponse response) throws MyRuntimeException{		
		try
		{
			//获取session里的用户名
			//UserAdmin username =  (UserAdmin) session.getAttribute("user");			
			logger.info("用户名："+session.getAttribute("username")+" 模块名：MBTI答题简介  操作：进入模块  状态：OK!");
			return  "web/xgk/xgk_answer_mbti";
		} catch (Exception e){
			logger.error("访问路径："+request.getRequestURI()+"操作：进入霍兰德答题简介  错误信息: "+e);
			throw new MyRuntimeException(e);
		}							
	}
	/**
	 * @throws MyRuntimeException 
	* @Title: showhqtCpIndex
	* @Description: (新高考首页)
	* @param @param map
	* @param @param session
	* @param @param request
	* @param @param response
	* @param @return    
	* @return String    
	* @throws
	 */
	@RequestMapping("/xgk_index.do")	
	public String showhqtCpIndex(ModelMap map,HttpSession session,HttpServletRequest request,HttpServletResponse response) throws MyRuntimeException{			
		try
		{
			//获取session里的用户名
			//UserAdmin username =  (UserAdmin) session.getAttribute("user");			
			logger.info("用户名："+session.getAttribute("username")+" 模块名：新高考首页  操作：进入模块  状态：OK!");
			return  "web/xgk/xgk_index";
		} catch (Exception e){
			logger.error("访问路径："+request.getRequestURI()+"操作：进入新高考首页  错误信息: "+e);
			throw new MyRuntimeException(e);
		}				
	}
	/**
	 * @throws MyRuntimeException 
	* @Title: showhqtCpIndex
	* @Description: (新高考首页)
	* @param @param map
	* @param @param session
	* @param @param request
	* @param @param response
	* @param @return    
	* @return String    
	* @throws
	 */
	@RequestMapping("/xgk_choice.do")	
	public String showhqtCpChoice(ModelMap map,HttpSession session,HttpServletRequest request,HttpServletResponse response) throws MyRuntimeException{			
		try
		{
			//获取session里的用户名
			//UserAdmin username =  (UserAdmin) session.getAttribute("user");			
			logger.info("用户名："+session.getAttribute("username")+" 模块名：认知测评页面  操作：进入模块  状态：OK!");
			return  "web/xgk/xgk_choice";
		} catch (Exception e){
			logger.error("访问路径："+request.getRequestURI()+"操作：进入认知测评页面  错误信息: "+e);
			throw new MyRuntimeException(e);
		}					
	}
	/**
	* @Title: showIndexno
	* @Description: (这里用一句话描述这个方法的作用)
	* @param @param session
	* @param @param request
	* @param @return    
	* @return String    
	* @throws
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping("/xgk_report.do")	
	public String showIndexno(ModelMap map,HttpSession session, HttpServletRequest request){
		//重session里面提取分数与测评类型
		String cpType=(String) session.getAttribute("cpName");		
		Map<String, Integer> cpFengshu =(Map<String, Integer>) session.getAttribute("cpResult");		
		String cpresult="";
		//判断测评类型
		if(cpType.equals("霍兰德")){
			//排序以后截取前3个类型代码
			List<String> mobileList = cpFengshu.entrySet().stream()
			            .sorted((Map.Entry<String, Integer> o1, Map.Entry<String, Integer> o2) -> o2.getValue() - o1.getValue())
			            .map(entry -> entry.getKey()).collect(Collectors.toList())
			            .subList(0, 3);		
			//查询数据库，查出相关的兴趣代码及相关信息
			List<XgkcpResult> reportUrl=xgkcpResultServer.ReportUrl(mobileList, cpType);	
			//渲染到页面				
			String[][] str={{"R","0","现实型"},{"I","0","研究型"},{"A","0","艺术型"},{"S","0","社会型"},{"E","0","企业型"},{"C","0","常规型"}};		
			String fs="";
			Iterator iter = cpFengshu.entrySet().iterator(); //获得map的Iterator			
			for(int i=0;i<str.length;i++){				
				str[i][1]=cpFengshu.get(str[i][0]).toString();						
				fs +=str[i][0]+","+str[i][1]+","+str[i][2]+"-";		
			}	   		
			map.addAttribute("cpFengshu",fs);
			map.addAttribute("hldreport",reportUrl);			
			map.addAttribute("report","report_hld");
		}else{
			//判断第一层面E-I,属于那种，如果分数相同取I
			if(cpFengshu.get("E")>cpFengshu.get("I")){
				cpresult +="E";
			}else{
				cpresult +="I";
			}
			//判断第二层面S-N,属于那种，如果分数相同取N
			if(cpFengshu.get("S")>cpFengshu.get("N")){
				cpresult +="S";
			}else{
				cpresult +="N";
			}
			//判断第三层面T-F,属于那种，如果分数相同取F
			if(cpFengshu.get("T")>cpFengshu.get("F")){
				cpresult +="T";
			}else{
				cpresult +="F";
			}
			//判断第四层面J-P,属于那种，如果分数相同取P
			if(cpFengshu.get("J")>cpFengshu.get("P")){
				cpresult +="J";
			}else{
				cpresult +="P";
			}
			//组合以上结果渲染到页面
			map.addAttribute("report","report_"+cpresult);			
		}							
		return "web/xgk/xgk_report";				
	}
	 /**
	 * @Title: handleCategory
	 * @Description: (测评计算方法)
	 * @param @param categoryName
	 * @param @param categoryComment
	 * @param @param session
	 * @param @return    
	 * @return ResponseResult<Void>    
	 * @throws
	  */
	@RequestMapping(value = "/xgk_result.do", method = RequestMethod.POST)
	@ResponseBody
	public ResponseResult<Void> handleCpResult(Integer id,@RequestParam(value="cpda") String cpda,HttpSession session, HttpServletRequest request)
	{
		ResponseResult<Void> rr;
		Map<String, Integer> cpResult = new HashMap<String, Integer>();		  
		//判断测评类型
		String cpName="霍兰德";	
		if(id==2){
			cpName="MBTI";			
		}
		try
		{
			//筛选出相测评名称的所有类型结果
			List<Xgkcp> typelist=xgkcpServer.getCpType(cpName);
			//把所有类型结果存入二维数组，用于记录类型的分		
			for(int i=0;i<typelist.size();i++){
				cpResult.put(typelist.get(i).getCpType(),0);				
			}
			//把答案转换为json数组
			JSONArray cpdajson = JSONArray.fromObject(cpda);
			//查询出相应的题目
			List<Xgkcp> cplist=xgkcpServer.getCpResult(cpName);
			//计算出相应的分数
			for(int j=0;j<cpdajson.size();j++){
				for(int y=0;y<cplist.size();y++){
					if(Integer.parseInt(cpdajson.getJSONArray(j).get(0).toString())==cplist.get(y).getCpNub() && 
							Integer.parseInt(cpdajson.getJSONArray(j).get(1).toString())==cplist.get(y).getCpCpda()){					
						cpResult.put(cplist.get(y).getCpType(),cpResult.get(cplist.get(y).getCpType())+1);						
					}
				}
			}	
			//存入session,在渲染页面时候调用计算结果
			session.setAttribute("cpName",cpName);
			session.setAttribute("cpResult",cpResult);		
			rr =new ResponseResult<Void>(ResponseResult.STATE_OK,"题目答案已提交，正在为你生成报告......");
			//logger.info("用户名："+username.getUsername()+" 模块名：区库设置模块  操作：添加区库信息  状态：OK!");
		} catch (Exception e){			
			logger.error("访问路径："+request.getRequestURI()+"操作：获取测评报告信息  错误信息: "+e);
			rr=new ResponseResult<Void>(ResponseResult.ERR,"数据存在异常，请联系工作人员处理！");
		}		
		return rr;
	}

}
