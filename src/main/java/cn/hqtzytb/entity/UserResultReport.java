package cn.hqtzytb.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * @ClassName: UserResultReport
 * @Description: 用户选科报告信息实体类
 * @author: wuPeiLong
 * @date: 2019年12月14日
 * @Copyright:好前途教育
 * @version V1.0
 */
public class UserResultReport implements Serializable {

	private static final long serialVersionUID = 1L;

	/**
	 * 主键ID
	 */
	private Integer id;

	/**
	 * 用户ID
	 */
	private Integer uid;

	/**
	 * 专业
	 */
	private String specialtyId;

	/**
	 * 省份
	 */
	private String province;

	/**
	 * 开始测评选科时间
	 */
	private Date startTime;

	/**
	 * 结束测评选科时间
	 */
	private Date endTime;

	/**
	 * 测评状态：0-待完成 1-已完成
	 */
	private String status;

	/**
	 * 测评结果
	 */
	private String result;

	public UserResultReport() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UserResultReport(Integer id, Integer uid, String specialtyId, String province, Date startTime, Date endTime,
			String status, String result) {
		super();
		this.id = id;
		this.uid = uid;
		this.specialtyId = specialtyId;
		this.province = province;
		this.startTime = startTime;
		this.endTime = endTime;
		this.status = status;
		this.result = result;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getUid() {
		return uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public String getSpecialtyId() {
		return specialtyId;
	}

	public void setSpecialtyId(String specialtyId) {
		this.specialtyId = specialtyId;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public Date getStartTime() {
		return startTime;
	}

	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}

	public Date getEndTime() {
		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	@Override
	public String toString() {
		return "UserResultReport [id=" + id + ", uid=" + uid + ", specialtyId=" + specialtyId + ", province=" + province
				+ ", startTime=" + startTime + ", endTime=" + endTime + ", status=" + status + ", result=" + result
				+ "]";
	}

}
