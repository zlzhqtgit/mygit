package cn.hqtzytb.controller;



import java.util.Date;
import java.util.List;
import java.util.UUID;
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
import cn.hqtzytb.entity.UserChat;
import cn.hqtzytb.entity.Admin;
import cn.hqtzytb.entity.AdminRole;
import cn.hqtzytb.exception.MyRuntimeException;
import cn.hqtzytb.service.IAdminRoleServer;
import cn.hqtzytb.service.IAdminServer;
import net.sf.json.JSONObject;



@Controller
@RequestMapping("/admin")
public class AdminController
{
	@Autowired
	public IAdminServer adminServer;
	@Autowired
	public IAdminRoleServer adminRoleServer;
	private  static final  Logger logger = LogManager.getLogger(AdminController.class.getName());
	
	
	
	
	/**
	* @Title: showhqtadminPassword
	* @Description: (后台用户密码修改页面)
	* @param @param map
	* @param @param session
	* @param @param request
	* @param @param response
	* @param @return    
	* @return String    
	* @throws
	 */	
	@RequestMapping("/hqt_admin_password.do")	
	public String showhqtadminPassword(ModelMap map,HttpSession session,HttpServletRequest request,HttpServletResponse response){
		if(session.getAttribute("adminname")==null){
			GetCommonUser.getlogin(response, request);			
			return null;
		}else{
			logger.info("用户名："+session.getAttribute("adminname")+" 模块名：用户密码修改  操作：进入模块  状态：OK!");
			return  "main/admin/hqt_admin_password";
		}					
	}
	
	/**
	 * @throws MyRuntimeException 
	* @Title: showHqtadmin
	* @Description: (响应用户管理模块)
	* @param @param map
	* @param @param session
	* @param @param request
	* @param @param response
	* @param @return    
	* @return String    
	* @throws
	 */
	@RequestMapping("/hqt_admin.do")	
	public String showHqtadmin(ModelMap map,HttpSession session,HttpServletRequest request,HttpServletResponse response) throws MyRuntimeException{
		try
		{
			if(session.getAttribute("adminname")==null){
				GetCommonUser.getlogin(response, request);
				return null;
			}else{
				logger.info("用户名："+session.getAttribute("adminname")+" 模块名：用户管理模块  操作：进入模块  状态：OK!");
				return  "main/admin/hqt_admin";
			}		
		} catch (Exception e){
			logger.error("访问路径："+request.getRequestURI()+"操作：进入用户管理模块   错误信息: "+e);
			throw new MyRuntimeException(e);
		}					
	}
	/**	 
	* @Title: showhqtadminIndex
	* @Description: (响应后台用户管理主页)
	* @param @param map
	* @param @param session
	* @param @param request
	* @param @param response
	* @param @return
	* @param @throws MyRuntimeException    
	* @return String    
	* @throws
	 */
	@RequestMapping("/hqt_admin_index.do")	
	public String showhqtadminIndex(ModelMap map,HttpSession session,HttpServletRequest request,HttpServletResponse response) throws MyRuntimeException{
		
		try
		{
			if(session.getAttribute("adminname")==null){
				GetCommonUser.getlogin(response, request);
				return null;
			}else{
				logger.info("用户名："+session.getAttribute("adminname")+" 模块名：用户管理主页模块  操作：进入模块  状态：OK!");
				return "main/admin/hqt_admin_index";
			}	
		} catch (Exception e){
			logger.error("访问路径："+request.getRequestURI()+"操作：用户管理主页模块    错误信息: "+e);
			throw new MyRuntimeException(e);
		}	
	}
	/**	
	* @Title: hqtadminAdd
	* @Description: (后台添加用户页面)
	* @param @param map
	* @param @param session
	* @param @param request
	* @param @param response
	* @param @return
	* @param @throws MyRuntimeException    
	* @return String    
	* @throws
	 */
	@RequestMapping("/hqt_admin_add.do")	
	public String hqtadminAdd(ModelMap map,HttpSession session,HttpServletRequest request,HttpServletResponse response){		
		if(session.getAttribute("adminname")==null){
			GetCommonUser.getlogin(response, request);
			return null;
		}else{
			List<AdminRole> adminRoleList=adminRoleServer.getAdminRoleAll();
			map.addAttribute("adminRoleList", adminRoleList);
			logger.info("用户名："+session.getAttribute("adminname")+" 模块名：进入添加用户模块   操作：进入模块  状态：OK!");
			return "main/admin/hqt_admin_add";
		}			
	}
	/**
	* @Title: hqtAdminedit
	* @Description: (后台编辑用户模块)
	* @param @param map
	* @param @param session
	* @param @param request
	* @param @param response
	* @param @param id
	* @param @return    
	* @return String    
	* @throws
	 */
	@RequestMapping("/hqt_admin_edit.do")	
	public String hqtAdminedit(ModelMap map,HttpSession session,HttpServletRequest request,HttpServletResponse response,Integer id){		
		if(session.getAttribute("adminname")==null){
			GetCommonUser.getlogin(response, request);
			return null;
		}else{
			if(id!=null){
				List<Admin> adminList=adminServer.getuserByid(id);
				List<AdminRole> adminRoleList=adminRoleServer.getAdminRoleAll();
				map.addAttribute("adminRoleList", adminRoleList);
				map.addAttribute("adminList",adminList);
			}
			logger.info("用户名："+session.getAttribute("adminname")+" 模块名：编辑用户模块  操作：进入模块  状态：OK!");
			return "main/admin/hqt_admin_edit";
		}				
	}
	/**
	* @Title: handleAdmin
	* @Description: (添加后台用户)
	* @param @param username
	* @param @param password
	* @param @param userSex
	* @param @param phone
	* @param @param email
	* @param @param userRole
	* @param @param comment
	* @param @param session
	* @param @param request
	* @param @return    
	* @return ResponseResult<Void>    
	* @throws
	 */
	@RequestMapping(value = "/hqt_adminadd.do", method = RequestMethod.POST)
	@ResponseBody
	public ResponseResult<Void> handleAdmin(String username,String password,Integer userSex,String phone,
											String email,Integer userRole,String comment, HttpSession session,HttpServletRequest request)
	{
		ResponseResult<Void> rr;		
		try{						
			List<Admin> adminList=adminServer.getuserByusername(username);			
			if (adminList.size()<=0){
				GetCommonUser get=new GetCommonUser();			
				Date creatTime=new Date();
				Admin admin=new Admin();
				String uuid = UUID.randomUUID().toString().toUpperCase();
				String md5Password = get.getEncrpytedPassword(password, uuid);
				admin.setUsername(username);
				admin.setPassword(md5Password);
				admin.setUserSex(userSex);
				admin.setPhone(phone);
				admin.setEmail(email);
				admin.setUserRole(userRole);
				admin.setComment(comment);
				admin.setUuid(uuid);
				admin.setCreatTime(creatTime);
				adminServer.insert(admin);			
				rr = new ResponseResult<Void>(ResponseResult.STATE_OK, "用户添加成功!");
				logger.info("用户名："+session.getAttribute("adminname")+" 模块名：用户资料添加   操作：添加用户  状态：OK!");
			} else
			{
				rr = new ResponseResult<Void>(ResponseResult.ERR, "用户名已存在，请重新输入......");
				logger.info("用户名："+session.getAttribute("adminname")+" 模块名：用户资料添加   操作：添加用户  状态：Failed!");
			}
		} catch (Exception e) {
			logger.error("访问路径："+request.getRequestURI()+"操作：用户资料添加  错误信息: "+e);
			rr=new ResponseResult<Void>(ResponseResult.ERR,"数据存在异常，请联系工作人员处理！");
		}
		return rr;
	}
	/**
	 * 后端用户管理编辑按钮事件
	 * @param map
	 * @return 
	 */
	@RequestMapping(value = "/hqt_adminedit.do", method = RequestMethod.POST)
	@ResponseBody
	public ResponseResult<Void> handleadminedit(String username,Integer userSex,String phone,
											String email,Integer userRole,String comment,Integer id,HttpSession session,HttpServletRequest request)
	{
		ResponseResult<Void> rr;	
		try{						
			List<Admin> adminByid=adminServer.getuserByid(id);
			List<Admin> adminList=adminServer.getuserByusername(username);
			if(adminList.size()>0 && !adminList.get(0).getId().equals(id)){
				rr = new ResponseResult<Void>(ResponseResult.ERR, "用户已存在不能被修改!");
				logger.info("用户名："+session.getAttribute("adminname")+" 模块名：用户资料修改   操作：修改资料  状态：Failed!");
			}else{	
				List<AdminRole> adminRoleList=adminRoleServer.getAdminRoleByName("在线客服");
				if(adminRoleList.get(0).getRoleId()==userRole && adminRoleList.size()==6){
					rr = new ResponseResult<Void>(ResponseResult.ERR, "在线客服已达上限，请重新设置，上限值为6个用户。");
					logger.info("用户名："+session.getAttribute("adminname")+" 模块名：用户资料修改   操作：修改资料  状态：Failed(达到上限值)!");
				}else{
					Date creatTime=new Date();
					Admin admin=new Admin();			
					admin.setUsername(username);
					admin.setPassword(adminByid.get(0).getPassword());
					admin.setUserSex(userSex);
					admin.setPhone(phone);
					admin.setEmail(email);
					admin.setUserRole(userRole);
					admin.setComment(comment);
					admin.setUuid(adminByid.get(0).getUuid());
					admin.setCreatTime(creatTime);		
					admin.setId(id);
					adminServer.update(admin);			
					rr = new ResponseResult<Void>(ResponseResult.STATE_OK, "用户修改成功!");
					logger.info("用户名："+session.getAttribute("adminname")+" 模块名：用户资料修改   操作：修改资料  状态：OK!");
				}				
			}
		} catch (Exception e) {
			logger.error("访问路径："+request.getRequestURI()+"操作：用户资料修改  错误信息: "+e);
			rr=new ResponseResult<Void>(ResponseResult.ERR,"数据存在异常，请联系工作人员处理！");
		}		
		return rr;
	}
	
	/**
	* @Title: handleAdminreset
	* @Description: (后台用户密码重置)
	* @param @param id
	* @param @param session
	* @param @param request
	* @param @return    
	* @return ResponseResult<Void>    
	* @throws
	 */
	@RequestMapping(value = "/hqt_adminreset.do", method = RequestMethod.POST)
	@ResponseBody
	public ResponseResult<Void> handleAdminreset(Integer id,HttpSession session,HttpServletRequest request)
	{
		ResponseResult<Void> rr=null;		
		try{						
			List<Admin> adminlist=adminServer.getuserByid(id);
			if(adminlist.size()<=0){
				rr = new ResponseResult<Void>(ResponseResult.STATE_OK, "用户不存在!");
				logger.info("用户名："+session.getAttribute("adminname")+" 模块名：密码重置   操作：重置密码  状态：Failed!");
			}else{
				GetCommonUser get=new GetCommonUser();
				Date creatTime=new Date();
				Admin admin=new Admin();			
				String md5Password = get.getEncrpytedPassword("111111", adminlist.get(0).getUuid());			
				admin.setPassword(md5Password);			
				admin.setCreatTime(creatTime);
				admin.setId(id);
				adminServer.updatePwd(admin);				
				rr = new ResponseResult<Void>(ResponseResult.STATE_OK, "用户:"+adminlist.get(0).getUsername()+" 的密码已被重置为(111111)!");
				logger.info("用户名："+session.getAttribute("adminname")+" 模块名：密码重置   操作：用户"+adminlist.get(0).getUsername()+"重置密码  状态：OK! ");
			}
		} catch (Exception e) {
			logger.error("访问路径："+request.getRequestURI()+"操作：用户密码重置  错误信息: "+e);
			rr=new ResponseResult<Void>(ResponseResult.ERR,"数据存在异常，请联系工作人员处理！");
		}
		return rr;
	}
	/**
	* @Title: handleAdminChangePwd
	* @Description: (后台密码修改实现方法)
	* @param @param id
	* @param @param password
	* @param @param session
	* @param @return    
	* @return ResponseResult<Void>    
	* @throws
	 */
	@RequestMapping(value = "/hqt_adminchangepwd.do", method = RequestMethod.POST)
	@ResponseBody
	public ResponseResult<Void> handleAdminChangePwd(Integer id,String password,HttpSession session,HttpServletRequest request)
	{
		ResponseResult<Void> rr;		
		try{						
			List<Admin> adminlist=adminServer.getuserByid(id);
			if(adminlist.size()<=0){
				rr = new ResponseResult<Void>(ResponseResult.ERR, "用户不存在!");	
				logger.info("用户名："+session.getAttribute("adminname")+" 模块名：用户密码修改 操作：修改密码  状态：Failed! ");
			}else{
				GetCommonUser get=new GetCommonUser();			
				Date creatTime=new Date();
				Admin admin=new Admin();		
				String md5Password = get.getEncrpytedPassword(password, adminlist.get(0).getUuid());
				admin.setPassword(md5Password);			
				admin.setCreatTime(creatTime);
				admin.setId(id);
				adminServer.updatePwd(admin);			
				rr = new ResponseResult<Void>(ResponseResult.STATE_OK, "用户:"+adminlist.get(0).getUsername()+" 的密码已被修改!");
				logger.info("用户名："+session.getAttribute("adminname")+" 模块名：用户密码修改 操作：修改密码  状态：OK!");
			}
		} catch (Exception e) {
			logger.error("访问路径："+request.getRequestURI()+"操作：用户密码修改  错误信息: "+e);
			rr=new ResponseResult<Void>(ResponseResult.ERR,"数据存在异常，请联系工作人员处理！");
		}
		return rr;
	}
	/**	 
	* @Title: handleAdmindelete
	* @Description: (后台删除用户)
	* @param @param id
	* @param @param session
	* @param @param request
	* @param @return    
	* @return ResponseResult<Void>    
	* @throws
	 */
	@RequestMapping(value = "/hqt_admindelete.do", method = RequestMethod.POST)
	@ResponseBody
	public ResponseResult<Void> handleAdmindelete(Integer id,HttpSession session,HttpServletRequest request)
	{
		ResponseResult<Void> rr;
		try{						
			Admin admin=new Admin();				
			admin.setId(id);
			adminServer.delete(admin); 	
			rr = new ResponseResult<Void>(ResponseResult.STATE_OK, "用户已被删除!");	
			logger.info("用户名："+session.getAttribute("adminname")+" 模块名：删除用户 操作：删除用户  状态：OK!");
		} catch (Exception e) {
			logger.error("访问路径："+request.getRequestURI()+"操作：删除用户  错误信息: "+e);
			rr=new ResponseResult<Void>(ResponseResult.ERR,"数据存在异常，请联系工作人员处理！");
		}
		return rr;
	}
	/**
	* @Title: handleAdminlogin
	* @Description: (后台登录按钮实现功能方法)
	* @param @param username
	* @param @param password
	* @param @param session
	* @param @param request
	* @param @return    
	* @return ResponseResult<Void>    
	* @throws
	 */
	@RequestMapping(value = "/hqt_adminlogin.do", method = RequestMethod.POST)
	@ResponseBody
	public ResponseResult<Void> handleAdminlogin(String username,String password, HttpSession session,HttpServletRequest request)
	{	
		ResponseResult<Void> rr;		
		try {			
			//查询用户名是否存在
			Admin adminlist=adminServer.queryAdmin(username);
			System.out.println(adminlist);
			//判断用户名是否存在
			if (adminlist == null){
				rr=new ResponseResult<Void>(ResponseResult.ERR,"用户名不存在!请重新输入...");
				logger.info("用户名："+username+" 模块名：登录模块 操作：登录  状态：Failed! ");
			}else{			
				GetCommonUser get=new GetCommonUser();				
				String md5Password = get.getEncrpytedPassword(password,adminlist.getUuid());
				if(adminlist.getPassword().equals(md5Password)){
					session.setAttribute("adminId", adminlist.getId());
					session.setAttribute("adminname", adminlist.getUsername());
					List<AdminRole> adminRoleList=adminRoleServer.getAdminRoleByid(adminlist.getUserRole());					
					session.setAttribute("adminRole",adminRoleList.get(0).getRoleName());
					
					rr = new ResponseResult<Void>(ResponseResult.STATE_OK, "登录成功");				
					logger.info("用户名："+username+" 模块名：登录模块 操作：登录  状态：OK!");
				}else{
					rr = new ResponseResult<Void>(ResponseResult.ERR, "用户密码不正确");
					logger.info("用户名："+username+" 模块名：登录模块 操作：登录  状态：Failed!");
				}			
			}			
		} catch (Exception e) {
			logger.error("访问路径："+request.getRequestURI()+"操作：添加区库信息  错误信息: "+e);
			rr=new ResponseResult<Void>(ResponseResult.ERR,"数据存在异常，请联系工作人员处理！");
		}
		return rr;
	}
	@RequestMapping("/hqt_admin_chat.do")	
	public String showhqtadminChat(ModelMap map,HttpSession session,HttpServletRequest request,HttpServletResponse response){
		if(session.getAttribute("adminname")==null){
			GetCommonUser.getlogin(response, request);			
			return null;
		}else{
			Admin adminlist=adminServer.queryAdmin(session.getAttribute("adminname").toString());
			JSONObject adminJson = JSONObject.fromObject(adminlist);
			session.setAttribute("adminJson", adminJson);//提供给前端页面使用			
			UserChat userChat=new UserChat();
			userChat.setId(session.getAttribute("adminId").toString());
			userChat.setUsername(session.getAttribute("adminname").toString());
			userChat.setUsertype("1");
			userChat.setAdminid(session.getAttribute("adminId").toString());
			session.setAttribute("userChat", userChat);//提供给后台服务websocket类使用(存放对象，避免过多的json转换)
			logger.info("用户名："+session.getAttribute("adminname")+" 模块名：用户密码修改  操作：进入模块  状态：OK!");
			return  "main/admin/hqt_admin_chat";
		}					
	}
	@RequestMapping(value = "/side_right.do", method = RequestMethod.POST)
	@ResponseBody
	public ResponseResult<List<Admin>> handleAdminSideRight(HttpSession session,HttpServletRequest request)
	{	
		ResponseResult<List<Admin>> rr;		
		try {		
			List<AdminRole> adminRoleList=adminRoleServer.getAdminRoleByName("在线客服");
			if(adminRoleList.size()>0){
				//查询用户名是否存在
				List<Admin> adminlist=adminServer.getuserByRiole(adminRoleList.get(0).getRoleId());	
				rr=new ResponseResult<List<Admin>>(ResponseResult.STATE_OK,adminlist);
			}else{
				rr=new ResponseResult<List<Admin>>(ResponseResult.STATE_OK,"暂无客服人员");
			}						
		} catch (Exception e) {
			logger.error("访问路径："+request.getRequestURI()+"操作：查询相关的客服人员  错误信息: "+e);
			rr=new ResponseResult<List<Admin>>(ResponseResult.ERR,"数据存在异常，请联系工作人员处理！");
		}
		return rr;
	}
	/**	
	* @Title: showhqtadminList
	* @Description: (用户浏览页面)
	* @param @param map
	* @param @param session
	* @param @param response
	* @param @param request
	* @param @return    
	* @return String    
	* @throws
	 */
	@RequestMapping("/hqt_admin_list.do")	
	public String showhqtadminList(ModelMap map,HttpSession session,HttpServletResponse response,HttpServletRequest request){
		if(session.getAttribute("adminname")==null){			
			GetCommonUser.getlogin(response, request);
			return null;
		}else{				
			List<Admin> adminAlllist=adminServer.getuserAll();
			map.addAttribute("adminAlllist",adminAlllist);		
			logger.info("用户名："+session.getAttribute("adminname")+" 模块名：用户资料模块  操作：进入模块  状态：OK!");
			return "main/admin/hqt_admin_list";
		}			
	}
	/**
	* @Title: showhqtadminRole
	* @Description: (后台用户角色模块)
	* @param @param map
	* @param @param session
	* @param @param response
	* @param @param request
	* @param @return    
	* @return String    
	* @throws
	 */
	@RequestMapping("/hqt_admin_role.do")	
	public String showhqtadminRole(ModelMap map,HttpSession session,HttpServletResponse response,HttpServletRequest request){
		if(session.getAttribute("adminname")==null){
			GetCommonUser.getlogin(response, request);
			return null;
		}else{			
			List<AdminRole> adminRoleList=adminRoleServer.getAdminRoleAll();	
			map.addAttribute("adminRoleList", adminRoleList);
			logger.info("用户名："+session.getAttribute("adminname")+" 模块名：用户角色模块  操作：进入模块  状态：OK!");
			return "main/admin/hqt_admin_role";
		}		
	}
	/**
	* @Title: showhqtadminRoleadd
	* @Description: (后台添加角色)
	* @param @param map
	* @param @param session
	* @param @param response
	* @param @param request
	* @param @return    
	* @return String    
	* @throws
	 */
	@RequestMapping("/hqt_admin_roleadd.do")	
	public String showhqtadminRoleadd(ModelMap map,HttpSession session,HttpServletResponse response,HttpServletRequest request){	
		if(session.getAttribute("adminname")==null){
			GetCommonUser.getlogin(response, request);
			return null;
		}else{
			logger.info("用户名："+session.getAttribute("adminname")+" 模块名：添加用户角色模块  操作：添加角色  状态：OK!");
			return "main/admin/hqt_admin_roleadd";
		}
				
	}
	/**
	* @Title: showhqtadminRoleedit
	* @Description: (后台用户角色编辑页面)
	* @param @param map
	* @param @param session
	* @param @param response
	* @param @param request
	* @param @param roleId
	* @param @return    
	* @return String    
	* @throws
	 */
	@RequestMapping("/hqt_admin_roleedit.do")	
	public String showhqtadminRoleedit(ModelMap map,HttpSession session,HttpServletResponse response,HttpServletRequest request,Integer roleId){	
		if(session.getAttribute("adminname")==null){
			GetCommonUser.getlogin(response, request);
			return null;
		}else{
			if(roleId!=null){
				List<AdminRole> adminRoleList=adminRoleServer.getAdminRoleByid(roleId);
				map.addAttribute("adminRoleList",adminRoleList);
			}
			logger.info("用户名："+session.getAttribute("adminname")+" 模块名：编辑用户角色模块  操作：进入模块  状态：OK!");
			return "main/admin/hqt_admin_roleedit";
		}				
	}
	/**
	* @Title: handleRoleedit
	* @Description: (修改后台用户角色)
	* @param @param roleName
	* @param @param comment
	* @param @param roleId
	* @param @param oldroleName
	* @param @param session
	* @param @param request
	* @param @return    
	* @return ResponseResult<Void>    
	* @throws
	 */
	@RequestMapping(value = "/hqt_roleedit.do", method = RequestMethod.POST)
	@ResponseBody
	public ResponseResult<Void> handleRoleedit(String roleName,String comment,Integer roleId,String oldroleName,HttpSession session,HttpServletRequest request)
	{
		ResponseResult<Void> rr;			
		try {			
			List<AdminRole> adminRoleList=adminRoleServer.getAdminRoleByName(roleName);
			if(adminRoleList.size() >0 && adminRoleList.get(0).getRoleId()!=roleId){
				rr = new ResponseResult<Void>(ResponseResult.ERR, "角色名称已存在!");
				logger.info("用户名："+session.getAttribute("adminname")+" 模块名：修改用户角色模块  操作：修改角色  状态：Failed!");
			}else{			
				AdminRole role=new AdminRole();			
				role.setRoleName(roleName);
				role.setComment(comment);		
				role.setRoleId(roleId);	
				adminRoleServer.update(role);			
				rr = new ResponseResult<Void>(ResponseResult.STATE_OK, "角色修改成功!");
				logger.info("用户名："+session.getAttribute("adminname")+" 模块名：修改用户角色模块  操作：修改角色  状态：OK!");
			}			
		} catch (Exception e) {
			logger.error("访问路径："+request.getRequestURI()+"操作：修改用户角色模块  错误信息: "+e);
			rr=new ResponseResult<Void>(ResponseResult.ERR,"数据存在异常，请联系工作人员处理！");
		}
		return rr;
	}
	/**
	* @Title: handleRoledelete
	* @Description: (删除后台用户角色)
	* @param @param roleId
	* @param @param roleName
	* @param @param session
	* @param @return    
	* @return ResponseResult<Void>    
	* @throws
	 */
	@RequestMapping(value = "/hqt_roledelete.do", method = RequestMethod.POST)
	@ResponseBody
	public ResponseResult<Void> handleRoledelete(Integer roleId,HttpSession session,HttpServletRequest request)
	{
		ResponseResult<Void> rr;
		try {			
			List<Admin> adminList=adminServer.getuserByRiole(roleId);		
			if(adminList.size()>0){
				rr = new ResponseResult<Void>(ResponseResult.ERR, "该角色被用户使用中不能被删除!");	
				logger.info("用户名："+session.getAttribute("adminname")+" 模块名：删除用户角色模块  操作：删除角色  状态：Failed!");
			}else{				
				AdminRole role=new AdminRole();				
				role.setRoleId(roleId);
				adminRoleServer.delete(role);			
				rr = new ResponseResult<Void>(ResponseResult.STATE_OK, "角色已被删除!");	
				logger.info("用户名："+session.getAttribute("adminname")+" 模块名：删除用户角色模块  操作：删除角色  状态：OK!");
			}			
		} catch (Exception e) {
			logger.error("访问路径："+request.getRequestURI()+"操作：删除用户角色模块  错误信息: "+e);
			rr=new ResponseResult<Void>(ResponseResult.ERR,"数据存在异常，请联系工作人员处理！");
		}
		
		return rr;
	}
	/**
	* @Title: handleRole
	* @Description: (后台用户角色添加)
	* @param @param roleName
	* @param @param comment
	* @param @param session
	* @param @param request
	* @param @return    
	* @return ResponseResult<Void>    
	* @throws
	 */
	@RequestMapping(value = "/hqt_roleadd.do", method = RequestMethod.POST)
	@ResponseBody
	public ResponseResult<Void> handleRole(String roleName,String comment, HttpSession session,HttpServletRequest request)
	{
		ResponseResult<Void> rr;		
		
		try {			
			List<AdminRole> adminRoleList=adminRoleServer.getAdminRoleByName(roleName);		
			if (adminRoleList.size()<=0){				
				AdminRole role=new AdminRole();			
				role.setRoleName(roleName);
				role.setComment(comment);
				adminRoleServer.insert(role);			
				rr = new ResponseResult<Void>(ResponseResult.STATE_OK, "角色添加成功!");
				logger.info("用户名："+session.getAttribute("adminname")+" 模块名：添加用户角色模块  操作：添加角色  状态：OK!");
			} else{
				rr = new ResponseResult<Void>(ResponseResult.ERR, "角色名已存在，请重新输入......");
				logger.info("用户名："+session.getAttribute("adminname")+" 模块名：添加用户角色模块  操作：添加角色  状态：Failed!");
			}			
		} catch (Exception e) {
			logger.error("访问路径："+request.getRequestURI()+"操作：删除用户角色模块  错误信息: "+e);
			rr=new ResponseResult<Void>(ResponseResult.ERR,"数据存在异常，请联系工作人员处理！");
		}
		return rr;
	}
}
