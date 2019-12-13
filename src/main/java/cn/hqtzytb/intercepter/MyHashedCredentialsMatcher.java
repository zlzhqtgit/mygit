package cn.hqtzytb.intercepter;

import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.credential.HashedCredentialsMatcher;

/**
 * @ClassName: MyHashedCredentialsMatcher
 * @Description: 自定义验证匹配
 * @Author: WuPeiLong
 * @Date: 2019年12月13日
 * @Copyright:好前途教育
 * @Version V1.0
 */
public class MyHashedCredentialsMatcher extends HashedCredentialsMatcher{
	 @Override
	    public boolean doCredentialsMatch(AuthenticationToken authcToken, AuthenticationInfo info) {
	        MyUsernamePasswordToken tk = (MyUsernamePasswordToken) authcToken;
	        //免密登录
	        if(tk.getType().equals(LoginType.NOPASSWD)){
	            return true;
	        }
	       //不是免密登录，调用父类的方法
	       return super.doCredentialsMatch(tk, info);
	    }

}
