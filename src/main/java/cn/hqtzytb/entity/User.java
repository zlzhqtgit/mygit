package cn.hqtzytb.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;
import java.io.Serializable;
import java.util.Date;


/**
 * @ClassName: User
 * @Description: 用户信息实体类
 * @author: wuPeiLong
 * @date: 2019年12月11日
 * @Copyright:好前途教育
 * @version V1.0
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@NoArgsConstructor()
@AllArgsConstructor()
public class User extends Role implements Serializable {

	private static final long serialVersionUID = -4558917719387226913L;

	/**
	 * 主键ID
	 */
	private Integer id;

	/**
	 * 用户名称
	 */
	private String username;

	/**
	 * 手机号
	 */
	private String phone;

	/**
	 * 微信OpenID
	 */
	private String wexinChat;

	/**
	 * 扣扣OpenID
	 */
	private String qqChat;

	/**
	 * 密码
	 */
	private String password;

	/**
	 * uuid密钥
	 */
	private String uuid;

	/**
	 * 归属
	 */
	private String belongTo;

	/**
	 * 就读学校
	 */
	private String school;

	/**
	 * 学校地址
	 */
	private String schoolAddress;

	/**
	 * 科类
	 */
	private String families;

	/**
	 * 分数
	 */
	private String fraction;

	/**
	 * 高考年度
	 */
	private String ceeYear;

	/**
	 * 职业
	 */
	private String vocation;

	/**
	 * 头像
	 */
	private String headUrl;

	/**
	 * 影响力
	 */
	private String power;

	/**
	 * 省份
	 */
	private String province;

	/**
	 * 角色ID
	 */
	private Integer rid;

	/**
	 * 用户权限
	 */
	private String userAuthority;

	/**
	 * 创建时间
	 */
	private Date creatTime;
	
}
