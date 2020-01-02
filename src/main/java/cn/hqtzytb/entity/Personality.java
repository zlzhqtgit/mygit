package cn.hqtzytb.entity;

import java.io.Serializable;

/**
 * @ClassName: Personality
 * @Description: 认知测评结果数据信息表
 * @author: wuPeiLong
 * @date: 2019年11月26日
 * @Copyright:好前途教育
 * @version V1.0
 */
public class Personality implements Serializable {

	private static final long serialVersionUID = 1L;

	/**
	 * 主键ID
	 */
	private Integer personalityId;

	/**
	 * 测评编码
	 */
	private String personalityCode;

	/**
	 * 测评结果名称
	 */
	private String personalityName;

	/**
	 * 测试类型
	 */
	private String testName;

	/**
	 * 个性简介
	 */
	private String personalityBrief;

	/**
	 * 个性特质
	 */
	private String personalityDetial;

	/**
	 * 适合的专业名称
	 */
	private String personalitySpecialty;

	/**
	 * 适合的职业
	 */
	private String personalityVocation;

	public Integer getPersonalityId() {
		return personalityId;
	}

	public void setPersonalityId(Integer personalityId) {
		this.personalityId = personalityId;
	}

	public String getPersonalityCode() {
		return personalityCode;
	}

	public void setPersonalityCode(String personalityCode) {
		this.personalityCode = personalityCode;
	}

	public String getPersonalityName() {
		return personalityName;
	}

	public void setPersonalityName(String personalityName) {
		this.personalityName = personalityName;
	}

	public String getTestName() {
		return testName;
	}

	public void setTestName(String testName) {
		this.testName = testName;
	}

	public String getPersonalityBrief() {
		return personalityBrief;
	}

	public void setPersonalityBrief(String personalityBrief) {
		this.personalityBrief = personalityBrief;
	}

	public String getPersonalityDetial() {
		return personalityDetial;
	}

	public void setPersonalityDetial(String personalityDetial) {
		this.personalityDetial = personalityDetial;
	}

	public String getPersonalitySpecialty() {
		return personalitySpecialty;
	}

	public void setPersonalitySpecialty(String personalitySpecialty) {
		this.personalitySpecialty = personalitySpecialty;
	}

	public String getPersonalityVocation() {
		return personalityVocation;
	}

	public void setPersonalityVocation(String personalityVocation) {
		this.personalityVocation = personalityVocation;
	}

	public Personality() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Personality(Integer personalityId, String personalityCode, String personalityName, String testName,
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

	@Override
	public String toString() {
		return "Personality [personalityId=" + personalityId + ", personalityCode=" + personalityCode
				+ ", personalityName=" + personalityName + ", testName=" + testName + ", personalityBrief="
				+ personalityBrief + ", personalityDetial=" + personalityDetial + ", personalitySpecialty="
				+ personalitySpecialty + ", personalityVocation=" + personalityVocation + "]";
	}

}
