package cn.hqtzytb.entity;

import java.io.Serializable;

/**
* @Title: Xgkcp.java
* @Package cn.hqtzytb.entity
* @Description:(新高考测评结存储)
* @author: ZhouLingZhang
* @date 2019年9月5日
* @Copyright:好前途教育
* @version V1.0
*/
public class Xgkcp implements Serializable{

	/**
	* @Fields serialVersionUID :(序列化)
	*/

	private static final long serialVersionUID = -8750871905245525489L;
	
	private Integer id;//id
	private Integer cpNub;//测评题目的编号
	private String cpName;//测评名称：如MBTI
	private String cpType;//测评结果类型
	private Integer cpCpda;//结果对应选是或否的答案
	/**
	* 创建一个新的实例 Xgkcp.
	*
	*/
	public Xgkcp() {
		super();
	}
	/**
	* 创建一个新的实例 Xgkcp.
	*
	* @param id
	* @param cpNub
	* @param cpName
	* @param cpType
	* @param cpCpda
	*/
	public Xgkcp(Integer id, Integer cpNub, String cpName, String cpType, Integer cpCpda) {
		super();
		this.id = id;
		this.cpNub = cpNub;
		this.cpName = cpName;
		this.cpType = cpType;
		this.cpCpda = cpCpda;
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
	 * @return the cpNub
	 */
	public Integer getCpNub() {
		return cpNub;
	}
	/**
	 * @param cpNub the cpNub to set
	 */
	public void setCpNub(Integer cpNub) {
		this.cpNub = cpNub;
	}
	/**
	 * @return the cpName
	 */
	public String getCpName() {
		return cpName;
	}
	/**
	 * @param cpName the cpName to set
	 */
	public void setCpName(String cpName) {
		this.cpName = cpName;
	}
	/**
	 * @return the cpType
	 */
	public String getCpType() {
		return cpType;
	}
	/**
	 * @param cpType the cpType to set
	 */
	public void setCpType(String cpType) {
		this.cpType = cpType;
	}
	/**
	 * @return the cpCpda
	 */
	public Integer getCpCpda() {
		return cpCpda;
	}
	/**
	 * @param cpCpda the cpCpda to set
	 */
	public void setCpCpda(Integer cpCpda) {
		this.cpCpda = cpCpda;
	}
	/* (非 Javadoc)
	* <p>Title: toString</p>
	* <p>Description: </p>
	* @return
	* @see java.lang.Object#toString()
	*/
	@Override
	public String toString() {
		return "Xgkcp [id=" + id + ", cpNub=" + cpNub + ", cpName=" + cpName + ", cpType=" + cpType + ", cpCpda="
				+ cpCpda + "]";
	}

	

}
