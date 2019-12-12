package cn.hqtzytb.utils;

import cn.hqtzytb.entity.User;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;

/**
* @Title: LoginSession.java
* @Package cn.hqtmain.util
* @Description:(用一句话描述该文件做什么)
* @author: ZhouLingZhang
* @date 2019年11月30日
* @Copyright:好前途教育
* @version V1.0
*/
public class LoginSession {
	
	public static User getSession(){
		Subject subject = SecurityUtils.getSubject();
		Session session = subject.getSession();
		User user = new User();
		if(session.getAttribute(Constants.SYSTEM_USER) != null){
			user = (User) session.getAttribute(Constants.SYSTEM_USER);
			return user;
		}		
		return null;		
	}
	
}
