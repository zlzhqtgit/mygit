package cn.hqtzytb.service.impl;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.qq.connect.QQConnectException;
import com.qq.connect.oauth.Oauth;
import cn.hqtzytb.entity.ResponseResult;
import cn.hqtzytb.entity.User;
import cn.hqtzytb.intercepter.MyUsernamePasswordToken;
import cn.hqtzytb.mapper.UserMapper;
import cn.hqtzytb.service.ILoginService;
import cn.hqtzytb.utils.Constants;
import cn.hqtzytb.utils.GetCommonUser;
import cn.hqtzytb.utils.HttpClientUtils;
import cn.hqtzytb.utils.PropsUtil;
import cn.hqtzytb.utils.QQHttpClient;
import net.sf.json.JSONObject;;

/**
 * @ClassName: ILoginServiceImpl
 * @Description: TODO
 * @Author: WuPeiLong
 * @Date: 2019年11月28日
 * @Copyright:好前途教育
 * @Version V1.0
 */
@Service
public class ILoginServiceImpl implements ILoginService {
	private static final Logger logger = LogManager.getLogger(ILoginServiceImpl.class.getName());

	@Autowired
	private UserMapper userMapper;

	@Override
	public String wxLogin() {
		return null;
	}

	@Override
	public void qqLogin(HttpServletRequest request, HttpServletResponse response) {
		response.setContentType("text/html;charset=utf-8");
		try {
			response.sendRedirect(new Oauth().getAuthorizeURL(request));
		} catch (QQConnectException | IOException e) {
			e.printStackTrace();
			logger.error("QQ登录跳转异常", e.getMessage());
		}
	}

	@Override
	public String qqLoginCallback(HttpServletRequest request, HttpServletResponse response) {
		try {
			Subject subject = SecurityUtils.getSubject();
			Session session = subject.getSession();
			String code = request.getParameter("code");

			// 通过Authorization Code获取Access Token
			String url = Constants.QQ_LOGIN_TOKEN_URL
					.replace("APPID", PropsUtil.loadProps("qqconnectconfig.properties").getProperty("app_ID"))
					.replace("APPKEY", PropsUtil.loadProps("qqconnectconfig.properties").getProperty("app_KEY"))
					.replace("CODE", code).replace("REDIRECT_URI",
							PropsUtil.loadProps("qqconnectconfig.properties").getProperty("redirect_URI"));

			String access_token = QQHttpClient.getAccessToken(url);
			// 获取回调后的 openid 值
			url = Constants.QQ_USER_OPENID_URL.replace("ACCESS_TOKEN", access_token);
			String openid = QQHttpClient.getOpenID(url);

			// 获取QQ用户信息
			url = Constants.QQ_USER_INFO_URL.replace("ACCESS_TOKEN", access_token)
					.replace("APPID", PropsUtil.loadProps("qqconnectconfig.properties").getProperty("app_ID"))
					.replace("OPENID", openid);
			com.alibaba.fastjson.JSONObject jsonObject = QQHttpClient.getUserInfo(url);
			if (!"0".equals(jsonObject.getString("ret"))) {
				logger.error(Constants.ERROR_HEAD_INFO + "QQ登录回调异常");
			} else {
				Map<String, Object> paramMap = new HashMap<>();
				paramMap.put("qqChat", openid);
				List<User> users = userMapper.selectUserListByMap(paramMap);
				if (users.isEmpty()) { // 不存在该QQ用户
					session.setAttribute("headImg", jsonObject.get("figureurl_qq_2"));
					session.setAttribute("qqChat", openid);
					return "web/xgk/xgk_bindingAcc";
				} else {
					subject.login(new MyUsernamePasswordToken(users.get(0).getPhone()));
					if (Constants.HQT_COMPANY_NUMBER.equals(users.get(0).getCompanyNumber())) {// 好前途平台用户
						session.setAttribute(Constants.HQT_USER, 1);
					} else {
						session.setAttribute(Constants.HQT_USER, 0);
					}
					session.setAttribute("uid", users.get(0).getId());
					session.setAttribute("username", users.get(0).getUsername());
					session.setAttribute("headImg", users.get(0).getHeadImg());
					JSONObject userJson = JSONObject.fromObject(users.get(0));
					session.setAttribute("userJson", userJson);// 提供给前端页面使用
					session.setAttribute("user", users.get(0));// 提供给后台服务websocket类使用(存放对象，避免过多的json转换)
					return "web/xgk/xgk_index";
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			logger.error(Constants.ERROR_HEAD_INFO + "QQ登录回调异常");
		}
		return "web/xgk/xgk_error_404";
	}

	@Override
	public String wxLoginCallback(HttpServletRequest request, HttpServletResponse response) {
		System.err.println("1111111");
		try {
			Subject subject = SecurityUtils.getSubject();
			Session session = subject.getSession();
			String code = request.getParameter("code");
			if (code == null) {
				logger.error(Constants.ERROR_HEAD_INFO + "用户禁止授权");
			}
			String requestUrl = Constants.WX_LOGIN_TOKEN_URL
					.replace("APPID", PropsUtil.loadProps("config.properties").getProperty("wx_login_appid"))
					.replace("SECRET", PropsUtil.loadProps("config.properties").getProperty("wx_login_secret"))
					.replace("CODE", code);
			String access_token_json = HttpClientUtils.doGet(requestUrl);
			JSONObject token_json = JSONObject.fromObject(access_token_json);
			String openid = token_json.get("openid").toString();
			String access_token = token_json.get("access_token").toString();
			requestUrl = Constants.WX_USER_INFO_URL.replace("ACCESS_TOKEN", access_token).replace("OPENID", openid);
			String user_info_json = HttpClientUtils.doGet(requestUrl);
			JSONObject user_json = JSONObject.fromObject(user_info_json);
			Map<String, Object> paramMap = new HashMap<>();
			paramMap.put("wexinChat", openid);
			List<User> users = userMapper.selectUserListByMap(paramMap);
			System.err.println("users:" + users);
			if (users.isEmpty()) { // 不存在该微信用户
				session.setAttribute("headImg", user_json.get("headimgurl"));
				session.setAttribute("wexinChat", openid);
				// TODO 完善用户信息页面
				return "web/xgk/xgk_bindingAcc";
			} else {
				subject.login(new MyUsernamePasswordToken(users.get(0).getPhone()));
				if (Constants.HQT_COMPANY_NUMBER.equals(users.get(0).getCompanyNumber())) {// 好前途平台用户
					session.setAttribute(Constants.HQT_USER, 1);
				} else {
					session.setAttribute(Constants.HQT_USER, 0);
				}
				session.setAttribute("uid", users.get(0).getId());
				session.setAttribute("username", users.get(0).getUsername());
				session.setAttribute("headImg", users.get(0).getHeadImg());
				JSONObject userJson = JSONObject.fromObject(users.get(0));
				session.setAttribute("userJson", userJson);// 提供给前端页面使用
				session.setAttribute("user", users.get(0));// 提供给后台服务websocket类使用(存放对象，避免过多的json转换)
				return "web/xgk/xgk_index";
			}
		} catch (Exception ex) {
			ex.printStackTrace();
			logger.error(Constants.ERROR_HEAD_INFO + "微信登录回调异常");
		}
		return "web/xgk/xgk_error_404";
	}

	@Override
	public String logout() {
		// 销毁 shiro 会话
		if (SecurityUtils.getSubject().isAuthenticated()) {
			SecurityUtils.getSubject().logout();
		}
		return "web/xgk/xgk_index";
	}

	@Override
	public String resetPassword(HttpServletRequest request, HttpServletResponse response) {
		try {
			return "web/public/reset_pwd";
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：进入重置密码模块 异常   错误信息: " + e);
		}
		return "web/xgk/xgk_error_404";
	}

	@Override
	public ResponseResult<Void> verifyPhone(String phone, String verifyCode, HttpServletRequest request) {
		try {
			Session session = SecurityUtils.getSubject().getSession();
			String code = (String) session.getAttribute("code");
			String mobile = (String) session.getAttribute("phone");
			if (!verifyCode.equals(code)) {
				return new ResponseResult<>(ResponseResult.ERR, "验证码输入错误,请重新输入!");
			}
			if (!phone.equals(mobile)) {
				return new ResponseResult<>(ResponseResult.ERR, "手机号输入错误,请重新输入!");
			}
			return new ResponseResult<>(ResponseResult.STATE_OK,Constants.RESULT_MESSAGE_SUCCESS);
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：进入重置密码验证手机号模块 异常   错误信息: " + e);
			return new ResponseResult<>(ResponseResult.ERR,Constants.RESULT_MESSAGE_FAIL);
		}
		
	}

	@Override
	public ResponseResult<Void> updatePassword(String phone, String password, HttpServletRequest request) {
		try {
			User user = userMapper.queryUser(phone);
			if(user == null){
				return new ResponseResult<>(ResponseResult.ERR, "账号信息不存在!");
			}
			String uuid = UUID.randomUUID().toString().toUpperCase();
			user.setUuid(uuid);
			String md5Password = GetCommonUser.getEncrpytedPassword(Constants.MD5, password, uuid, 1024);
			user.setPassword(md5Password);
			userMapper.updateById(user);
			return new ResponseResult<>(ResponseResult.STATE_OK,Constants.RESULT_MESSAGE_SUCCESS);
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：用户重置密码 异常   错误信息: " + e);
			return new ResponseResult<>(ResponseResult.ERR, Constants.RESULT_MESSAGE_FAIL);
		}		
	}
}
