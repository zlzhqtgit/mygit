package cn.hqtzytb.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * @ClassName: TaskDetails
 * @Description: 用户任务详情实体类
 * @author: wuPeiLong
 * @date: 2019年12月29日
 * @Copyright:好前途教育
 * @version V1.0
 */
public class TaskDetails implements Serializable{
	
	/**
	* serialVersionUID
	*/
	private static final long serialVersionUID = 4361842155439077460L;
	
	/**
	 * 任务ID
	 */
	private Integer taskId;
	/**
	 * 任务详细表ID
	 */
	private Integer detailsId;
	/**
	 * 任务名字
	 */
	private String taskName;
	/**
	 * 任务内容
	 */
	private String taskContent;
	/**
	 * 任务状态  0-进行中1-已结束
	 */
	private Integer status;	
	/**
	 * 任务详细表状态  0-未开始 1-进行中 2-已结束
	 */
	private Integer dStatus;
	/**
	 * 任务结果
	 */
	private String dResult;

	/**
	 * 用户ID
	 */
	private Integer uid;
	/**
	 * 用户名字
	 */
	private String username;	
	/**
	 * 学届   例：2019届
	 */
	private String educationalCircles;
	/**
	 * 年级
	 */
	private String grade;	
	/**
	 * 班级
	 */
	private String className;	
	
	/**
	 * 任务开始时间
	 */
	private Date creationTime;

	public TaskDetails() {
		super();
	}


	public TaskDetails(Integer taskId, Integer detailsId, String taskName, String taskContent, Integer status,
			Integer dStatus, String dResult, Integer uid, String username, String educationalCircles, String grade,
			String className, Date creationTime) {
		super();
		this.taskId = taskId;
		this.detailsId = detailsId;
		this.taskName = taskName;
		this.taskContent = taskContent;
		this.status = status;
		this.dStatus = dStatus;
		this.dResult = dResult;
		this.uid = uid;
		this.username = username;
		this.educationalCircles = educationalCircles;
		this.grade = grade;
		this.className = className;
		this.creationTime = creationTime;
	}


	public Integer getTaskId() {
		return taskId;
	}



	public TaskDetails setTaskId(Integer taskId) {
		this.taskId = taskId;
		return this;
	}



	public Integer getDetailsId() {
		return detailsId;
	}



	public TaskDetails setDetailsId(Integer detailsId) {
		this.detailsId = detailsId;
		return this;
	}



	public String getTaskName() {
		return taskName;
	}



	public TaskDetails setTaskName(String taskName) {
		this.taskName = taskName;
		return this;
	}



	public String getTaskContent() {
		return taskContent;
	}



	public TaskDetails setTaskContent(String taskContent) {
		this.taskContent = taskContent;
		return this;
	}



	public Integer getStatus() {
		return status;
	}



	public TaskDetails setStatus(Integer status) {
		this.status = status;
		return this;
	}



	public Integer getdStatus() {
		return dStatus;
	}



	public TaskDetails setdStatus(Integer dStatus) {
		this.dStatus = dStatus;
		return this;
	}



	public String getdResult() {
		return dResult;
	}



	public TaskDetails setdResult(String dResult) {
		this.dResult = dResult;
		return this;
	}



	public Integer getUid() {
		return uid;
	}



	public TaskDetails setUid(Integer uid) {
		this.uid = uid;
		return this;
	}



	public String getUsername() {
		return username;
	}



	public TaskDetails setUsername(String username) {
		this.username = username;
		return this;
	}



	public String getEducationalCircles() {
		return educationalCircles;
	}



	public TaskDetails setEducationalCircles(String educationalCircles) {
		this.educationalCircles = educationalCircles;
		return this;
	}



	public String getGrade() {
		return grade;
	}



	public TaskDetails setGrade(String grade) {
		this.grade = grade;
		return this;
	}



	public String getClassName() {
		return className;
	}



	public TaskDetails setClassName(String className) {
		this.className = className;
		return this;
	}



	public Date getCreationTime() {
		return creationTime;
	}


	public TaskDetails setCreationTime(Date creationTime) {
		this.creationTime = creationTime;
		return this;
	}


	@Override
	public String toString() {
		return "TaskDetails [taskId=" + taskId + ", detailsId=" + detailsId + ", taskName=" + taskName
				+ ", taskContent=" + taskContent + ", status=" + status + ", dStatus=" + dStatus + ", dResult="
				+ dResult + ", uid=" + uid + ", username=" + username + ", educationalCircles=" + educationalCircles
				+ ", grade=" + grade + ", className=" + className + ", creationTime=" + creationTime + "]";
	}

	
	
	
}
