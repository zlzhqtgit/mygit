package cn.hqtzytb.intercepter;



import cn.hqtzytb.entity.User;
import cn.hqtzytb.service.IUserServer;
import cn.hqtzytb.utils.LoginSession;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

/**
* @Title: MyShiroRealm.java
* @Package cn.hqtmain.filter
* @Description:(用一句话描述该文件做什么)
* @author: ZhouLingZhang
* @date 2019年11月27日
* @Copyright:好前途教育
* @version V1.0
*/
public class MyShiroRealm extends AuthorizingRealm{
	
	@Autowired
	public IUserServer iUserServer;

	//每次验证权限执行
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {		
		String[] ids = LoginSession.getSession().getUserAuthority().split(";");
		SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
		if(ids.length > 0){
			for(int i=0; i<ids.length; i++){
				info.addStringPermission(ids[i]);
			}			
			return info;
		}
		return null;
	}

	//登录执行
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {		
		String phone = (String)token.getPrincipal();
		User user = iUserServer.queryUser(phone);
		if(user != null){
			ByteSource byteSource = ByteSource.Util.bytes(user.getUuid());
			SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(phone,user.getPassword(),getName());
			info.setCredentialsSalt(byteSource);
			return info;
		}
		return null;
	}

}
