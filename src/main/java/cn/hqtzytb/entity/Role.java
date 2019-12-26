package cn.hqtzytb.entity;


import java.io.Serializable;
import java.util.Date;

/**
 * @ClassName: Role
 * @Description: 角色信息实体类
 * @author: wuPeiLong
 * @date: 2019年12月11日
 * @Copyright:好前途教育
 * @version V1.0
 */
public class Role  extends Company  implements Serializable{

    private static final long serialVersionUID = 1L;

    /**
     * 角色ID
     */
    private Integer roleId;

    /**
     * 公司ID
     */
    private Integer cid;

    /**
     * 角色名称
     */
    private String roleName;

    /**
     * 角色授权
     */
    private String roleAuthority;

    /**
     * 角色描述
     */
    private String roleDescription;

    
    
    public Role() {
		super();
	}

	public Role(Integer companyId, String companyNumber, String companyName, String companyAdress, Date creationTime) {
		super(companyId, companyNumber, companyName, companyAdress, creationTime);
	}

	
	
	public Role(Integer roleId, Integer cid, String roleName, String roleAuthority, String roleDescription) {
		super();
		this.roleId = roleId;
		this.cid = cid;
		this.roleName = roleName;
		this.roleAuthority = roleAuthority;
		this.roleDescription = roleDescription;
	}

	public Integer getRoleId() {
		return roleId;
	}

	public Role setRoleId(Integer roleId) {
		this.roleId = roleId;
		return this;
	}

	public Integer getCid() {
		return cid;
	}

	public Role setCid(Integer cid) {
		this.cid = cid;
		return this;
	}

	public String getRoleName() {
		return roleName;
	}

	public Role setRoleName(String roleName) {
		this.roleName = roleName;
		return this;
	}

	public String getRoleAuthority() {
		return roleAuthority;
	}

	public Role setRoleAuthority(String roleAuthority) {
		this.roleAuthority = roleAuthority;
		return this;
	}

	public String getRoleDescription() {
		return roleDescription;
	}

	public Role setRoleDescription(String roleDescription) {
		this.roleDescription = roleDescription;
		return this;
	}

	@Override
	public String toString() {
		return "Role [roleId=" + roleId + ", cid=" + cid + ", roleName=" + roleName + ", roleAuthority=" + roleAuthority
				+ ", roleDescription=" + roleDescription + "]";
	}
	
    
}
