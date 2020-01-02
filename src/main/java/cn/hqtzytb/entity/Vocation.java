package cn.hqtzytb.entity;

import java.io.Serializable;
import java.util.List;

/**
 * @ClassName: Vocation
 * @Description: 职业数据信息实体类
 * @author: wuPeiLong
 * @date: 2019年11月26日
 * @Copyright:好前途教育
 * @version V1.0
 */
public class Vocation implements Serializable {

	private static final long serialVersionUID = 1L;

	/**
	 * 主键ID
	 */
	private Integer vId;

	/**
	 * 职业ID
	 */
	private String vocationId;

	/**
	 * 名称
	 */
	private String vocationName;

	/**
	 * 行业名称
	 */
	private String industryName;

	/**
	 * 行业大类
	 */
	private String industryMajorName;

	/**
	 * 职业介绍
	 */
	private String vocationBrief;

	/**
	 * 职业前景
	 */
	private String prospect;

	/**
	 * 工作经验
	 */
	private String workExperience;

	/**
	 * 工作内容
	 */
	private String workContent;

	/**
	 * 教育要求
	 */
	private String educationCredential;

	/**
	 * 关联专业
	 */
	private String relationSpecialty;

	/**
	 * 薪资趋势
	 */
	private String salaryTrend;

	/**
	 * 薪资分布
	 */
	private String salaryDistribution;

	/**
	 * 就业趋势(按学历)
	 */
	private String employmentSituationEducation;

	/**
	 * 就业趋势(按经验)
	 */
	private String employmentSituationExperience;

	/**
	 * 从业资格要求
	 */
	private String requirementQualification;

	/**
	 * 学历要求
	 */
	private String educationQualification;

	/**
	 * 专业知识
	 */
	private String specialtyKnow;

	/**
	 * 专业技能
	 */
	private String specialtySkill;

	/**
	 * 工作年限
	 */
	private String workYear;

	/**
	 * 工作成果
	 */
	private String workAchieved;

	/**
	 * 组织能力
	 */
	private String organizationAbility;

	/**
	 * 统筹能力
	 */
	private String planAbility;

	/**
	 * 收入信息
	 */
	private String incomeInfo;

	/**
	 * 喜欢
	 */
	private List<Enshrine> enshrineList;

	public Vocation() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Vocation(Integer vId, String vocationId, String vocationName, String industryName, String industryMajorName,
			String vocationBrief, String prospect, String workExperience, String workContent,
			String educationCredential, String relationSpecialty, String salaryTrend, String salaryDistribution,
			String employmentSituationEducation, String employmentSituationExperience, String requirementQualification,
			String educationQualification, String specialtyKnow, String specialtySkill, String workYear,
			String workAchieved, String organizationAbility, String planAbility, String incomeInfo,
			List<Enshrine> enshrineList) {
		super();
		this.vId = vId;
		this.vocationId = vocationId;
		this.vocationName = vocationName;
		this.industryName = industryName;
		this.industryMajorName = industryMajorName;
		this.vocationBrief = vocationBrief;
		this.prospect = prospect;
		this.workExperience = workExperience;
		this.workContent = workContent;
		this.educationCredential = educationCredential;
		this.relationSpecialty = relationSpecialty;
		this.salaryTrend = salaryTrend;
		this.salaryDistribution = salaryDistribution;
		this.employmentSituationEducation = employmentSituationEducation;
		this.employmentSituationExperience = employmentSituationExperience;
		this.requirementQualification = requirementQualification;
		this.educationQualification = educationQualification;
		this.specialtyKnow = specialtyKnow;
		this.specialtySkill = specialtySkill;
		this.workYear = workYear;
		this.workAchieved = workAchieved;
		this.organizationAbility = organizationAbility;
		this.planAbility = planAbility;
		this.incomeInfo = incomeInfo;
		this.enshrineList = enshrineList;
	}

	public Integer getvId() {
		return vId;
	}

	public void setvId(Integer vId) {
		this.vId = vId;
	}

	public String getVocationId() {
		return vocationId;
	}

	public void setVocationId(String vocationId) {
		this.vocationId = vocationId;
	}

	public String getVocationName() {
		return vocationName;
	}

	public void setVocationName(String vocationName) {
		this.vocationName = vocationName;
	}

	public String getIndustryName() {
		return industryName;
	}

	public void setIndustryName(String industryName) {
		this.industryName = industryName;
	}

	public String getIndustryMajorName() {
		return industryMajorName;
	}

	public void setIndustryMajorName(String industryMajorName) {
		this.industryMajorName = industryMajorName;
	}

	public String getVocationBrief() {
		return vocationBrief;
	}

	public void setVocationBrief(String vocationBrief) {
		this.vocationBrief = vocationBrief;
	}

	public String getProspect() {
		return prospect;
	}

	public void setProspect(String prospect) {
		this.prospect = prospect;
	}

	public String getWorkExperience() {
		return workExperience;
	}

	public void setWorkExperience(String workExperience) {
		this.workExperience = workExperience;
	}

	public String getWorkContent() {
		return workContent;
	}

	public void setWorkContent(String workContent) {
		this.workContent = workContent;
	}

	public String getEducationCredential() {
		return educationCredential;
	}

	public void setEducationCredential(String educationCredential) {
		this.educationCredential = educationCredential;
	}

	public String getRelationSpecialty() {
		return relationSpecialty;
	}

	public void setRelationSpecialty(String relationSpecialty) {
		this.relationSpecialty = relationSpecialty;
	}

	public String getSalaryTrend() {
		return salaryTrend;
	}

	public void setSalaryTrend(String salaryTrend) {
		this.salaryTrend = salaryTrend;
	}

	public String getSalaryDistribution() {
		return salaryDistribution;
	}

	public void setSalaryDistribution(String salaryDistribution) {
		this.salaryDistribution = salaryDistribution;
	}

	public String getEmploymentSituationEducation() {
		return employmentSituationEducation;
	}

	public void setEmploymentSituationEducation(String employmentSituationEducation) {
		this.employmentSituationEducation = employmentSituationEducation;
	}

	public String getEmploymentSituationExperience() {
		return employmentSituationExperience;
	}

	public void setEmploymentSituationExperience(String employmentSituationExperience) {
		this.employmentSituationExperience = employmentSituationExperience;
	}

	public String getRequirementQualification() {
		return requirementQualification;
	}

	public void setRequirementQualification(String requirementQualification) {
		this.requirementQualification = requirementQualification;
	}

	public String getEducationQualification() {
		return educationQualification;
	}

	public void setEducationQualification(String educationQualification) {
		this.educationQualification = educationQualification;
	}

	public String getSpecialtyKnow() {
		return specialtyKnow;
	}

	public void setSpecialtyKnow(String specialtyKnow) {
		this.specialtyKnow = specialtyKnow;
	}

	public String getSpecialtySkill() {
		return specialtySkill;
	}

	public void setSpecialtySkill(String specialtySkill) {
		this.specialtySkill = specialtySkill;
	}

	public String getWorkYear() {
		return workYear;
	}

	public void setWorkYear(String workYear) {
		this.workYear = workYear;
	}

	public String getWorkAchieved() {
		return workAchieved;
	}

	public void setWorkAchieved(String workAchieved) {
		this.workAchieved = workAchieved;
	}

	public String getOrganizationAbility() {
		return organizationAbility;
	}

	public void setOrganizationAbility(String organizationAbility) {
		this.organizationAbility = organizationAbility;
	}

	public String getPlanAbility() {
		return planAbility;
	}

	public void setPlanAbility(String planAbility) {
		this.planAbility = planAbility;
	}

	public String getIncomeInfo() {
		return incomeInfo;
	}

	public void setIncomeInfo(String incomeInfo) {
		this.incomeInfo = incomeInfo;
	}

	public List<Enshrine> getEnshrineList() {
		return enshrineList;
	}

	public void setEnshrineList(List<Enshrine> enshrineList) {
		this.enshrineList = enshrineList;
	}

	@Override
	public String toString() {
		return "Vocation [vId=" + vId + ", vocationId=" + vocationId + ", vocationName=" + vocationName
				+ ", industryName=" + industryName + ", industryMajorName=" + industryMajorName + ", vocationBrief="
				+ vocationBrief + ", prospect=" + prospect + ", workExperience=" + workExperience + ", workContent="
				+ workContent + ", educationCredential=" + educationCredential + ", relationSpecialty="
				+ relationSpecialty + ", salaryTrend=" + salaryTrend + ", salaryDistribution=" + salaryDistribution
				+ ", employmentSituationEducation=" + employmentSituationEducation + ", employmentSituationExperience="
				+ employmentSituationExperience + ", requirementQualification=" + requirementQualification
				+ ", educationQualification=" + educationQualification + ", specialtyKnow=" + specialtyKnow
				+ ", specialtySkill=" + specialtySkill + ", workYear=" + workYear + ", workAchieved=" + workAchieved
				+ ", organizationAbility=" + organizationAbility + ", planAbility=" + planAbility + ", incomeInfo="
				+ incomeInfo + ", enshrineList=" + enshrineList + "]";
	}

}
