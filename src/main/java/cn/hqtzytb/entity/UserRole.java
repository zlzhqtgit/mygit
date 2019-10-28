package cn.hqtzytb.entity;

import java.io.Serializable;

/**
* @Title: UserRole.java
* @Package cn.hqtzytb.entity
* @Description:(用户主角色)
* @author: ZhouLingZhang
* @date 2019年10月24日
* @Copyright:好前途教育
* @version V1.0
*/
public class UserRole implements Serializable {
	
	/**
	* @Fields serialVersionUID :(序列化)
	*/
	private static final long serialVersionUID = 5263157639664049001L;
	private Integer roleId;
	private String roleName;
	private String roleDescription;
	/**
	* 创建一个新的实例 UserRole.
	*
	*/
	public UserRole() {
		super();
	}
	/**
	* 创建一个新的实例 UserRole.
	*
	* @param roleId
	* @param roleName
	* @param roleDescription
	*/
	public UserRole(Integer roleId, String roleName, String roleDescription) {
		super();
		this.roleId = roleId;
		this.roleName = roleName;
		this.roleDescription = roleDescription;
	}
	/**
	 * @return the roleId
	 */
	public Integer getRoleId() {
		return roleId;
	}
	/**
	 * @param roleId the roleId to set
	 */
	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}
	/**
	 * @return the roleName
	 */
	public String getRoleName() {
		return roleName;
	}
	/**
	 * @param roleName the roleName to set
	 */
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	/**
	 * @return the roleDescription
	 */
	public String getRoleDescription() {
		return roleDescription;
	}
	/**
	 * @param roleDescription the roleDescription to set
	 */
	public void setRoleDescription(String roleDescription) {
		this.roleDescription = roleDescription;
	}

	@Override
	public String toString() {
		return "UserRole [roleId=" + roleId + ", roleName=" + roleName + ", roleDescription=" + roleDescription + "]";
	}
	
}
