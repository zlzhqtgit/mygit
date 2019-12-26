package cn.hqtzytb.utils;




/**
 * @ClassName: Constants
 * @Description: 静态常量工具类
 * @Author: WuPeiLong
 * @Date: 2019年12月04日
 * @Copyright:好前途教育
 * @Version V1.0
 */
public class Constants{

	/**
	 * 系统用户
	 */
	public static final String SYSTEM_USER = "SYSTEM_USER";

	public static final String SUCCESS = "SUCCESS";
	public static final Integer RESULT_CODE_FAIL = 0;
	public static final String RESULT_MESSAGE_FAIL = "操作失败";
	public static final Integer RESULT_CODE_SUCCESS = 1;
	public static final String RESULT_MESSAGE_SUCCESS = "操作成功";
	public static final String EVALUATION_TYPE_POTENTIAL_ANALYSIS = "QNFX";
	public static final String EVALUATION_NAME_POTENTIAL_ANALYSIS = "潜能分析";
	public static final String EVALUATION_TYPE_SCORE_ANALYSIS = "CJFX";
	public static final String EVALUATION_NAME_SCORE_ANALYSIS = "成绩分析";
	public static final String EVALUATION_TYPE_MBTI_ANALYSIS = "MBTI";
	public static final String EVALUATION_TYPE_HOLLAND_ANALYSIS = "霍兰德";
	/**
	 * 加密方式
	 */
	public static final String HMACSHA256 = "HMAC-SHA256";
	public static final String MD5 = "MD5";
	public static final String SHA1 = "SHA1";

	/**
	 * 初始密码
	 */
	public static final String INITIAL_PASSWORD = "666666";

	/**
	 * 院校图片前缀
	 */
	public static final String COLLEGE_PHOTO_PREFIX = "${pageContext.request.contextPath}";
	
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

	/**
	 * 腾讯登录获取access_token路径
	 */
	public static final String QQ_LOGIN_TOKEN_URL = "https://graph.qq.com/oauth2.0/token?grant_type=authorization_code&client_id=APPID&client_secret=APPKEY&code=CODE&redirect_uri=REDIRECT_URI";

	/**
	 * 腾讯登录获取openid路径
	 */
	public static final String QQ_USER_OPENID_URL = "https://graph.qq.com/oauth2.0/me?access_token=ACCESS_TOKEN";

	/**
	 * 腾讯登录获取用户信息路径
	 */
	public static final String QQ_USER_INFO_URL = "https://graph.qq.com/user/get_user_info?access_token=ACCESS_TOKEN&oauth_consumer_key=APPID&openid=OPENID";
}
