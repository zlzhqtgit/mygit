package cn.hqtzytb.entity;

import java.io.Serializable;
import java.util.Date;

import com.hqtzytb.util.Status;




public class User implements Serializable
{		

	/**
	* @Fields serialVersionUID :(用一句话描述这个变量表示什么)
	*/
	private static final long serialVersionUID = 5237695915121322552L;
	private Integer id;
	private String username;
	private String password;
	private Integer userSex;	
	private String phone;	
	private String uuid;
	private Date creatTime;
	/**
	 * 枚举 记录用户在线状态
	 * 设置默认不在线
	 */
	private Status status=Status.offline;
	/**
	* 创建一个新的实例 User.
	*
	*/
	public User() {
		super();
	}
	/**
	* 创建一个新的实例 User.
	*
	* @param id
	* @param username
	* @param password
	* @param userSex
	* @param phone
	* @param uuid
	* @param creatTime
	* @param status
	*/
	public User(Integer id, String username, String password, Integer userSex, String phone, String uuid,
			Date creatTime, Status status) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.userSex = userSex;
		this.phone = phone;
		this.uuid = uuid;
		this.creatTime = creatTime;
		this.status = status;
	}
	/**
	 * @return the id
	 */
	public Integer getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(Integer id) {
		this.id = id;
	}
	/**
	 * @return the username
	 */
	public String getUsername() {
		return username;
	}
	/**
	 * @param username the username to set
	 */
	public void setUsername(String username) {
		this.username = username;
	}
	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}
	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}
	/**
	 * @return the userSex
	 */
	public Integer getUserSex() {
		return userSex;
	}
	/**
	 * @param userSex the userSex to set
	 */
	public void setUserSex(Integer userSex) {
		this.userSex = userSex;
	}
	/**
	 * @return the phone
	 */
	public String getPhone() {
		return phone;
	}
	/**
	 * @param phone the phone to set
	 */
	public void setPhone(String phone) {
		this.phone = phone;
	}
	/**
	 * @return the uuid
	 */
	public String getUuid() {
		return uuid;
	}
	/**
	 * @param uuid the uuid to set
	 */
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	/**
	 * @return the creatTime
	 */
	public Date getCreatTime() {
		return creatTime;
	}
	/**
	 * @param creatTime the creatTime to set
	 */
	public void setCreatTime(Date creatTime) {
		this.creatTime = creatTime;
	}
	/**
	 * @return the status
	 */
	public Status getStatus() {
		return status;
	}
	/**
	 * @param status the status to set
	 */
	public void setStatus(Status status) {
		this.status = status;
	}
	/* (非 Javadoc)
	* <p>Title: toString</p>
	* <p>Description: </p>
	* @return
	* @see java.lang.Object#toString()
	*/
	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password=" + password + ", userSex=" + userSex
				+ ", phone=" + phone + ", uuid=" + uuid + ", creatTime=" + creatTime + ", status=" + status + "]";
	}
	
}
