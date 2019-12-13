package cn.hqtzytb.intercepter;

import org.apache.shiro.authc.UsernamePasswordToken;

/**
 * @ClassName: MyUsernamePasswordToken
 * @Description: 自定义Token令牌
 * @Author: WuPeiLong
 * @Date: 2019年12月13日
 * @Copyright:好前途教育
 * @Version V1.0
 */
public class MyUsernamePasswordToken extends UsernamePasswordToken {

    private static final long serialVersionUID = -2564928913725078138L;
    /**
     * 登录类型
     */
    private LoginType type;
    public MyUsernamePasswordToken() {
        super();
    }
    public MyUsernamePasswordToken(String username, String password, LoginType type, boolean rememberMe,  String host) {
        super(username, password, rememberMe,  host);
        this.type = type;
    }
    /**免密登录*/
    public MyUsernamePasswordToken(String username) {
        super(username, "", false, null);
        this.type = LoginType.NOPASSWD;
    }
    /**账号密码登录*/
    public MyUsernamePasswordToken(String username, String password) {
        super(username, password, false, null);
        this.type = LoginType.PASSWORD;
    }
    public LoginType getType() {
        return type;
    }
    public void setType(LoginType type) {
        this.type = type;
    }


}
