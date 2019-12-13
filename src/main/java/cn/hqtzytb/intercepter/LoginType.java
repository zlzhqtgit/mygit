package cn.hqtzytb.intercepter;

/**
 * @ClassName: LoginType
 * @Description: 登录类型枚举类
 * @Author: WuPeiLong
 * @Date: 2019年12月13日
 * @Copyright:好前途教育
 * @Version V1.0
 */
public enum LoginType {
	/**
	 * 密码登录
	 */
    PASSWORD("password"), 
    /**
     * 免密登录
     */
    NOPASSWD("nopassword"); 
	/**
	 * 状态值
	 */
    private String code;
    private LoginType(String code) {
        this.code = code;
    }
    public String getCode () {
        return code;
    }
}

