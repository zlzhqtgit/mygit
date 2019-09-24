package cn.hqtzytb.entity;

import java.io.Serializable;
import java.util.Date;


public class Admin implements Serializable
{

	/**
	* @Fields serialVersionUID :(用一句话描述这个变量表示什么)
	*/
	private static final long serialVersionUID = 7646965225419816491L;
	private Integer id;
	private String username;
	private String password;
	private Integer userSex;	
	private String phone;
	private String email;
	private Integer userRole;
	private String comment;	
	private String uuid;
	private Date creatTime;
	public Admin()
	{
		super();
	}
	public Admin(Integer id, String username, String password, Integer userSex, String phone, String email,
			Integer userRole, String comment, String uuid, Date creatTime)
	{
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.userSex = userSex;
		this.phone = phone;
		this.email = email;
		this.userRole = userRole;
		this.comment = comment;
		this.uuid = uuid;
		this.creatTime = creatTime;
	}
	public Integer getId()
	{
		return id;
	}
	public void setId(Integer id)
	{
		this.id = id;
	}
	public String getUsername()
	{
		return username;
	}
	public void setUsername(String username)
	{
		this.username = username;
	}
	public String getPassword()
	{
		return password;
	}
	public void setPassword(String password)
	{
		this.password = password;
	}
	public Integer getUserSex()
	{
		return userSex;
	}
	public void setUserSex(Integer userSex)
	{
		this.userSex = userSex;
	}
	public String getPhone()
	{
		return phone;
	}
	public void setPhone(String phone)
	{
		this.phone = phone;
	}
	public String getEmail()
	{
		return email;
	}
	public void setEmail(String email)
	{
		this.email = email;
	}
	public Integer getUserRole()
	{
		return userRole;
	}
	public void setUserRole(Integer userRole)
	{
		this.userRole = userRole;
	}
	public String getComment()
	{
		return comment;
	}
	public void setComment(String comment)
	{
		this.comment = comment;
	}
	public String getUuid()
	{
		return uuid;
	}
	public void setUuid(String uuid)
	{
		this.uuid = uuid;
	}
	public Date getCreatTime()
	{
		return creatTime;
	}
	public void setCreatTime(Date creatTime)
	{
		this.creatTime = creatTime;
	}
	@Override
	public String toString()
	{
		return "User [id=" + id + ", username=" + username + ", password=" + password + ", userSex=" + userSex
				+ ", phone=" + phone + ", email=" + email + ", userRole=" + userRole + ", comment=" + comment
				+ ", uuid=" + uuid + ", creatTime=" + creatTime + "]";
	}
	
	
}
