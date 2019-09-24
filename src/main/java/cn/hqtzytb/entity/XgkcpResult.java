package cn.hqtzytb.entity;

import java.io.Serializable;

/**
* @Title: XgkcpResult.java
* @Package cn.hqtzytb.entity
* @Description:(测评报告实体类)
* @author: ZhouLingZhang
* @date 2019年9月11日
* @Copyright:好前途教育
* @version V1.0
*/
public class XgkcpResult implements Serializable {
	
	/**
	* @Fields serialVersionUID :(用一句话描述这个变量表示什么)
	*/
	private static final long serialVersionUID = -7966161870934570286L;
	private Integer tzId;//id
	private String tzName;//测评结果名称
	private String tzType;//测评名称：如MBTI
	private String tzMajor;//适用的专业
	private String tzVocation;//适用的职业
	private String tzReport;//报告存放地址
	/**
	* 创建一个新的实例 XgkcpResult.
	*
	*/
	public XgkcpResult() {
		super();
	}
	/**
	* 创建一个新的实例 XgkcpResult.
	*
	* @param tzId
	* @param tzName
	* @param tzType
	* @param tzMajor
	* @param tzVocation
	* @param tzReport
	*/
	public XgkcpResult(Integer tzId, String tzName, String tzType, String tzMajor, String tzVocation, String tzReport) {
		super();
		this.tzId = tzId;
		this.tzName = tzName;
		this.tzType = tzType;
		this.tzMajor = tzMajor;
		this.tzVocation = tzVocation;
		this.tzReport = tzReport;
	}
	/**
	 * @return the tzId
	 */
	public Integer getTzId() {
		return tzId;
	}
	/**
	 * @param tzId the tzId to set
	 */
	public void setTzId(Integer tzId) {
		this.tzId = tzId;
	}
	/**
	 * @return the tzName
	 */
	public String getTzName() {
		return tzName;
	}
	/**
	 * @param tzName the tzName to set
	 */
	public void setTzName(String tzName) {
		this.tzName = tzName;
	}
	/**
	 * @return the tzType
	 */
	public String getTzType() {
		return tzType;
	}
	/**
	 * @param tzType the tzType to set
	 */
	public void setTzType(String tzType) {
		this.tzType = tzType;
	}
	/**
	 * @return the tzMajor
	 */
	public String getTzMajor() {
		return tzMajor;
	}
	/**
	 * @param tzMajor the tzMajor to set
	 */
	public void setTzMajor(String tzMajor) {
		this.tzMajor = tzMajor;
	}
	/**
	 * @return the tzVocation
	 */
	public String getTzVocation() {
		return tzVocation;
	}
	/**
	 * @param tzVocation the tzVocation to set
	 */
	public void setTzVocation(String tzVocation) {
		this.tzVocation = tzVocation;
	}
	/**
	 * @return the tzReport
	 */
	public String getTzReport() {
		return tzReport;
	}
	/**
	 * @param tzReport the tzReport to set
	 */
	public void setTzReport(String tzReport) {
		this.tzReport = tzReport;
	}
	/* (非 Javadoc)
	* <p>Title: toString</p>
	* <p>Description: </p>
	* @return
	* @see java.lang.Object#toString()
	*/
	@Override
	public String toString() {
		return "XgkcpResult [tzId=" + tzId + ", tzName=" + tzName + ", tzType=" + tzType + ", tzMajor=" + tzMajor
				+ ", tzVocation=" + tzVocation + ", tzReport=" + tzReport + "]";
	}
	
}
