package cn.hqtzytb.entity;

import java.io.Serializable;
import java.util.Date;





public class User extends UserRoleDetails implements Serializable
{	
	/**
	* @Fields serialVersionUID :(用一句话描述这个变量表示什么)
	*/
	private static final long serialVersionUID = 300921029306268701L;
	private Integer id;
	private String username;
	private String phone;
	private String wexinChat;
	private String qqChat;
	private String password;
	private String uuid;
	private String belongTo;	
	private String school;
	private String schoolAddress;
	private String families;
	private String fraction;
	private String ceeYear;
	private String vocation;
	private String headUrl;
	private String power;
	private Date creatTime;
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
	* @param phone
	* @param wexinChat
	* @param qqChat
	* @param password
	* @param uuid
	* @param belongTo
	* @param school
	* @param schoolAddress
	* @param families
	* @param fraction
	* @param ceeYear
	* @param vocation
	* @param headUrl
	* @param power
	* @param creatTime
	*/
	public User(Integer id, String username, String phone, String wexinChat, String qqChat, String password,
			String uuid, String belongTo, String school, String schoolAddress, String families, String fraction,
			String ceeYear, String vocation, String headUrl, String power, Date creatTime) {
		super();
		this.id = id;
		this.username = username;
		this.phone = phone;
		this.wexinChat = wexinChat;
		this.qqChat = qqChat;
		this.password = password;
		this.uuid = uuid;
		this.belongTo = belongTo;
		this.school = school;
		this.schoolAddress = schoolAddress;
		this.families = families;
		this.fraction = fraction;
		this.ceeYear = ceeYear;
		this.vocation = vocation;
		this.headUrl = headUrl;
		this.power = power;
		this.creatTime = creatTime;
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
	 * @return the wexinChat
	 */
	public String getWexinChat() {
		return wexinChat;
	}
	/**
	 * @param wexinChat the wexinChat to set
	 */
	public void setWexinChat(String wexinChat) {
		this.wexinChat = wexinChat;
	}
	/**
	 * @return the qqChat
	 */
	public String getQqChat() {
		return qqChat;
	}
	/**
	 * @param qqChat the qqChat to set
	 */
	public void setQqChat(String qqChat) {
		this.qqChat = qqChat;
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
	 * @return the belongTo
	 */
	public String getBelongTo() {
		return belongTo;
	}
	/**
	 * @param belongTo the belongTo to set
	 */
	public void setBelongTo(String belongTo) {
		this.belongTo = belongTo;
	}
	/**
	 * @return the school
	 */
	public String getSchool() {
		return school;
	}
	/**
	 * @param school the school to set
	 */
	public void setSchool(String school) {
		this.school = school;
	}
	/**
	 * @return the schoolAddress
	 */
	public String getSchoolAddress() {
		return schoolAddress;
	}
	/**
	 * @param schoolAddress the schoolAddress to set
	 */
	public void setSchoolAddress(String schoolAddress) {
		this.schoolAddress = schoolAddress;
	}
	/**
	 * @return the families
	 */
	public String getFamilies() {
		return families;
	}
	/**
	 * @param families the families to set
	 */
	public void setFamilies(String families) {
		this.families = families;
	}
	/**
	 * @return the fraction
	 */
	public String getFraction() {
		return fraction;
	}
	/**
	 * @param fraction the fraction to set
	 */
	public void setFraction(String fraction) {
		this.fraction = fraction;
	}
	/**
	 * @return the ceeYear
	 */
	public String getCeeYear() {
		return ceeYear;
	}
	/**
	 * @param ceeYear the ceeYear to set
	 */
	public void setCeeYear(String ceeYear) {
		this.ceeYear = ceeYear;
	}
	/**
	 * @return the vocation
	 */
	public String getVocation() {
		return vocation;
	}
	/**
	 * @param vocation the vocation to set
	 */
	public void setVocation(String vocation) {
		this.vocation = vocation;
	}
	/**
	 * @return the headUrl
	 */
	public String getHeadUrl() {
		return headUrl;
	}
	/**
	 * @param headUrl the headUrl to set
	 */
	public void setHeadUrl(String headUrl) {
		this.headUrl = headUrl;
	}
	/**
	 * @return the power
	 */
	public String getPower() {
		return power;
	}
	/**
	 * @param power the power to set
	 */
	public void setPower(String power) {
		this.power = power;
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
	/* (非 Javadoc)
	* <p>Title: toString</p>
	* <p>Description: </p>
	* @return
	* @see java.lang.Object#toString()
	*/
	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", phone=" + phone + ", wexinChat=" + wexinChat
				+ ", qqChat=" + qqChat + ", password=" + password + ", uuid=" + uuid + ", belongTo=" + belongTo
				+ ", school=" + school + ", schoolAddress=" + schoolAddress + ", families=" + families + ", fraction="
				+ fraction + ", ceeYear=" + ceeYear + ", vocation=" + vocation + ", headUrl=" + headUrl + ", power="
				+ power + ", creatTime=" + creatTime + "]";
	}
	
}
