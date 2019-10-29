package cn.hqtzytb.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import cn.hqtzytb.entity.User;
import cn.hqtzytb.mapper.UserMapper;

@Service
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
}
