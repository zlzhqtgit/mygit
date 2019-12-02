package cn.hqtzytb.service;


import java.util.List;
import cn.hqtzytb.entity.ResponseResult;
import cn.hqtzytb.entity.User;
import javax.servlet.http.HttpSession;


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

	ResponseResult<Void> bindAccount(HttpSession session, String phone, String verifyCode);
}
