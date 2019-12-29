package cn.hqtzytb.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * @ClassName: Task
 * @Description: 总任务实体类
 * @author: wuPeiLong
 * @date: 2019年12月29日
 * @Copyright:好前途教育
 * @version V1.0
 */
public class Task implements Serializable{		
	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = 1L;
	/**
	 * 任务ID
	 */
	private Integer taskId;
	/**
	 * 公司ID
	 */
	private Integer cid;
	/**
	 * 任务名字
	 */
	private String taskName;
	/**
	 * 任务内容
	 */
	private String taskContent;
	/**
	 * 总参与人数
	 */
	private Integer taskTotal;
	/**
	 * 任务状态  0-进行中1-已结束     
	 */
	private Integer status;
	/**
	 * 创建时间
	 */
	private Date creationTime;
	
	
	public Task() {
		super();		
	}


	public Task(Integer taskId, Integer cid, String taskName, String taskContent, Integer taskTotal, Integer status,
			Date creationTime) {
		super();
		this.taskId = taskId;
		this.cid = cid;
		this.taskName = taskName;
		this.taskContent = taskContent;
		this.taskTotal = taskTotal;
		this.status = status;
		this.creationTime = creationTime;
	}


	public Integer getTaskId() {
		return taskId;
	}


	public Task setTaskId(Integer taskId) {
		this.taskId = taskId;
		return this;
	}


	public Integer getCid() {
		return cid;
	}


	public Task setCid(Integer cid) {
		this.cid = cid;
		return this;
	}


	public String getTaskName() {
		return taskName;
	}


	public Task setTaskName(String taskName) {
		this.taskName = taskName;
		return this;
	}


	public String getTaskContent() {
		return taskContent;
	}


	public Task setTaskContent(String taskContent) {
		this.taskContent = taskContent;
		return this;
	}


	public Integer getTaskTotal() {
		return taskTotal;
	}


	public Task setTaskTotal(Integer taskTotal) {
		this.taskTotal = taskTotal;
		return this;
	}


	public Integer getStatus() {
		return status;
	}


	public Task setStatus(Integer status) {
		this.status = status;
		return this;
	}


	public Date getCreationTime() {
		return creationTime;
	}


	public Task setCreationTime(Date creationTime) {
		this.creationTime = creationTime;
		return this;
	}


	@Override
	public String toString() {
		return "Task [taskId=" + taskId + ", cid=" + cid + ", taskName=" + taskName + ", taskContent=" + taskContent
				+ ", taskTotal=" + taskTotal + ", status=" + status + ", creationTime=" + creationTime + "]";
	}		
	
	
	
}
