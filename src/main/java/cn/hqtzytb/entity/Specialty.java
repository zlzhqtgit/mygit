package cn.hqtzytb.entity;

import java.io.Serializable;

/**
* @Title: Specialty.java
* @Package cn.hqtzytb.entity
* @Description:(专业数据表实体类)
* @author: ZhouLingZhang
* @date 2019年9月28日
* @Copyright:好前途教育
* @version V1.0
*/
public class Specialty implements Serializable{
	
	/**
	* @Fields serialVersionUID :(序列化)
	*/
	private static final long serialVersionUID = 4321730060539993250L;	
	private Integer id;
	private String specialtyId;
	private String specialtyName;
	private String specialtyIntro;
	private String specialtyMajor_name;
	private String specialtyClassName;
	private String specialtyDivided;
	private String specialtyDisciplines;
	private String majorCourses;
	private String specialtyObjective;
	private String specialtyEmployment;
	private String specialtyRequirement;
	private String physicsPerformance;
	private String chemistryPerformance;
	private String biologyPerformance;
	private String politicPerformance;
	private String historyPerformance;
	private String geographyPerformance;
	private String chinesePerformance;
	private String mathPerformance;
	private String foreignPerformance;
	/**
	* 创建一个新的实例 Specialty.
	*
	*/
	public Specialty() {
		super();
	}
	/**
	* 创建一个新的实例 Specialty.
	*
	* @param id
	* @param specialtyId
	* @param specialtyName
	* @param specialtyIntro
	* @param specialtyMajor_name
	* @param specialtyClassName
	* @param specialtyDivided
	* @param specialtyDisciplines
	* @param majorCourses
	* @param specialtyObjective
	* @param specialtyEmployment
	* @param specialtyRequirement
	* @param physicsPerformance
	* @param chemistryPerformance
	* @param biologyPerformance
	* @param politicPerformance
	* @param historyPerformance
	* @param geographyPerformance
	* @param chinesePerformance
	* @param mathPerformance
	* @param foreignPerformance
	*/
	public Specialty(Integer id, String specialtyId, String specialtyName, String specialtyIntro,
			String specialtyMajor_name, String specialtyClassName, String specialtyDivided, String specialtyDisciplines,
			String majorCourses, String specialtyObjective, String specialtyEmployment, String specialtyRequirement,
			String physicsPerformance, String chemistryPerformance, String biologyPerformance,
			String politicPerformance, String historyPerformance, String geographyPerformance,
			String chinesePerformance, String mathPerformance, String foreignPerformance) {
		super();
		this.id = id;
		this.specialtyId = specialtyId;
		this.specialtyName = specialtyName;
		this.specialtyIntro = specialtyIntro;
		this.specialtyMajor_name = specialtyMajor_name;
		this.specialtyClassName = specialtyClassName;
		this.specialtyDivided = specialtyDivided;
		this.specialtyDisciplines = specialtyDisciplines;
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
	}
	/**
	 * @return the id
	 */
	public Integer getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(Integer id) {
		this.id = id;
	}
	/**
	 * @return the specialtyId
	 */
	public String getSpecialtyId() {
		return specialtyId;
	}
	/**
	 * @param specialtyId the specialtyId to set
	 */
	public void setSpecialtyId(String specialtyId) {
		this.specialtyId = specialtyId;
	}
	/**
	 * @return the specialtyName
	 */
	public String getSpecialtyName() {
		return specialtyName;
	}
	/**
	 * @param specialtyName the specialtyName to set
	 */
	public void setSpecialtyName(String specialtyName) {
		this.specialtyName = specialtyName;
	}
	/**
	 * @return the specialtyIntro
	 */
	public String getSpecialtyIntro() {
		return specialtyIntro;
	}
	/**
	 * @param specialtyIntro the specialtyIntro to set
	 */
	public void setSpecialtyIntro(String specialtyIntro) {
		this.specialtyIntro = specialtyIntro;
	}
	/**
	 * @return the specialtyMajor_name
	 */
	public String getSpecialtyMajor_name() {
		return specialtyMajor_name;
	}
	/**
	 * @param specialtyMajor_name the specialtyMajor_name to set
	 */
	public void setSpecialtyMajor_name(String specialtyMajor_name) {
		this.specialtyMajor_name = specialtyMajor_name;
	}
	/**
	 * @return the specialtyClassName
	 */
	public String getSpecialtyClassName() {
		return specialtyClassName;
	}
	/**
	 * @param specialtyClassName the specialtyClassName to set
	 */
	public void setSpecialtyClassName(String specialtyClassName) {
		this.specialtyClassName = specialtyClassName;
	}
	/**
	 * @return the specialtyDivided
	 */
	public String getSpecialtyDivided() {
		return specialtyDivided;
	}
	/**
	 * @param specialtyDivided the specialtyDivided to set
	 */
	public void setSpecialtyDivided(String specialtyDivided) {
		this.specialtyDivided = specialtyDivided;
	}
	/**
	 * @return the specialtyDisciplines
	 */
	public String getSpecialtyDisciplines() {
		return specialtyDisciplines;
	}
	/**
	 * @param specialtyDisciplines the specialtyDisciplines to set
	 */
	public void setSpecialtyDisciplines(String specialtyDisciplines) {
		this.specialtyDisciplines = specialtyDisciplines;
	}
	/**
	 * @return the majorCourses
	 */
	public String getMajorCourses() {
		return majorCourses;
	}
	/**
	 * @param majorCourses the majorCourses to set
	 */
	public void setMajorCourses(String majorCourses) {
		this.majorCourses = majorCourses;
	}
	/**
	 * @return the specialtyObjective
	 */
	public String getSpecialtyObjective() {
		return specialtyObjective;
	}
	/**
	 * @param specialtyObjective the specialtyObjective to set
	 */
	public void setSpecialtyObjective(String specialtyObjective) {
		this.specialtyObjective = specialtyObjective;
	}
	/**
	 * @return the specialtyEmployment
	 */
	public String getSpecialtyEmployment() {
		return specialtyEmployment;
	}
	/**
	 * @param specialtyEmployment the specialtyEmployment to set
	 */
	public void setSpecialtyEmployment(String specialtyEmployment) {
		this.specialtyEmployment = specialtyEmployment;
	}
	/**
	 * @return the specialtyRequirement
	 */
	public String getSpecialtyRequirement() {
		return specialtyRequirement;
	}
	/**
	 * @param specialtyRequirement the specialtyRequirement to set
	 */
	public void setSpecialtyRequirement(String specialtyRequirement) {
		this.specialtyRequirement = specialtyRequirement;
	}
	/**
	 * @return the physicsPerformance
	 */
	public String getPhysicsPerformance() {
		return physicsPerformance;
	}
	/**
	 * @param physicsPerformance the physicsPerformance to set
	 */
	public void setPhysicsPerformance(String physicsPerformance) {
		this.physicsPerformance = physicsPerformance;
	}
	/**
	 * @return the chemistryPerformance
	 */
	public String getChemistryPerformance() {
		return chemistryPerformance;
	}
	/**
	 * @param chemistryPerformance the chemistryPerformance to set
	 */
	public void setChemistryPerformance(String chemistryPerformance) {
		this.chemistryPerformance = chemistryPerformance;
	}
	/**
	 * @return the biologyPerformance
	 */
	public String getBiologyPerformance() {
		return biologyPerformance;
	}
	/**
	 * @param biologyPerformance the biologyPerformance to set
	 */
	public void setBiologyPerformance(String biologyPerformance) {
		this.biologyPerformance = biologyPerformance;
	}
	/**
	 * @return the politicPerformance
	 */
	public String getPoliticPerformance() {
		return politicPerformance;
	}
	/**
	 * @param politicPerformance the politicPerformance to set
	 */
	public void setPoliticPerformance(String politicPerformance) {
		this.politicPerformance = politicPerformance;
	}
	/**
	 * @return the historyPerformance
	 */
	public String getHistoryPerformance() {
		return historyPerformance;
	}
	/**
	 * @param historyPerformance the historyPerformance to set
	 */
	public void setHistoryPerformance(String historyPerformance) {
		this.historyPerformance = historyPerformance;
	}
	/**
	 * @return the geographyPerformance
	 */
	public String getGeographyPerformance() {
		return geographyPerformance;
	}
	/**
	 * @param geographyPerformance the geographyPerformance to set
	 */
	public void setGeographyPerformance(String geographyPerformance) {
		this.geographyPerformance = geographyPerformance;
	}
	/**
	 * @return the chinesePerformance
	 */
	public String getChinesePerformance() {
		return chinesePerformance;
	}
	/**
	 * @param chinesePerformance the chinesePerformance to set
	 */
	public void setChinesePerformance(String chinesePerformance) {
		this.chinesePerformance = chinesePerformance;
	}
	/**
	 * @return the mathPerformance
	 */
	public String getMathPerformance() {
		return mathPerformance;
	}
	/**
	 * @param mathPerformance the mathPerformance to set
	 */
	public void setMathPerformance(String mathPerformance) {
		this.mathPerformance = mathPerformance;
	}
	/**
	 * @return the foreignPerformance
	 */
	public String getForeignPerformance() {
		return foreignPerformance;
	}
	/**
	 * @param foreignPerformance the foreignPerformance to set
	 */
	public void setForeignPerformance(String foreignPerformance) {
		this.foreignPerformance = foreignPerformance;
	}
	/* (非 Javadoc)
	* <p>Title: toString</p>
	* <p>Description: </p>
	* @return
	* @see java.lang.Object#toString()
	*/
	@Override
	public String toString() {
		return "Specialty [id=" + id + ", specialtyId=" + specialtyId + ", specialtyName=" + specialtyName
				+ ", specialtyIntro=" + specialtyIntro + ", specialtyMajor_name=" + specialtyMajor_name
				+ ", specialtyClassName=" + specialtyClassName + ", specialtyDivided=" + specialtyDivided
				+ ", specialtyDisciplines=" + specialtyDisciplines + ", majorCourses=" + majorCourses
				+ ", specialtyObjective=" + specialtyObjective + ", specialtyEmployment=" + specialtyEmployment
				+ ", specialtyRequirement=" + specialtyRequirement + ", physicsPerformance=" + physicsPerformance
				+ ", chemistryPerformance=" + chemistryPerformance + ", biologyPerformance=" + biologyPerformance
				+ ", politicPerformance=" + politicPerformance + ", historyPerformance=" + historyPerformance
				+ ", geographyPerformance=" + geographyPerformance + ", chinesePerformance=" + chinesePerformance
				+ ", mathPerformance=" + mathPerformance + ", foreignPerformance=" + foreignPerformance + "]";
	}
	
}
