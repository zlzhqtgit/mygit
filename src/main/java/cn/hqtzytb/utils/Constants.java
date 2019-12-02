package cn.hqtzytb.utils;



/**
 * 设置一个成功静态常量
 * @author zhoulingzhang
 *
 */
public class Constants{

	public static final String SUCCESS = "SUCCESS";
	public static final Integer RESULT_CODE_FAIL = 0;
	public static final String RESULT_MESSAGE_FAIL = "操作失败";

	public static final Integer RESULT_CODE_SUCCESS = 1;
	public static final String RESULT_MESSAGE_SUCCESS = "操作成功";

	/**
	 * 初始密码
	 */
	public static final String INITIAL_PASSWORD = "666666";

	/**
	 * 错误信息字符串头
	 */
	public static final String ERROR_HEAD_INFO = "错误信息>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>";

	/**
	 * 微信开放平台获取access_token路径
	 */
	public static final String WX_LOGIN_TOKEN_URL = "https://api.weixin.qq.com/sns/oauth2/access_token?appid=APPID&secret=SECRET&code=CODE&grant_type=authorization_code";

	/**
	 * 微信开放平台获取微信用户信息路径
	 */
	public static final String WX_USER_INFO_URL = "https://api.weixin.qq.com/sns/userinfo?access_token=ACCESS_TOKEN&openid=OPENID";

}
