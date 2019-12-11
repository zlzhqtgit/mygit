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
	* @Fields serialVersionUID :(对象序列化)
	*/
	private static final long serialVersionUID = -5324682786713503250L;
	private Integer personalityId;// id
	private String personalityCode;// 测评结果编码
	private String personalityName;// 测评结果名称
	private String testName;// 测评名称
	private String personalityBrief;// 简要描述
	private String personalityDetial;// 详细描述
	private String personalitySpecialty;// 典型专业
	private String personalityVocation;// 典型职业
	/**
	* 创建一个新的实例 personality.
	*
	*/
	public XgkcpResult() {
		super();
	}
	/**
	* 创建一个新的实例 personality.
	*
	* @param personalityId
	* @param personalityCode
	* @param personalityName
	* @param testName
	* @param personalityBrief
	* @param personalityDetial
	* @param personalitySpecialty
	* @param personalityVocation
	*/
	public XgkcpResult(Integer personalityId, String personalityCode, String personalityName, String testName,
			String personalityBrief, String personalityDetial, String personalitySpecialty,
			String personalityVocation) {
		super();
		this.personalityId = personalityId;
		this.personalityCode = personalityCode;
		this.personalityName = personalityName;
		this.testName = testName;
		this.personalityBrief = personalityBrief;
		this.personalityDetial = personalityDetial;
		this.personalitySpecialty = personalitySpecialty;
		this.personalityVocation = personalityVocation;
	}
	/**
	 * @return the personalityId
	 */
	public Integer getPersonalityId() {
		return personalityId;
	}
	/**
	 * @param personalityId the personalityId to set
	 */
	public void setPersonalityId(Integer personalityId) {
		this.personalityId = personalityId;
	}
	/**
	 * @return the personalityCode
	 */
	public String getPersonalityCode() {
		return personalityCode;
	}
	/**
	 * @param personalityCode the personalityCode to set
	 */
	public void setPersonalityCode(String personalityCode) {
		this.personalityCode = personalityCode;
	}
	/**
	 * @return the personalityName
	 */
	public String getPersonalityName() {
		return personalityName;
	}
	/**
	 * @param personalityName the personalityName to set
	 */
	public void setPersonalityName(String personalityName) {
		this.personalityName = personalityName;
	}
	/**
	 * @return the testName
	 */
	public String getTestName() {
		return testName;
	}
	/**
	 * @param testName the testName to set
	 */
	public void setTestName(String testName) {
		this.testName = testName;
	}
	/**
	 * @return the personalityBrief
	 */
	public String getPersonalityBrief() {
		return personalityBrief;
	}
	/**
	 * @param personalityBrief the personalityBrief to set
	 */
	public void setPersonalityBrief(String personalityBrief) {
		this.personalityBrief = personalityBrief;
	}
	/**
	 * @return the personalityDetial
	 */
	public String getPersonalityDetial() {
		return personalityDetial;
	}
	/**
	 * @param personalityDetial the personalityDetial to set
	 */
	public void setPersonalityDetial(String personalityDetial) {
		this.personalityDetial = personalityDetial;
	}
	/**
	 * @return the personalitySpecialty
	 */
	public String getPersonalitySpecialty() {
		return personalitySpecialty;
	}
	/**
	 * @param personalitySpecialty the personalitySpecialty to set
	 */
	public void setPersonalitySpecialty(String personalitySpecialty) {
		this.personalitySpecialty = personalitySpecialty;
	}
	/**
	 * @return the personalityVocation
	 */
	public String getPersonalityVocation() {
		return personalityVocation;
	}
	/**
	 * @param personalityVocation the personalityVocation to set
	 */
	public void setPersonalityVocation(String personalityVocation) {
		this.personalityVocation = personalityVocation;
	}
	/* (非 Javadoc)
	* <p>Title: toString</p>
	* <p>Description: </p>
	* @return
	* @see java.lang.Object#toString()
	*/
	@Override
	public String toString() {
		return "personality [personalityId=" + personalityId + ", personalityCode=" + personalityCode
				+ ", personalityName=" + personalityName + ", testName=" + testName + ", personalityBrief="
				+ personalityBrief + ", personalityDetial=" + personalityDetial + ", personalitySpecialty="
				+ personalitySpecialty + ", personalityVocation=" + personalityVocation + "]";
	}

}
