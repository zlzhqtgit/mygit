package cn.hqtzytb.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import cn.hqtzytb.entity.ResponseResult;
import cn.hqtzytb.service.IUserServer;
import cn.hqtzytb.utils.Constants;
import net.sf.json.JSONObject;
import org.apache.commons.lang.StringUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import cn.hqtzytb.entity.User;
import cn.hqtzytb.mapper.UserMapper;

@Service
public class UserServerImpl implements IUserServer {
	private  static final Logger logger = LogManager.getLogger(UserServerImpl.class.getName());
	@Autowired
	public UserMapper userMapper;

	@Override
	public List<User> getuserAll() {
		return userMapper.select(null, null, null, null);
	}

	@Override
	public List<User> getuserByphone(String phone) {
		String where = " phone='" + phone + "'";
		return userMapper.select(where, null, null, null);
	}

	// 查询单个用户信息 登陆
	@Override
	public User queryUser(String phone) {
		return userMapper.queryUser(phone);
	}


	@Override
	public User insert(User user) {
		userMapper.insert(user);
		return user;
	}

	@Override
	public ResponseResult<Void> bindAccount(String phone, String verifyCode) {
		Session session = SecurityUtils.getSubject().getSession();
		String code = session.getAttribute("code").toString();
		String mobile = session.getAttribute("phone").toString();
		if (!verifyCode.equals(code) || !phone.equals(mobile)) {
			logger.error("手机号：" + mobile + " 模块名：第三方用户手机号绑定   操作：绑定  状态：FAIL! 验证码错误");
			return new ResponseResult<>(ResponseResult.ERR,"验证码错误");
		}
		Map<String,Object> paramMap = new HashMap<>();
		paramMap.put("phone",phone);
		List<User> users = userMapper.selectUserListByMap(paramMap);
		if (users.isEmpty()) {
			logger.error("手机号：" + mobile + " 模块名：第三方用户手机号绑定   操作：绑定  状态：FAIL! 用户信息不存在");
			return new ResponseResult<>(ResponseResult.ERR,"验证码错误");
		} else {
			String wexinChat = session.getAttribute("wexinChat") == null ? null :session.getAttribute("wexinChat").toString();
			String qqChat = session.getAttribute("qqChat") == null ? null :session.getAttribute("qqChat").toString();
			User user = users.get(0);
			if (user.getWexinChat() == null && StringUtils.isNotEmpty(wexinChat)){
				user.setWexinChat(wexinChat);//绑定微信openid
			}
			if (user.getQqChat() == null && StringUtils.isNotEmpty(qqChat)){
				user.setQqChat(qqChat);//绑定腾讯openid
			}
			user.setHeadUrl(session.getAttribute("headUrl").toString());
			userMapper.updateById(user);//修改用户信息
			session.setAttribute("uid", users.get(0).getId());
			session.setAttribute("username", users.get(0).getUsername());
			session.setAttribute("headUrl", users.get(0).getHeadUrl());
			JSONObject userJson = JSONObject.fromObject(users.get(0));
			session.setAttribute("userJson", userJson);//提供给前端页面使用
			session.setAttribute("user", users.get(0));//提供给后台服务websocket类使用(存放对象，避免过多的json转换)
			logger.error("手机号：" + mobile + " 模块名：第三方用户手机号绑定   操作：绑定  状态：OK!");
			return new ResponseResult<Void>(ResponseResult.STATE_OK,Constants.RESULT_MESSAGE_SUCCESS);
		}
	}

	@Override
	public User getUserByUsername(String username) {
		return userMapper.getUserByUsername(username);
	}
}
