package cn.hqtzytb.entity;

import java.io.Serializable;

/**
* @Title: Vocation.java
* @Package cn.hqtzytb.entity
* @Description:(用一句话描述该文件做什么)
* @author: ZhouLingZhang
* @date 2019年9月30日
* @Copyright:好前途教育
* @version V1.0
*/
public class Vocation implements Serializable {
	

	
	/**
	* @Fields serialVersionUID :(用一句话描述这个变量表示什么)
	*/
	private static final long serialVersionUID = 6985654590748741720L;
	private Integer vId;
	private String vocationId;
	private String vocationName;
	private String industryName;
	private String vocationBrief;
	private String prospect;
	private String workExperience;
	private String workContent;
	private String educationCredential;
	private String relationSpecialty;	
	private String educationQalification;
	private String specialtyKnow;
	private String specialtySkill;
	private String workYear;
	private String workAchieved;
	private String organizationAbility;
	private String planAbility;
	/**
	* 创建一个新的实例 Vocation.
	*
	*/
	public Vocation() {
		super();
	}
	/**
	* 创建一个新的实例 Vocation.
	*
	* @param vId
	* @param vocationId
	* @param vocationName
	* @param industryName
	* @param vocationBrief
	* @param prospect
	* @param workExperience
	* @param workContent
	* @param educationCredential
	* @param relationSpecialty
	* @param educationQalification
	* @param specialtyKnow
	* @param specialtySkill
	* @param workYear
	* @param workAchieved
	* @param organizationAbility
	* @param planAbility
	*/
	public Vocation(Integer vId, String vocationId, String vocationName, String industryName, String vocationBrief,
			String prospect, String workExperience, String workContent, String educationCredential,
			String relationSpecialty, String educationQalification, String specialtyKnow, String specialtySkill,
			String workYear, String workAchieved, String organizationAbility, String planAbility) {
		super();
		this.vId = vId;
		this.vocationId = vocationId;
		this.vocationName = vocationName;
		this.industryName = industryName;
		this.vocationBrief = vocationBrief;
		this.prospect = prospect;
		this.workExperience = workExperience;
		this.workContent = workContent;
		this.educationCredential = educationCredential;
		this.relationSpecialty = relationSpecialty;
		this.educationQalification = educationQalification;
		this.specialtyKnow = specialtyKnow;
		this.specialtySkill = specialtySkill;
		this.workYear = workYear;
		this.workAchieved = workAchieved;
		this.organizationAbility = organizationAbility;
		this.planAbility = planAbility;
	}
	/**
	 * @return the vId
	 */
	public Integer getvId() {
		return vId;
	}
	/**
	 * @param vId the vId to set
	 */
	public void setvId(Integer vId) {
		this.vId = vId;
	}
	/**
	 * @return the vocationId
	 */
	public String getVocationId() {
		return vocationId;
	}
	/**
	 * @param vocationId the vocationId to set
	 */
	public void setVocationId(String vocationId) {
		this.vocationId = vocationId;
	}
	/**
	 * @return the vocationName
	 */
	public String getVocationName() {
		return vocationName;
	}
	/**
	 * @param vocationName the vocationName to set
	 */
	public void setVocationName(String vocationName) {
		this.vocationName = vocationName;
	}
	/**
	 * @return the industryName
	 */
	public String getIndustryName() {
		return industryName;
	}
	/**
	 * @param industryName the industryName to set
	 */
	public void setIndustryName(String industryName) {
		this.industryName = industryName;
	}
	/**
	 * @return the vocationBrief
	 */
	public String getVocationBrief() {
		return vocationBrief;
	}
	/**
	 * @param vocationBrief the vocationBrief to set
	 */
	public void setVocationBrief(String vocationBrief) {
		this.vocationBrief = vocationBrief;
	}
	/**
	 * @return the prospect
	 */
	public String getProspect() {
		return prospect;
	}
	/**
	 * @param prospect the prospect to set
	 */
	public void setProspect(String prospect) {
		this.prospect = prospect;
	}
	/**
	 * @return the workExperience
	 */
	public String getWorkExperience() {
		return workExperience;
	}
	/**
	 * @param workExperience the workExperience to set
	 */
	public void setWorkExperience(String workExperience) {
		this.workExperience = workExperience;
	}
	/**
	 * @return the workContent
	 */
	public String getWorkContent() {
		return workContent;
	}
	/**
	 * @param workContent the workContent to set
	 */
	public void setWorkContent(String workContent) {
		this.workContent = workContent;
	}
	/**
	 * @return the educationCredential
	 */
	public String getEducationCredential() {
		return educationCredential;
	}
	/**
	 * @param educationCredential the educationCredential to set
	 */
	public void setEducationCredential(String educationCredential) {
		this.educationCredential = educationCredential;
	}
	/**
	 * @return the relationSpecialty
	 */
	public String getRelationSpecialty() {
		return relationSpecialty;
	}
	/**
	 * @param relationSpecialty the relationSpecialty to set
	 */
	public void setRelationSpecialty(String relationSpecialty) {
		this.relationSpecialty = relationSpecialty;
	}
	/**
	 * @return the educationQalification
	 */
	public String getEducationQalification() {
		return educationQalification;
	}
	/**
	 * @param educationQalification the educationQalification to set
	 */
	public void setEducationQalification(String educationQalification) {
		this.educationQalification = educationQalification;
	}
	/**
	 * @return the specialtyKnow
	 */
	public String getSpecialtyKnow() {
		return specialtyKnow;
	}
	/**
	 * @param specialtyKnow the specialtyKnow to set
	 */
	public void setSpecialtyKnow(String specialtyKnow) {
		this.specialtyKnow = specialtyKnow;
	}
	/**
	 * @return the specialtySkill
	 */
	public String getSpecialtySkill() {
		return specialtySkill;
	}
	/**
	 * @param specialtySkill the specialtySkill to set
	 */
	public void setSpecialtySkill(String specialtySkill) {
		this.specialtySkill = specialtySkill;
	}
	/**
	 * @return the workYear
	 */
	public String getWorkYear() {
		return workYear;
	}
	/**
	 * @param workYear the workYear to set
	 */
	public void setWorkYear(String workYear) {
		this.workYear = workYear;
	}
	/**
	 * @return the workAchieved
	 */
	public String getWorkAchieved() {
		return workAchieved;
	}
	/**
	 * @param workAchieved the workAchieved to set
	 */
	public void setWorkAchieved(String workAchieved) {
		this.workAchieved = workAchieved;
	}
	/**
	 * @return the organizationAbility
	 */
	public String getOrganizationAbility() {
		return organizationAbility;
	}
	/**
	 * @param organizationAbility the organizationAbility to set
	 */
	public void setOrganizationAbility(String organizationAbility) {
		this.organizationAbility = organizationAbility;
	}
	/**
	 * @return the planAbility
	 */
	public String getPlanAbility() {
		return planAbility;
	}
	/**
	 * @param planAbility the planAbility to set
	 */
	public void setPlanAbility(String planAbility) {
		this.planAbility = planAbility;
	}
	/* (非 Javadoc)
	* <p>Title: toString</p>
	* <p>Description: </p>
	* @return
	* @see java.lang.Object#toString()
	*/
	@Override
	public String toString() {
		return "Vocation [vId=" + vId + ", vocationId=" + vocationId + ", vocationName=" + vocationName
				+ ", industryName=" + industryName + ", vocationBrief=" + vocationBrief + ", prospect=" + prospect
				+ ", workExperience=" + workExperience + ", workContent=" + workContent + ", educationCredential="
				+ educationCredential + ", relationSpecialty=" + relationSpecialty + ", educationQalification="
				+ educationQalification + ", specialtyKnow=" + specialtyKnow + ", specialtySkill=" + specialtySkill
				+ ", workYear=" + workYear + ", workAchieved=" + workAchieved + ", organizationAbility="
				+ organizationAbility + ", planAbility=" + planAbility + "]";
	}
	
}
