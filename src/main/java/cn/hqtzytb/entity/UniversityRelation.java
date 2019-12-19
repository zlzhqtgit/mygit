package cn.hqtzytb.entity;


import java.io.Serializable;

/**
 * @ClassName: Vocation
 * @Description: 大学招生信息实体类
 * @author: wuPeiLong
 * @date: 2019年12月03日
 * @Copyright:好前途教育
 * @version V1.0
 */
public class UniversityRelation implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 主键ID
     */
    private Integer id;

    /**
     * 大学编码
     */
    private String universitiesCode;

    /**
     * 年份
     */
    private String year;

    /**
     * 选科类型
     */
    private String subjectType;

    /**
     * 录取批次
     */
    private String admissionBatch;
    
    /**
     * 院校分数线
     */
    private String collegeScoreLine;

    /**
     * 招生计划
     */
    private String enrollmentPlan;

    /**
     * 专业录取分数线
     */
    private String professionalAdmissionScore;

    /**
     * 招生简章
     */
    private String admissionsBrochure;

    /**
     * 招生章程
     */
    private String admissionsRegulations;

	public UniversityRelation() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UniversityRelation(Integer id, String universitiesCode, String year, String subjectType,
			String admissionBatch, String collegeScoreLine, String enrollmentPlan, String professionalAdmissionScore,
			String admissionsBrochure, String admissionsRegulations) {
		super();
		this.id = id;
		this.universitiesCode = universitiesCode;
		this.year = year;
		this.subjectType = subjectType;
		this.admissionBatch = admissionBatch;
		this.collegeScoreLine = collegeScoreLine;
		this.enrollmentPlan = enrollmentPlan;
		this.professionalAdmissionScore = professionalAdmissionScore;
		this.admissionsBrochure = admissionsBrochure;
		this.admissionsRegulations = admissionsRegulations;
	}

	public Integer getId() {
		return id;
	}

	public UniversityRelation setId(Integer id) {
		this.id = id;
		return this;
	}

	public String getUniversitiesCode() {
		return universitiesCode;
	}

	public UniversityRelation setUniversitiesCode(String universitiesCode) {
		this.universitiesCode = universitiesCode;
		return this;
	}

	public String getYear() {
		return year;
	}

	public UniversityRelation setYear(String year) {
		this.year = year;
		return this;
	}

	public String getSubjectType() {
		return subjectType;
	}

	public UniversityRelation setSubjectType(String subjectType) {
		this.subjectType = subjectType;
		return this;
	}

	public String getAdmissionBatch() {
		return admissionBatch;
	}

	public UniversityRelation setAdmissionBatch(String admissionBatch) {
		this.admissionBatch = admissionBatch;
		return this;
	}

	public String getCollegeScoreLine() {
		return collegeScoreLine;
	}

	public UniversityRelation setCollegeScoreLine(String collegeScoreLine) {
		this.collegeScoreLine = collegeScoreLine;
		return this;
	}

	public String getEnrollmentPlan() {
		return enrollmentPlan;
	}

	public UniversityRelation setEnrollmentPlan(String enrollmentPlan) {
		this.enrollmentPlan = enrollmentPlan;
		return this;
	}

	public String getProfessionalAdmissionScore() {
		return professionalAdmissionScore;
	}

	public UniversityRelation setProfessionalAdmissionScore(String professionalAdmissionScore) {
		this.professionalAdmissionScore = professionalAdmissionScore;
		return this;
	}

	public String getAdmissionsBrochure() {
		return admissionsBrochure;
	}

	public UniversityRelation setAdmissionsBrochure(String admissionsBrochure) {
		this.admissionsBrochure = admissionsBrochure;
		return this;
	}

	public String getAdmissionsRegulations() {
		return admissionsRegulations;
	}

	public UniversityRelation setAdmissionsRegulations(String admissionsRegulations) {
		this.admissionsRegulations = admissionsRegulations;
		return this;
		
	}

	
    

}
