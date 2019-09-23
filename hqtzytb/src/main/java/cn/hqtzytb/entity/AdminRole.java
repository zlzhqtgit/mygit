package cn.hqtzytb.entity;

import java.io.Serializable;

public class AdminRole implements Serializable
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 4382411030004024688L;
	private Integer roleId;
	private String roleName;
	private String comment;
	public AdminRole()
	{
		super();
	}
	public AdminRole(Integer roleId, String roleName, String comment)
	{
		super();
		this.roleId = roleId;
		this.roleName = roleName;
		this.comment = comment;
	}
	public Integer getRoleId()
	{
		return roleId;
	}
	public void setRoleId(Integer roleId)
	{
		this.roleId = roleId;
	}
	public String getRoleName()
	{
		return roleName;
	}
	public void setRoleName(String roleName)
	{
		this.roleName = roleName;
	}
	public String getComment()
	{
		return comment;
	}
	public void setComment(String comment)
	{
		this.comment = comment;
	}
	@Override
	public String toString()
	{
		return "Role [roleId=" + roleId + ", roleName=" + roleName + ", comment=" + comment + "]";
	}
	
}
