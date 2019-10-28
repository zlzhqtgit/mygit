package cn.hqtzytb.controller;


import java.util.Date;
import java.util.List;

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
import org.springframework.web.bind.annotation.ResponseBody;
import cn.hqtzytb.entity.ResponseResult;
import cn.hqtzytb.entity.User;
import cn.hqtzytb.entity.UserRole;
import cn.hqtzytb.entity.UserRoleDetails;
import cn.hqtzytb.exception.MyRuntimeException;
import cn.hqtzytb.service.IUserRoleDetailsServer;
import cn.hqtzytb.service.IUserRoleServer;
import cn.hqtzytb.service.IUserServer;
import net.sf.json.JSONObject;

/**
* @Title: UserController.java
* @Package cn.hqtzytb.controller
* @Description:(前端用户控制层)
* @author: ZhouLingZhang
* @date 2019年10月14日
* @Copyright:好前途教育
* @version V1.0
*/
@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	public IUserServer userServer;
	@Autowired
	public IUserRoleServer userRoleServer;
	@Autowired
	public IUserRoleDetailsServer userRoleDetailsServer;
	private  static final  Logger logger = LogManager.getLogger(UserController.class.getName());
	
	/**
	* @Title: hanldLogin
	* @Description: (进入新高考登录模块)
	* @param @param map
	* @param @param session
	* @param @param request
	* @param @param response
	* @param @return
	* @param @throws MyRuntimeException    
	* @return String    
	* @throws
	 */
	@RequestMapping("xgk_login.do")
	public String hanldLogin(ModelMap map,String nowUrl,HttpSession session,HttpServletRequest request,HttpServletResponse response) throws MyRuntimeException{
		try
		{
			map.addAttribute("nowUrl", nowUrl);
			logger.info("用户名："+session.getAttribute("username")+" 模块名：新高考用户登录模块  操作：进入模块  状态：OK!");
			return "web/xgk/xgk_login";	
		} catch (Exception e){
			logger.error("访问路径："+request.getRequestURI()+"操作：进入新高考用户登录模块     错误信息: "+e);
			throw new MyRuntimeException(e);
		}	
	}
	/**
	* @Title: hanldUserRole
	* @Description: (后台查看前端用户主角色页面)
	* @param @param map
	* @param @param session
	* @param @param request
	* @param @param response
	* @param @return
	* @param @throws MyRuntimeException    
	* @return String    
	* @throws
	 */
	@RequestMapping("hqt_user_role.do")
	public String hanldUserRole(ModelMap map,HttpSession session,HttpServletRequest request,HttpServletResponse response) throws MyRuntimeException{
		try
		{		
			List<UserRole> roleList=userRoleServer.getUserRoleAll();
			map.addAttribute("roleList", roleList);
			logger.info("用户名："+session.getAttribute("username")+" 模块名：新高考用户登录模块  操作：进入模块  状态：OK!");
			return "main/user/hqt_user_role";	
		} catch (Exception e){
			logger.error("访问路径："+request.getRequestURI()+"操作：进入新高考用户登录模块     错误信息: "+e);
			throw new MyRuntimeException(e);
		}	
	}
	/**
	* @Title: hanldRoleDetailsAdd
	* @Description: (后台增加前端角色明细)
	* @param @param map
	* @param @param session
	* @param @param request
	* @param @param response
	* @param @return
	* @param @throws MyRuntimeException    
	* @return String    
	* @throws
	 */
	@RequestMapping("hqt_user_roledetailsadd.do")
	public String roleDetailsAdd(ModelMap map,HttpSession session,HttpServletRequest request,HttpServletResponse response) throws MyRuntimeException{
		try
		{	
			List<UserRole> roleList=userRoleServer.getUserRoleAll();
			map.addAttribute("roleList", roleList);
			logger.info("用户名："+session.getAttribute("username")+" 模块名：用户注册模块  操作：进入模块  状态：OK!");
			return "main/user/hqt_user_roledetailsadd";	
		} catch (Exception e){
			logger.error("访问路径："+request.getRequestURI()+"操作：进入用户注册模块     错误信息: "+e);
			throw new MyRuntimeException(e);
		}	
	}
	/**
	* @Title: handleRoleDetailsAdd
	* @Description: (后台添加角色明细实现方法)
	* @param @param rid
	* @param @param detailsNumber
	* @param @param detailsName
	* @param @param detailsAdress
	* @param @param session
	* @param @param request
	* @param @return    
	* @return ResponseResult<Void>    
	* @throws
	 */
	@RequestMapping(value = "/hqt_roledetailsadd.do", method = RequestMethod.POST)
	@ResponseBody
	public ResponseResult<Void> handleRoleDetailsAdd(Integer rid,String detailsNumber,String detailsName,String detailsAdress, HttpSession session,HttpServletRequest request)
	{	
		ResponseResult<Void> rr;		
		try {	
			boolean flay=false;
			//查询用户名是否存在
			List<UserRoleDetails> detailslist=userRoleDetailsServer.getDetailsBynub(detailsNumber, detailsName);
			if(detailslist.size()!=0){
				for(int i=0;i<detailslist.size();i++){
					if(detailslist.get(i).getDetailsNumber().equals(detailsNumber) && detailslist.get(i).getDetailsName().equals(detailsName) && detailslist.get(i).getRid() !=rid){
						flay=true;
					}
				}				
			}else{
				flay=true;
			}
			if(flay){
				UserRoleDetails userRoleDetails=new UserRoleDetails();
				userRoleDetails.setRid(rid);
				userRoleDetails.setDetailsNumber(detailsNumber);
				userRoleDetails.setDetailsName(detailsName);
				userRoleDetails.setDetailsAdress(detailsAdress);
				Date now=new Date(); 
				userRoleDetails.setCreationTime(now);	
				userRoleDetailsServer.insert(userRoleDetails);
				rr = new ResponseResult<Void>(ResponseResult.STATE_OK, "角色添加成功");				
				logger.info("用户名："+session.getAttribute("adminname")+" 模块名：角色添加模块 操作：登录  状态：OK!");
			}else{
				rr = new ResponseResult<Void>(ResponseResult.ERR, "角色添加失败，相关信息重复");
				logger.info("用户名："+session.getAttribute("adminname")+" 模块名：角色添加模块   操作：添加角色 状态：Failed!");
			}			
		} catch (Exception e) {
			logger.error("访问路径："+request.getRequestURI()+"操作：角色添加信息  错误信息: "+e);
			rr=new ResponseResult<Void>(ResponseResult.ERR,"数据存在异常，请联系工作人员处理！");
		}
		return rr;
	}
	/**
	* @Title: handleRoleDetailsAdd
	* @Description: (后台更新角色明细实现方法)
	* @param @param rid
	* @param @param detailsNumber
	* @param @param detailsName
	* @param @param detailsAdress
	* @param @param session
	* @param @param request
	* @param @return    
	* @return ResponseResult<Void>    
	* @throws
	 */
	@RequestMapping(value = "/hqt_roledetailsedit.do", method = RequestMethod.POST)
	@ResponseBody
	public ResponseResult<Void> handleRoleDetailsEdit(Integer rid,String detailsNumber,String detailsName,String detailsAdress,Integer detailsId, HttpSession session,HttpServletRequest request)
	{	
		ResponseResult<Void> rr=null;		
		try {						
			List<UserRoleDetails> detailsandlist=userRoleDetailsServer.getDetailsBynuband(rid,detailsNumber, detailsName);
			List<UserRoleDetails> detailsIdlist=userRoleDetailsServer.getDetailsBydetailsId(detailsId);
			if(detailsandlist.size()>0 && rid!=detailsIdlist.get(0).getRid() ){
				rr = new ResponseResult<Void>(ResponseResult.ERR, "角色更新失败，相关信息重复");
				logger.info("用户名："+session.getAttribute("adminname")+" 模块名：角色信息修改模块   操作：修改角色 状态：Failed!");
			}else{
				UserRoleDetails userRoleDetails=new UserRoleDetails();
				userRoleDetails.setDetailsId(detailsId);
				userRoleDetails.setRid(rid);
				userRoleDetails.setDetailsNumber(detailsNumber);
				userRoleDetails.setDetailsName(detailsName);
				userRoleDetails.setDetailsAdress(detailsAdress);
				Date now=new Date(); 
				userRoleDetails.setCreationTime(now);	
				userRoleDetailsServer.update(userRoleDetails);
				rr = new ResponseResult<Void>(ResponseResult.STATE_OK, "角色信息更新成功");				
				logger.info("用户名："+session.getAttribute("adminname")+" 模块名：角色信息修改模块 操作：登录  状态：OK!");
			}			
		} catch (Exception e) {
			logger.error("访问路径："+request.getRequestURI()+"操作：角色信息修改模块  错误信息: "+e);
			rr=new ResponseResult<Void>(ResponseResult.ERR,"数据存在异常，请联系工作人员处理！");
		}
		return rr;
	}
	@RequestMapping(value = "/hqt_roledetailsdel.do", method = RequestMethod.POST)
	@ResponseBody
	public ResponseResult<Void> handleRoleDetailsDel(Integer detailsId, HttpSession session,HttpServletRequest request)
	{	
		ResponseResult<Void> rr;		
		try {						
		
				UserRoleDetails userRoleDetails=new UserRoleDetails();
				userRoleDetails.setDetailsId(detailsId);				
				userRoleDetailsServer.delete(userRoleDetails);
				rr = new ResponseResult<Void>(ResponseResult.STATE_OK, "角色信息更新成功");				
				logger.info("用户名："+session.getAttribute("adminname")+" 模块名：角色信息修改模块 操作：登录  状态：OK!");
					
		} catch (Exception e) {
			logger.error("访问路径："+request.getRequestURI()+"操作：角色信息修改模块  错误信息: "+e);
			rr=new ResponseResult<Void>(ResponseResult.ERR,"数据存在异常，请联系工作人员处理！");
		}
		return rr;
	}
	/**
	* @Title: hanldRoleDetails
	* @Description: (后台查看角色明细)
	* @param @param map
	* @param @param session
	* @param @param request
	* @param @param response
	* @param @return
	* @param @throws MyRuntimeException    
	* @return String    
	* @throws
	 */
	@RequestMapping("hqt_user_roledetails.do")
	public String hanldRoleDetails(ModelMap map,HttpSession session,HttpServletRequest request,HttpServletResponse response) throws MyRuntimeException{
		try
		{		
			List<UserRoleDetails> userRoleDetailslist=userRoleDetailsServer.getUserRoleDetailsAll();
			map.addAttribute("userRoleDetailslist", userRoleDetailslist);
			logger.info("用户名："+session.getAttribute("username")+" 模块名：用户注册模块  操作：进入模块  状态：OK!");
			return "main/user/hqt_user_roledetails";	
		} catch (Exception e){
			logger.error("访问路径："+request.getRequestURI()+"操作：进入用户注册模块     错误信息: "+e);
			throw new MyRuntimeException(e);
		}	
	}
	/**
	* @Title: hanldRoleDetailsEdit
	* @Description: (后台角色明细页面)
	* @param @param map
	* @param @param detailsId
	* @param @param session
	* @param @param request
	* @param @param response
	* @param @return
	* @param @throws MyRuntimeException    
	* @return String    
	* @throws
	 */
	@RequestMapping("hqt_user_roledetailsedit.do")
	public String hanldRoleDetailsEdit(ModelMap map,Integer detailsId,HttpSession session,HttpServletRequest request,HttpServletResponse response) throws MyRuntimeException{
		try
		{		
			List<UserRoleDetails> userRoleDetailslist=userRoleDetailsServer.getDetailsBydetailsId(detailsId);
			List<UserRole> roleList=userRoleServer.getUserRoleAll();
			map.addAttribute("userRoleDetailslist", userRoleDetailslist);
			map.addAttribute("roleList", roleList);
			logger.info("用户名："+session.getAttribute("username")+" 模块名：用户注册模块  操作：进入模块  状态：OK!");
			return "main/user/hqt_user_roledetailsedit";	
		} catch (Exception e){
			logger.error("访问路径："+request.getRequestURI()+"操作：进入用户注册模块     错误信息: "+e);
			throw new MyRuntimeException(e);
		}	
	}
	/**
	* @Title: hanldRegister
	* @Description: (用户注册页面)
	* @param @param map
	* @param @param session
	* @param @param request
	* @param @param response
	* @param @return
	* @param @throws MyRuntimeException    
	* @return String    
	* @throws
	 */
	@RequestMapping("register.do")
	public String hanldRegister(ModelMap map,HttpSession session,HttpServletRequest request,HttpServletResponse response) throws MyRuntimeException{
		try
		{			
			logger.info("用户名："+session.getAttribute("username")+" 模块名：用户注册模块  操作：进入模块  状态：OK!");
			return "web/public/register";	
		} catch (Exception e){
			logger.error("访问路径："+request.getRequestURI()+"操作：进入用户注册模块     错误信息: "+e);
			throw new MyRuntimeException(e);
		}	
	}
	/**
	* @Title: handleUserlogin
	* @Description: (新高考用户登录实现方法)
	* @param @param phone
	* @param @param password
	* @param @param session
	* @param @param request
	* @param @return    
	* @return ResponseResult<Void>    
	* @throws
	 */
	@RequestMapping(value = "/xgk_userLogin.do", method = RequestMethod.POST)
	@ResponseBody
	public ResponseResult<Void> handleUserlogin(String phone,String password, HttpSession session,HttpServletRequest request)
	{	
		ResponseResult<Void> rr;		
		try {			
			//查询用户名是否存在
			User user=userServer.queryUser(phone);			
			//判断用户名是否存在
			if (user==null){
				rr=new ResponseResult<Void>(ResponseResult.ERR,"手机号不存在!请重新输入...");
				logger.info("用户手机："+phone+" 模块名：登录模块 操作：登录  状态：Failed! ");
			}else{			
				GetCommonUser get=new GetCommonUser();				
				String md5Password = get.getEncrpytedPassword(password,user.getUuid());
				if(user.getPassword().equals(md5Password)){
					session.setAttribute("uid", user.getId());
					session.setAttribute("username", user.getUsername());
					JSONObject userJson = JSONObject.fromObject(user);
					session.setAttribute("userJson", userJson);//提供给前端页面使用
					session.setAttribute("user", user);//提供给后台服务websocket类使用(存放对象，避免过多的json转换)
					rr = new ResponseResult<Void>(ResponseResult.STATE_OK, "登录成功");				
					logger.info("用户名："+user.getUsername()+" 模块名：登录模块 操作：登录  状态：OK!");
				}else{
					rr = new ResponseResult<Void>(ResponseResult.ERR, "用户密码不正确");
					logger.info("用户名："+user.getUsername()+" 模块名：登录模块 操作：登录  状态：Failed!");
				}			
			}			
		} catch (Exception e) {
			logger.error("访问路径："+request.getRequestURI()+"操作：添加区库信息  错误信息: "+e);
			rr=new ResponseResult<Void>(ResponseResult.ERR,"数据存在异常，请联系工作人员处理！");
		}
		return rr;
	}

}
