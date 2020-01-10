package cn.hqtzytb.entity;

import java.io.Serializable;
import java.util.List;

/**
 * @ClassName: Specialty
 * @Description: 专业数据信息实体类
 * @author: wuPeiLong
 * @date: 2019年11月26日
 * @Copyright:好前途教育
 * @version V1.0
 */
public class Specialty implements Serializable {

	private static final long serialVersionUID = 1L;

	/**
	 * 主键ID
	 */
	private Integer id;

	/**
	 * 专业ID
	 */
	private String specialtyId;

	/**
	 * 专业名称
	 */
	private String specialtyName;

	/**
	 * 专业介绍
	 */
	private String specialtyIntro;

	/**
	 * 专业大类名字
	 */
	private String specialtyMajorName;

	/**
	 * 专业分类类名
	 */
	private String specialtyClassName;

	/**
	 * 专业门类
	 */
	private String specialtyDivided;

	/**
	 * 专业学科分类
	 */
	private String specialtyDisciplines;

	/**
	 * 学历层次
	 */
	private String specialtyEducation;

	/**
	 * 修业年限
	 */
	private String studyDuration;

	/**
	 * 授予学位
	 */
	private String bachelorDegree;

	/**
	 * 男女比例
	 */
	private String maleFemaleRatio;

	/**
	 * 专业简介
	 */
	private String specialtySummary;

	/**
	 * 培养要求
	 */
	private String trainRequirement;

	/**
	 * 学科要求
	 */
	private String subjectRequirement;

	/**
	 * 知识能力
	 */
	private String knowledgeAbility;

	/**
	 * 考研方向
	 */
	private String postgraduateDirection;

	/**
	 * 就业职业方向
	 */
	private String employmentCareerDirection;

	/**
	 * 就业行业分布
	 */
	private String employmentIndustryDistribution;

	/**
	 * 就业地区分布
	 */
	private String employmentAreaDistribution;

	/**
	 * 主要课程
	 */
	private String majorCourses;

	/**
	 * 培养目标
	 */
	private String specialtyObjective;

	/**
	 * 就业前景
	 */
	private String specialtyEmployment;

	/**
	 * 报考要求
	 */
	private String specialtyRequirement;

	/**
	 * 物理要求
	 */
	private Double physicsPerformance;

	/**
	 * 化学要求
	 */
	private Double chemistryPerformance;

	/**
	 * 生物要求
	 */
	private Double biologyPerformance;

	/**
	 * 政治要求
	 */
	private Double politicPerformance;

	/**
	 * 历史要求
	 */
	private Double historyPerformance;

	/**
	 * 地理要求
	 */
	private Double geographyPerformance;

	/**
	 * 语文要求
	 */
	private Double chinesePerformance;

	/**
	 * 数学要求
	 */
	private Integer mathPerformance;

	/**
	 * 外语要求
	 */
	private Double foreignPerformance;

	/**
	 * 第四轮学科评估A+高校
	 */
	private String aboveA;

	/**
	 * 第四轮学科评估A高校
	 */
	private String equalA;

	/**
	 * 第四轮学科评估A-高校
	 */
	private String belowA;

	/**
	 * 第四轮学科评估B+高校
	 */
	private String aboveB;

	/**
	 * 开设院校
	 */
	private String openCollege;
	
	/**
	 * 喜欢
	 */
	private List<Enshrine> enshrineList;
	
	/**
	 * 喜欢的Id
	 */
	private Integer eId;

	public Specialty() {
		super();
	}


	public Specialty(Integer id, String specialtyId, String specialtyName, String specialtyIntro,
			String specialtyMajorName, String specialtyClassName, String specialtyDivided, String specialtyDisciplines,
			String specialtyEducation, String studyDuration, String bachelorDegree, String maleFemaleRatio,
			String specialtySummary, String trainRequirement, String subjectRequirement, String knowledgeAbility,
			String postgraduateDirection, String employmentCareerDirection, String employmentIndustryDistribution,
			String employmentAreaDistribution, String majorCourses, String specialtyObjective,
			String specialtyEmployment, String specialtyRequirement, Double physicsPerformance,
			Double chemistryPerformance, Double biologyPerformance, Double politicPerformance,
			Double historyPerformance, Double geographyPerformance, Double chinesePerformance, Integer mathPerformance,
			Double foreignPerformance, String aboveA, String equalA, String belowA, String aboveB, String openCollege,
			List<Enshrine> enshrineList) {
		super();
		this.id = id;
		this.specialtyId = specialtyId;
		this.specialtyName = specialtyName;
		this.specialtyIntro = specialtyIntro;
		this.specialtyMajorName = specialtyMajorName;
		this.specialtyClassName = specialtyClassName;
		this.specialtyDivided = specialtyDivided;
		this.specialtyDisciplines = specialtyDisciplines;
		this.specialtyEducation = specialtyEducation;
		this.studyDuration = studyDuration;
		this.bachelorDegree = bachelorDegree;
		this.maleFemaleRatio = maleFemaleRatio;
		this.specialtySummary = specialtySummary;
		this.trainRequirement = trainRequirement;
		this.subjectRequirement = subjectRequirement;
		this.knowledgeAbility = knowledgeAbility;
		this.postgraduateDirection = postgraduateDirection;
		this.employmentCareerDirection = employmentCareerDirection;
		this.employmentIndustryDistribution = employmentIndustryDistribution;
		this.employmentAreaDistribution = employmentAreaDistribution;
		this.majorCourses = majorCourses;
		this.specialtyObjective = specialtyObjective;
		this.specialtyEmployment = specialtyEmployment;
		this.specialtyRequirement = specialtyRequirement;
		this.physicsPerformance = physicsPerformance;
		this.chemistryPerformance = chemistryPerformance;
		this.biologyPerformance = biologyPerformance;
		this.politicPerformance = politicPerformance;
		this.historyPerformance = historyPerformance;
		this.geographyPerformance = geographyPerformance;
		this.chinesePerformance = chinesePerformance;
		this.mathPerformance = mathPerformance;
		this.foreignPerformance = foreignPerformance;
		this.aboveA = aboveA;
		this.equalA = equalA;
		this.belowA = belowA;
		this.aboveB = aboveB;
		this.openCollege = openCollege;
		this.enshrineList = enshrineList;
	}



	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getSpecialtyId() {
		return specialtyId;
	}

	public void setSpecialtyId(String specialtyId) {
		this.specialtyId = specialtyId;
	}

	public String getSpecialtyName() {
		return specialtyName;
	}

	public void setSpecialtyName(String specialtyName) {
		this.specialtyName = specialtyName;
	}

	public String getSpecialtyIntro() {
		return specialtyIntro;
	}

	public void setSpecialtyIntro(String specialtyIntro) {
		this.specialtyIntro = specialtyIntro;
	}

	public String getSpecialtyMajorName() {
		return specialtyMajorName;
	}

	public void setSpecialtyMajorName(String specialtyMajorName) {
		this.specialtyMajorName = specialtyMajorName;
	}

	public String getSpecialtyClassName() {
		return specialtyClassName;
	}

	public void setSpecialtyClassName(String specialtyClassName) {
		this.specialtyClassName = specialtyClassName;
	}

	public String getSpecialtyDivided() {
		return specialtyDivided;
	}

	public void setSpecialtyDivided(String specialtyDivided) {
		this.specialtyDivided = specialtyDivided;
	}

	public String getSpecialtyDisciplines() {
		return specialtyDisciplines;
	}

	public void setSpecialtyDisciplines(String specialtyDisciplines) {
		this.specialtyDisciplines = specialtyDisciplines;
	}

	public String getSpecialtyEducation() {
		return specialtyEducation;
	}

	public void setSpecialtyEducation(String specialtyEducation) {
		this.specialtyEducation = specialtyEducation;
	}

	public String getStudyDuration() {
		return studyDuration;
	}

	public void setStudyDuration(String studyDuration) {
		this.studyDuration = studyDuration;
	}

	public String getBachelorDegree() {
		return bachelorDegree;
	}

	public void setBachelorDegree(String bachelorDegree) {
		this.bachelorDegree = bachelorDegree;
	}

	public String getMaleFemaleRatio() {
		return maleFemaleRatio;
	}

	public void setMaleFemaleRatio(String maleFemaleRatio) {
		this.maleFemaleRatio = maleFemaleRatio;
	}

	public String getSpecialtySummary() {
		return specialtySummary;
	}

	public void setSpecialtySummary(String specialtySummary) {
		this.specialtySummary = specialtySummary;
	}

	public String getTrainRequirement() {
		return trainRequirement;
	}

	public void setTrainRequirement(String trainRequirement) {
		this.trainRequirement = trainRequirement;
	}

	public String getSubjectRequirement() {
		return subjectRequirement;
	}

	public void setSubjectRequirement(String subjectRequirement) {
		this.subjectRequirement = subjectRequirement;
	}

	public String getKnowledgeAbility() {
		return knowledgeAbility;
	}

	public void setKnowledgeAbility(String knowledgeAbility) {
		this.knowledgeAbility = knowledgeAbility;
	}

	public String getPostgraduateDirection() {
		return postgraduateDirection;
	}

	public void setPostgraduateDirection(String postgraduateDirection) {
		this.postgraduateDirection = postgraduateDirection;
	}

	public String getEmploymentCareerDirection() {
		return employmentCareerDirection;
	}

	public void setEmploymentCareerDirection(String employmentCareerDirection) {
		this.employmentCareerDirection = employmentCareerDirection;
	}

	public String getEmploymentIndustryDistribution() {
		return employmentIndustryDistribution;
	}

	public void setEmploymentIndustryDistribution(String employmentIndustryDistribution) {
		this.employmentIndustryDistribution = employmentIndustryDistribution;
	}

	public String getEmploymentAreaDistribution() {
		return employmentAreaDistribution;
	}

	public void setEmploymentAreaDistribution(String employmentAreaDistribution) {
		this.employmentAreaDistribution = employmentAreaDistribution;
	}

	public String getMajorCourses() {
		return majorCourses;
	}

	public void setMajorCourses(String majorCourses) {
		this.majorCourses = majorCourses;
	}

	public String getSpecialtyObjective() {
		return specialtyObjective;
	}

	public void setSpecialtyObjective(String specialtyObjective) {
		this.specialtyObjective = specialtyObjective;
	}

	public String getSpecialtyEmployment() {
		return specialtyEmployment;
	}

	public void setSpecialtyEmployment(String specialtyEmployment) {
		this.specialtyEmployment = specialtyEmployment;
	}

	public String getSpecialtyRequirement() {
		return specialtyRequirement;
	}

	public void setSpecialtyRequirement(String specialtyRequirement) {
		this.specialtyRequirement = specialtyRequirement;
	}

	public Double getPhysicsPerformance() {
		return physicsPerformance;
	}

	public void setPhysicsPerformance(Double physicsPerformance) {
		this.physicsPerformance = physicsPerformance;
	}

	public Double getChemistryPerformance() {
		return chemistryPerformance;
	}

	public void setChemistryPerformance(Double chemistryPerformance) {
		this.chemistryPerformance = chemistryPerformance;
	}

	public Double getBiologyPerformance() {
		return biologyPerformance;
	}

	public void setBiologyPerformance(Double biologyPerformance) {
		this.biologyPerformance = biologyPerformance;
	}

	public Double getPoliticPerformance() {
		return politicPerformance;
	}

	public void setPoliticPerformance(Double politicPerformance) {
		this.politicPerformance = politicPerformance;
	}

	public Double getHistoryPerformance() {
		return historyPerformance;
	}

	public void setHistoryPerformance(Double historyPerformance) {
		this.historyPerformance = historyPerformance;
	}

	public Double getGeographyPerformance() {
		return geographyPerformance;
	}

	public void setGeographyPerformance(Double geographyPerformance) {
		this.geographyPerformance = geographyPerformance;
	}

	public Double getChinesePerformance() {
		return chinesePerformance;
	}

	public void setChinesePerformance(Double chinesePerformance) {
		this.chinesePerformance = chinesePerformance;
	}

	public Integer getMathPerformance() {
		return mathPerformance;
	}

	public void setMathPerformance(Integer mathPerformance) {
		this.mathPerformance = mathPerformance;
	}

	public Double getForeignPerformance() {
		return foreignPerformance;
	}

	public void setForeignPerformance(Double foreignPerformance) {
		this.foreignPerformance = foreignPerformance;
	}

	public String getAboveA() {
		return aboveA;
	}

	public void setAboveA(String aboveA) {
		this.aboveA = aboveA;
	}

	public String getEqualA() {
		return equalA;
	}

	public void setEqualA(String equalA) {
		this.equalA = equalA;
	}

	public String getBelowA() {
		return belowA;
	}

	public void setBelowA(String belowA) {
		this.belowA = belowA;
	}

	public String getAboveB() {
		return aboveB;
	}

	public void setAboveB(String aboveB) {
		this.aboveB = aboveB;
	}

	public String getOpenCollege() {
		return openCollege;
	}

	public void setOpenCollege(String openCollege) {
		this.openCollege = openCollege;
	}

	
	public List<Enshrine> getEnshrineList() {
		return enshrineList;
	}


	public void setEnshrineList(List<Enshrine> enshrineList) {
		this.enshrineList = enshrineList;
	}

	

	public Integer geteId() {
		return eId;
	}


	public void seteId(Integer eId) {
		this.eId = eId;
	}


	@Override
	public String toString() {
		return "Specialty [id=" + id + ", specialtyId=" + specialtyId + ", specialtyName=" + specialtyName
				+ ", specialtyIntro=" + specialtyIntro + ", specialtyMajorName=" + specialtyMajorName
				+ ", specialtyClassName=" + specialtyClassName + ", specialtyDivided=" + specialtyDivided
				+ ", specialtyDisciplines=" + specialtyDisciplines + ", specialtyEducation=" + specialtyEducation
				+ ", studyDuration=" + studyDuration + ", bachelorDegree=" + bachelorDegree + ", maleFemaleRatio="
				+ maleFemaleRatio + ", specialtySummary=" + specialtySummary + ", trainRequirement=" + trainRequirement
				+ ", subjectRequirement=" + subjectRequirement + ", knowledgeAbility=" + knowledgeAbility
				+ ", postgraduateDirection=" + postgraduateDirection + ", employmentCareerDirection="
				+ employmentCareerDirection + ", employmentIndustryDistribution=" + employmentIndustryDistribution
				+ ", employmentAreaDistribution=" + employmentAreaDistribution + ", majorCourses=" + majorCourses
				+ ", specialtyObjective=" + specialtyObjective + ", specialtyEmployment=" + specialtyEmployment
				+ ", specialtyRequirement=" + specialtyRequirement + ", physicsPerformance=" + physicsPerformance
				+ ", chemistryPerformance=" + chemistryPerformance + ", biologyPerformance=" + biologyPerformance
				+ ", politicPerformance=" + politicPerformance + ", historyPerformance=" + historyPerformance
				+ ", geographyPerformance=" + geographyPerformance + ", chinesePerformance=" + chinesePerformance
				+ ", mathPerformance=" + mathPerformance + ", foreignPerformance=" + foreignPerformance + ", aboveA="
				+ aboveA + ", equalA=" + equalA + ", belowA=" + belowA + ", aboveB=" + aboveB + ", openCollege="
				+ openCollege + ", enshrineList=" + enshrineList + ", eId=" + eId + "]";
	}

}
