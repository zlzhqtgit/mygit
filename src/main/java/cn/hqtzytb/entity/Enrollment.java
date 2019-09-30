package cn.hqtzytb.entity;

import java.io.Serializable;

/**
* @Title: Enrollment.java
* @Package cn.hqtzytb.entity
* @Description:(各地本科、专科招生要求)
* @author: ZhouLingZhang
* @date 2019年9月30日
* @Copyright:好前途教育
* @version V1.0
*/
public class Enrollment implements Serializable {
	/**
	* @Fields serialVersionUID :(序列化)
	*/
	private static final long serialVersionUID = -4562723088041224187L;
	private Integer eId;
	private String eYear;
	private String eProvince;
	private String eEducation;
	private String universitiesCode;
	private String universitiesName;
	private String enrollmentMajor;
	private String includeMajor;
	private String preferredSubject;
	private String reelectionSubjects;
	/**
	* 创建一个新的实例 Enrollment.
	*
	*/
	public Enrollment() {
		super();
	}
	/**
	* 创建一个新的实例 Enrollment.
	*
	* @param eId
	* @param eYear
	* @param eProvince
	* @param eEducation
	* @param universitiesCode
	* @param universitiesName
	* @param enrollmentMajor
	* @param includeMajor
	* @param preferredSubject
	* @param reelectionSubjects
	*/
	public Enrollment(Integer eId, String eYear, String eProvince, String eEducation, String universitiesCode,
			String universitiesName, String enrollmentMajor, String includeMajor, String preferredSubject,
			String reelectionSubjects) {
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
	}
	/**
	 * @return the eId
	 */
	public Integer geteId() {
		return eId;
	}
	/**
	 * @param eId the eId to set
	 */
	public void seteId(Integer eId) {
		this.eId = eId;
	}
	/**
	 * @return the eYear
	 */
	public String geteYear() {
		return eYear;
	}
	/**
	 * @param eYear the eYear to set
	 */
	public void seteYear(String eYear) {
		this.eYear = eYear;
	}
	/**
	 * @return the eProvince
	 */
	public String geteProvince() {
		return eProvince;
	}
	/**
	 * @param eProvince the eProvince to set
	 */
	public void seteProvince(String eProvince) {
		this.eProvince = eProvince;
	}
	/**
	 * @return the eEducation
	 */
	public String geteEducation() {
		return eEducation;
	}
	/**
	 * @param eEducation the eEducation to set
	 */
	public void seteEducation(String eEducation) {
		this.eEducation = eEducation;
	}
	/**
	 * @return the universitiesCode
	 */
	public String getUniversitiesCode() {
		return universitiesCode;
	}
	/**
	 * @param universitiesCode the universitiesCode to set
	 */
	public void setUniversitiesCode(String universitiesCode) {
		this.universitiesCode = universitiesCode;
	}
	/**
	 * @return the universitiesName
	 */
	public String getUniversitiesName() {
		return universitiesName;
	}
	/**
	 * @param universitiesName the universitiesName to set
	 */
	public void setUniversitiesName(String universitiesName) {
		this.universitiesName = universitiesName;
	}
	/**
	 * @return the enrollmentMajor
	 */
	public String getEnrollmentMajor() {
		return enrollmentMajor;
	}
	/**
	 * @param enrollmentMajor the enrollmentMajor to set
	 */
	public void setEnrollmentMajor(String enrollmentMajor) {
		this.enrollmentMajor = enrollmentMajor;
	}
	/**
	 * @return the includeMajor
	 */
	public String getIncludeMajor() {
		return includeMajor;
	}
	/**
	 * @param includeMajor the includeMajor to set
	 */
	public void setIncludeMajor(String includeMajor) {
		this.includeMajor = includeMajor;
	}
	/**
	 * @return the preferredSubject
	 */
	public String getPreferredSubject() {
		return preferredSubject;
	}
	/**
	 * @param preferredSubject the preferredSubject to set
	 */
	public void setPreferredSubject(String preferredSubject) {
		this.preferredSubject = preferredSubject;
	}
	/**
	 * @return the reelectionSubjects
	 */
	public String getReelectionSubjects() {
		return reelectionSubjects;
	}
	/**
	 * @param reelectionSubjects the reelectionSubjects to set
	 */
	public void setReelectionSubjects(String reelectionSubjects) {
		this.reelectionSubjects = reelectionSubjects;
	}
	/* (非 Javadoc)
	* <p>Title: toString</p>
	* <p>Description: </p>
	* @return
	* @see java.lang.Object#toString()
	*/
	@Override
	public String toString() {
		return "Enrollment [eId=" + eId + ", eYear=" + eYear + ", eProvince=" + eProvince + ", eEducation=" + eEducation
				+ ", universitiesCode=" + universitiesCode + ", universitiesName=" + universitiesName
				+ ", enrollmentMajor=" + enrollmentMajor + ", includeMajor=" + includeMajor + ", preferredSubject="
				+ preferredSubject + ", reelectionSubjects=" + reelectionSubjects + "]";
	}
	

}
