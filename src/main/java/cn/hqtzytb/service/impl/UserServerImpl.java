package cn.hqtzytb.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import cn.hqtzytb.entity.ResponseResult;
import cn.hqtzytb.service.IUserServer;
import cn.hqtzytb.utils.Constants;
import lombok.extern.slf4j.Slf4j;
import net.sf.json.JSONObject;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import cn.hqtzytb.entity.User;
import cn.hqtzytb.mapper.UserMapper;

import javax.servlet.http.HttpSession;

@Service
@Slf4j
public class UserServerImpl implements IUserServer {
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
	public ResponseResult<Void> bindAccount(HttpSession session, String phone, String verifyCode) {
		String code = session.getAttribute("code").toString();
		String mobile = session.getAttribute("phone").toString();
//		if (!phone.equals(mobile)) {
//			result.setState(Constants.RESULT_CODE_FAIL);
//			result.setMessage("手机号不匹配");
//			log.error(Constants.ERROR_HEAD_INFO + "手机号不匹配");
//		}
		ResponseResult<Void> result = new ResponseResult<>();
		if (!verifyCode.equals(code) || !phone.equals(mobile)) {
			result.setState(Constants.RESULT_CODE_FAIL);
			result.setMessage("验证码错误");
			log.error(Constants.ERROR_HEAD_INFO + "验证码错误");
		}
		Map<String,Object> paramMap = new HashMap<>();
		paramMap.put("phone",phone);
		List<User> users = userMapper.selectUserListByMap(paramMap);
		if (users.isEmpty()) {
			result.setState(Constants.RESULT_CODE_FAIL);
			result.setMessage("用户信息不存在");
			log.error(Constants.ERROR_HEAD_INFO + "用户信息不存在");
		} else {
			String wexinChat = session.getAttribute("wexinChat").toString();
			String qqChat = session.getAttribute("qqChat").toString();
			User user = users.get(0);
			if (user.getWexinChat() == null && StringUtils.isNotEmpty(wexinChat)){
				user.setWexinChat(wexinChat);//绑定微信openid
			}
			if (user.getQqChat() == null && StringUtils.isNotEmpty(qqChat)){
				user.setQqChat(qqChat);//绑定腾讯openid
			}
			session.setAttribute("uid", users.get(0).getId());
			session.setAttribute("username", users.get(0).getUsername());
			session.setAttribute("headUrl", users.get(0).getHeadUrl());
			JSONObject userJson = JSONObject.fromObject(users.get(0));
			session.setAttribute("userJson", userJson);//提供给前端页面使用
			session.setAttribute("user", users.get(0));//提供给后台服务websocket类使用(存放对象，避免过多的json转换)
			result.setState(Constants.RESULT_CODE_SUCCESS);
			result.setMessage(Constants.RESULT_MESSAGE_SUCCESS);
		}
		return result;
	}
}
