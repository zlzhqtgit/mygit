package cn.hqtzytb.entity;

import java.io.Serializable;

/**
 * @ClassName: EnrollmentRequirements
 * @Description: 当地招生政策要求信息表
 * @author: wuPeiLong
 * @date: 2019年12月16日
 * @Copyright:好前途教育
 * @version V1.0
 */

public class EnrollmentRequirements implements Serializable {

	private static final long serialVersionUID = 1L;

	/**
	 * 主键ID
	 */
	private Integer eId;

	/**
	 * 年份
	 */
	private String eYear;

	/**
	 * 省份
	 */
	private String eProvince;

	/**
	 * 教育
	 */
	private String eEducation;

	/**
	 * 大学代码
	 */
	private String universitiesCode;

	/**
	 * 大学名字
	 */
	private String universitiesName;

	/**
	 * 招生专业
	 */
	private String enrollmentMajor;

	/**
	 * 包括专业
	 */
	private String includeMajor;

	/**
	 * 首选科目
	 */
	private String preferredSubject;

	/**
	 * 再选科目
	 */
	private String reelectionSubjects;

	/**
	 * 选科组合【招生提供的学科组合】
	 */
	private String subjectCombination;

	public EnrollmentRequirements() {
		super();
		// TODO Auto-generated constructor stub
	}

	public EnrollmentRequirements(Integer eId, String eYear, String eProvince, String eEducation,
			String universitiesCode, String universitiesName, String enrollmentMajor, String includeMajor,
			String preferredSubject, String reelectionSubjects, String subjectCombination) {
		super();
		this.eId = eId;
		this.eYear = eYear;
		this.eProvince = eProvince;
		this.eEducation = eEducation;
		this.universitiesCode = universitiesCode;
		this.universitiesName = universitiesName;
		this.enrollmentMajor = enrollmentMajor;
		this.includeMajor = includeMajor;
		this.preferredSubject = preferredSubject;
		this.reelectionSubjects = reelectionSubjects;
		this.subjectCombination = subjectCombination;
	}

	public Integer geteId() {
		return eId;
	}

	public void seteId(Integer eId) {
		this.eId = eId;
	}

	public String geteYear() {
		return eYear;
	}

	public void seteYear(String eYear) {
		this.eYear = eYear;
	}

	public String geteProvince() {
		return eProvince;
	}

	public void seteProvince(String eProvince) {
		this.eProvince = eProvince;
	}

	public String geteEducation() {
		return eEducation;
	}

	public void seteEducation(String eEducation) {
		this.eEducation = eEducation;
	}

	public String getUniversitiesCode() {
		return universitiesCode;
	}

	public void setUniversitiesCode(String universitiesCode) {
		this.universitiesCode = universitiesCode;
	}

	public String getUniversitiesName() {
		return universitiesName;
	}

	public void setUniversitiesName(String universitiesName) {
		this.universitiesName = universitiesName;
	}

	public String getEnrollmentMajor() {
		return enrollmentMajor;
	}

	public void setEnrollmentMajor(String enrollmentMajor) {
		this.enrollmentMajor = enrollmentMajor;
	}

	public String getIncludeMajor() {
		return includeMajor;
	}

	public void setIncludeMajor(String includeMajor) {
		this.includeMajor = includeMajor;
	}

	public String getPreferredSubject() {
		return preferredSubject;
	}

	public void setPreferredSubject(String preferredSubject) {
		this.preferredSubject = preferredSubject;
	}

	public String getReelectionSubjects() {
		return reelectionSubjects;
	}

	public void setReelectionSubjects(String reelectionSubjects) {
		this.reelectionSubjects = reelectionSubjects;
	}

	public String getSubjectCombination() {
		return subjectCombination;
	}

	public void setSubjectCombination(String subjectCombination) {
		this.subjectCombination = subjectCombination;
	}

	@Override
	public String toString() {
		return "EnrollmentRequirements [eId=" + eId + ", eYear=" + eYear + ", eProvince=" + eProvince + ", eEducation="
				+ eEducation + ", universitiesCode=" + universitiesCode + ", universitiesName=" + universitiesName
				+ ", enrollmentMajor=" + enrollmentMajor + ", includeMajor=" + includeMajor + ", preferredSubject="
				+ preferredSubject + ", reelectionSubjects=" + reelectionSubjects + ", subjectCombination="
				+ subjectCombination + "]";
	}

}
