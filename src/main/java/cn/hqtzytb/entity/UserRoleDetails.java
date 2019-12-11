package cn.hqtzytb.entity;

import java.io.Serializable;
import java.util.Date;

/**
* @Title: UserRoleDetails.java
* @Package cn.hqtzytb.entity
* @Description:(角色明细实体类)
* @author: ZhouLingZhang
* @date 2019年10月24日
* @Copyright:好前途教育
* @version V1.0
*/
public class UserRoleDetails extends UserRole implements Serializable{
	
	/**
	 * 继承UserRole(主角色类)
	* @Fields serialVersionUID :(序列化)
	*/
	private static final long serialVersionUID = 6396263258560388277L;
	private Integer detailsId;
	private Integer rid;
	private String detailsNumber;
	private String detailsName;
	private String detailsAdress;
	private Date creationTime;
	/**
	* 创建一个新的实例 UserRoleDetails.
	*
	*/
	public UserRoleDetails() {
		super();
	}
	/**
	* 创建一个新的实例 UserRoleDetails.
	*
	* @param detailsId
	* @param rid
	* @param detailsNumber
	* @param detailsName
	* @param detailsAdress
	* @param creationTime
	*/
	public UserRoleDetails(Integer detailsId, Integer rid, String detailsNumber, String detailsName,
			String detailsAdress, Date creationTime) {
		super();
		this.detailsId = detailsId;
		this.rid = rid;
		this.detailsNumber = detailsNumber;
		this.detailsName = detailsName;
		this.detailsAdress = detailsAdress;
		this.creationTime = creationTime;
	}
	/**
	 * @return the detailsId
	 */
	public Integer getDetailsId() {
		return detailsId;
	}
	/**
	 * @param detailsId the detailsId to set
	 */
	public void setDetailsId(Integer detailsId) {
		this.detailsId = detailsId;
	}
	/**
	 * @return the rid
	 */
	public Integer getRid() {
		return rid;
	}
	/**
	 * @param rid the rid to set
	 */
	public void setRid(Integer rid) {
		this.rid = rid;
	}
	/**
	 * @return the detailsNumber
	 */
	public String getDetailsNumber() {
		return detailsNumber;
	}
	/**
	 * @param detailsNumber the detailsNumber to set
	 */
	public void setDetailsNumber(String detailsNumber) {
		this.detailsNumber = detailsNumber;
	}
	/**
	 * @return the detailsName
	 */
	public String getDetailsName() {
		return detailsName;
	}
	/**
	 * @param detailsName the detailsName to set
	 */
	public void setDetailsName(String detailsName) {
		this.detailsName = detailsName;
	}
	/**
	 * @return the detailsAdress
	 */
	public String getDetailsAdress() {
		return detailsAdress;
	}
	/**
	 * @param detailsAdress the detailsAdress to set
	 */
	public void setDetailsAdress(String detailsAdress) {
		this.detailsAdress = detailsAdress;
	}
	/**
	 * @return the creationTime
	 */
	public Date getCreationTime() {
		return creationTime;
	}
	/**
	 * @param creationTime the creationTime to set
	 */
	public void setCreationTime(Date creationTime) {
		this.creationTime = creationTime;
	}
	/* (非 Javadoc)
	* <p>Title: toString</p>
	* <p>Description: </p>
	* @return
	* @see java.lang.Object#toString()
	*/
	@Override
	public String toString() {
		return "UserRoleDetails [detailsId=" + detailsId + ", rid=" + rid + ", detailsNumber=" + detailsNumber
				+ ", detailsName=" + detailsName + ", detailsAdress=" + detailsAdress + ", creationTime=" + creationTime
				+ "]";
	}
	
	
}
