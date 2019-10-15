package cn.hqtzytb.service;


import java.util.List;
import cn.hqtzytb.entity.User;


public interface IUserServer
{
	List<User> getuserByphone(String phone);
	List<User> getuserAll();
	/**
	 * 查询单个用户(用于登陆验证)
	 * @param userName 用户名
	 * @param password 密码
	 * @return User
	 */
	public User queryUser(String phone);
}
