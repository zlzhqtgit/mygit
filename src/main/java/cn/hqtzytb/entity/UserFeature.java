package cn.hqtzytb.entity;

import java.io.Serializable;
import java.util.Date;

/**
* @Title: UserFeature.java
* @Package cn.hqtzytb.entity
* @Description:(用户测评特征)
* @author: ZhouLingZhang
* @date 2019年9月27日
* @Copyright:好前途教育
* @version V1.0
*/
public class UserFeature implements Serializable  {
	
	/**
	* @Fields serialVersionUID :(对象序列化)
	*/
	private static final long serialVersionUID = 1415911098620734912L;
	private Integer featureId; //用户特征表ID
	private Integer uid; //关联用户id
	private String evaluationType;// 测评类型
	private String evaluationFraction;//测评的分数
	private Date evaluationTime;//测评的时间
	/**
	* 创建一个新的实例 UserFeature.
	*
	*/
	public UserFeature() {
		super();
	}
	/**
	* 创建一个新的实例 UserFeature.
	*
	* @param featureId
	* @param uid
	* @param evaluationType
	* @param evaluationFraction
	* @param evaluationTime
	*/
	public UserFeature(Integer featureId, Integer uid, String evaluationType, String evaluationFraction,
			Date evaluationTime) {
		super();
		this.featureId = featureId;
		this.uid = uid;
		this.evaluationType = evaluationType;
		this.evaluationFraction = evaluationFraction;
		this.evaluationTime = evaluationTime;
	}
	/**
	 * @return the featureId
	 */
	public Integer getFeatureId() {
		return featureId;
	}
	/**
	 * @param featureId the featureId to set
	 */
	public void setFeatureId(Integer featureId) {
		this.featureId = featureId;
	}
	/**
	 * @return the uid
	 */
	public Integer getUid() {
		return uid;
	}
	/**
	 * @param uid the uid to set
	 */
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	/**
	 * @return the evaluationType
	 */
	public String getEvaluationType() {
		return evaluationType;
	}
	/**
	 * @param evaluationType the evaluationType to set
	 */
	public void setEvaluationType(String evaluationType) {
		this.evaluationType = evaluationType;
	}
	/**
	 * @return the evaluationFraction
	 */
	public String getEvaluationFraction() {
		return evaluationFraction;
	}
	/**
	 * @param evaluationFraction the evaluationFraction to set
	 */
	public void setEvaluationFraction(String evaluationFraction) {
		this.evaluationFraction = evaluationFraction;
	}
	/**
	 * @return the evaluationTime
	 */
	public Date getEvaluationTime() {
		return evaluationTime;
	}
	/**
	 * @param evaluationTime the evaluationTime to set
	 */
	public void setEvaluationTime(Date evaluationTime) {
		this.evaluationTime = evaluationTime;
	}
	/* (非 Javadoc)
	* <p>Title: toString</p>
	* <p>Description: </p>
	* @return
	* @see java.lang.Object#toString()
	*/
	@Override
	public String toString() {
		return "UserFeature [featureId=" + featureId + ", uid=" + uid + ", evaluationType=" + evaluationType
				+ ", evaluationFraction=" + evaluationFraction + ", evaluationTime=" + evaluationTime + "]";
	}

}
