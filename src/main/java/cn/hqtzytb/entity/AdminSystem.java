package cn.hqtzytb.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * @ClassName: AdminSystem
 * @Description: 系统参数实体类
 * @author: wuPeiLong
 * @date: 2019年12月16日
 * @Copyright:好前途教育
 * @version V1.0
 */
public class AdminSystem implements Serializable {
	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = -4059498871025645305L;
	private Integer sid;// 主键ID
	private String sysname;// 名称
	private String sysnub;// 属性值
	private String syscommet;// 描述
	private Date ctime;// 创建时间

	public AdminSystem() {
		super();
	}

	public AdminSystem(Integer sid, String sysname, String sysnub, String syscommet, Date ctime) {
		super();
		this.sid = sid;
		this.sysname = sysname;
		this.sysnub = sysnub;
		this.syscommet = syscommet;
		this.ctime = ctime;
	}

	public Integer getSid() {
		return sid;
	}

	public void setSid(Integer sid) {
		this.sid = sid;
	}

	public String getSysname() {
		return sysname;
	}

	public void setSysname(String sysname) {
		this.sysname = sysname;
	}

	public String getSysnub() {
		return sysnub;
	}

	public void setSysnub(String sysnub) {
		this.sysnub = sysnub;
	}

	public String getSyscommet() {
		return syscommet;
	}

	public void setSyscommet(String syscommet) {
		this.syscommet = syscommet;
	}

	public Date getCtime() {
		return ctime;
	}

	public void setCtime(Date ctime) {
		this.ctime = ctime;
	}

	@Override
	public String toString() {
		return "AdminSystem [sid=" + sid + ", sysname=" + sysname + ", sysnub=" + sysnub + ", syscommet=" + syscommet
				+ ", ctime=" + ctime + "]";
	}

}
