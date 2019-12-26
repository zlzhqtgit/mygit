package cn.hqtzytb.entity;


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
public class User extends Role implements Serializable {

	private static final long serialVersionUID = -4558917719387226913L;


	/**
	 * 主键ID
	 */
	private Integer id;
	/**
	 *  头像
	 */
	private String headImg;	 
	/**
	 * 用户名称
	 */
	private String username;
	/**
	 * 手机号
	 */
	private String phone;
	/**
	 * 身份证号
	 */
	private String pcNumber;	
	/**
	 * 学号
	 */
	private String studentId;	
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
	 * 就读学校
	 */
	private String school;
	/**
	 * 学校地址
	 */
	private String schoolAddress;	
	/**
	 * 就读省份
	 */	
	private String studyProvinces;
	/**
	 * 学届
	 */
	private String educationalCircles;
	/**
	 * 年级
	 */
	private String grade;
	/**
	 * 年级
	 */
	private String className;
	/**
	 * 角色ID
	 */
	private Integer rid;
	/**
	 * 用户权限
	 */
	private String authority;
	/**
	 * 创建时间
	 */
	private Date creatTime;
	
	public User() {
		super();
	}
	
	public User(Integer companyId, String companyNumber, String companyName, String companyAdress, Date creationTime) {
		super(companyId, companyNumber, companyName, companyAdress, creationTime);
	}
	
	public User(Integer roleId, Integer cid, String roleName, String roleAuthority, String roleDescription) {
		super(roleId, cid, roleName, roleAuthority, roleDescription);
	}

	public User(Integer id, String headImg, String username, String phone, String pcNumber, String studentId,
			String wexinChat, String qqChat, String password, String uuid, String school, String schoolAddress,
			String studyProvinces, String educationalCircles, String grade, String className, Integer rid,
			String authority, Date creatTime) {
		super();
		this.id = id;
		this.headImg = headImg;
		this.username = username;
		this.phone = phone;
		this.pcNumber = pcNumber;
		this.studentId = studentId;
		this.wexinChat = wexinChat;
		this.qqChat = qqChat;
		this.password = password;
		this.uuid = uuid;
		this.school = school;
		this.schoolAddress = schoolAddress;
		this.studyProvinces = studyProvinces;
		this.educationalCircles = educationalCircles;
		this.grade = grade;
		this.className = className;
		this.rid = rid;
		this.authority = authority;
		this.creatTime = creatTime;
	}

	public Integer getId() {
		return id;
	}

	public User setId(Integer id) {
		this.id = id;
		return this;
	}

	public String getHeadImg() {
		return headImg;
	}

	public User setHeadImg(String headImg) {
		this.headImg = headImg;
		return this;
	}

	public String getUsername() {
		return username;
	}

	public User setUsername(String username) {
		this.username = username;
		return this;
	}

	public String getPhone() {
		return phone;
	}

	public User setPhone(String phone) {
		this.phone = phone;
		return this;
	}

	public String getPcNumber() {
		return pcNumber;
	}

	public User setPcNumber(String pcNumber) {
		this.pcNumber = pcNumber;
		return this;
	}

	public String getStudentId() {
		return studentId;
	}

	public User setStudentId(String studentId) {
		this.studentId = studentId;
		return this;
	}

	public String getWexinChat() {
		return wexinChat;
	}

	public User setWexinChat(String wexinChat) {
		this.wexinChat = wexinChat;
		return this;
	}

	public String getQqChat() {
		return qqChat;
	}

	public User setQqChat(String qqChat) {
		this.qqChat = qqChat;
		return this;
	}

	public String getPassword() {
		return password;
	}

	public User setPassword(String password) {
		this.password = password;
		return this;
	}

	public String getUuid() {
		return uuid;
	}

	public User setUuid(String uuid) {
		this.uuid = uuid;
		return this;
	}

	public String getSchool() {
		return school;
	}

	public User setSchool(String school) {
		this.school = school;
		return this;
	}

	public String getSchoolAddress() {
		return schoolAddress;
	}

	public User setSchoolAddress(String schoolAddress) {
		this.schoolAddress = schoolAddress;
		return this;
	}

	public String getStudyProvinces() {
		return studyProvinces;
	}

	public User setStudyProvinces(String studyProvinces) {
		this.studyProvinces = studyProvinces;
		return this;
	}

	public String getEducationalCircles() {
		return educationalCircles;
	}

	public User setEducationalCircles(String educationalCircles) {
		this.educationalCircles = educationalCircles;
		return this;
	}

	public String getGrade() {
		return grade;
	}

	public User setGrade(String grade) {
		this.grade = grade;
		return this;
	}

	public String getClassName() {
		return className;
	}

	public User setClassName(String className) {
		this.className = className;
		return this;
	}

	public Integer getRid() {
		return rid;
	}

	public User setRid(Integer rid) {
		this.rid = rid;
		return this;
	}

	public String getAuthority() {
		return authority;
	}

	public User setAuthority(String authority) {
		this.authority = authority;
		return this;
	}

	public Date getCreatTime() {
		return creatTime;
	}

	public User setCreatTime(Date creatTime) {
		this.creatTime = creatTime;
		return this;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", headImg=" + headImg + ", username=" + username + ", phone=" + phone + ", pcNumber="
				+ pcNumber + ", studentId=" + studentId + ", wexinChat=" + wexinChat + ", qqChat=" + qqChat
				+ ", password=" + password + ", uuid=" + uuid + ", school=" + school + ", schoolAddress="
				+ schoolAddress + ", studyProvinces=" + studyProvinces + ", educationalCircles=" + educationalCircles
				+ ", grade=" + grade + ", className=" + className + ", rid=" + rid + ", authority=" + authority
				+ ", creatTime=" + creatTime + "]";
	}
	
	
	
	
}
