package cn.hqtzytb.service;


import java.util.List;
import cn.hqtzytb.entity.ResponseResult;
import cn.hqtzytb.entity.User;
import cn.hqtzytb.exception.MyRuntimeException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.ui.ModelMap;


public interface IUserServer {
	User insert(User user);
	List<User> getuserByphone(String phone);
	List<User> getuserAll();
	/**
	 * 查询单个用户(用于登陆验证)
	 * @param userName 用户名
	 * @param password 密码
	 * @return User
	 */
	User queryUser(String phone);

	/**
	 * 绑定账号
	 * @param session
	 * @param phone
	 * @param verifyCode
	 * @return
	 */
	ResponseResult<Void> bindAccount(String phone, String verifyCode);

	/**
	 * 查询用户信息
	 * @param username
	 * @return
	 */
	User getUserByUsername(String username);
	
	/**
	 * 进入新高考登录模块
	 * @param map
	 * @param nowUrl
	 * @param request
	 * @param response
	 * @return 
	 */
	String hanldLogin(ModelMap map, String nowUrl, HttpServletRequest request, HttpServletResponse response) throws MyRuntimeException;
	
	/**
	 * 新高考用户登录实现方法
	 * @param phone
	 * @param password
	 * @param request
	 * @return
	 */
	ResponseResult<Void> handleUserlogin(String phone, String password, HttpServletRequest request);
	
	/**
	 * 用户注册获取短信验证码
	 * @param phone
	 * @param request
	 * @return
	 */
	ResponseResult<Void> handlephotoyzm(String phone, HttpServletRequest request);
	
	/**
	 * 用户注册页面
	 * @param map
	 * @param request
	 * @param response
	 * @return
	 */
	String hanldRegister(ModelMap map, HttpServletRequest request, HttpServletResponse response) throws MyRuntimeException ;
	
	/**
	 * 用户注册实现方法
	 * @param user
	 * @param verifyCode
	 * @param request
	 * @return
	 */
	ResponseResult<Void> handleRegisteradd(User user, String verifyCode, HttpServletRequest request);
	
	/**
	 * 查用手机号是否已注册
	 * @param phone
	 * @return
	 */
	ResponseResult<Void> userIsExist(String phone, HttpServletRequest request);
	
	/**
	 * 给已注册用户发送短信
	 * @param phone
	 * @param session
	 * @param request
	 * @return
	 */
	ResponseResult<Void> sendMessage(String phone, HttpSession session, HttpServletRequest request);
	
	/**
	 * 进入用户个人中心
	 * @return
	 */
	String showUserCenterInfo(HttpServletRequest request);
}
