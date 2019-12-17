package cn.hqtzytb.entity;

import java.io.Serializable;

import org.springframework.stereotype.Component;
/**
 * 
* @ClassName: PhotoConfig
* @Description:(短信服务实体类)
* @author: ZhouLingZhang
* @date 2019年9月3日
 */
@Component
public class PhotoConfig implements Serializable
{	
	private static final long serialVersionUID = 5930016584187491569L;
	private String accessKeyId;
	private String accessKeySecret;
	private String qm_name;
	private String qm_sms;
	public PhotoConfig() {
		super();
	}	
	public PhotoConfig(String accessKeyId, String accessKeySecret, String qm_name, String qm_sms) {
		super();
		this.accessKeyId = accessKeyId;
		this.accessKeySecret = accessKeySecret;
		this.qm_name = qm_name;
		this.qm_sms = qm_sms;
	}
	public String getAccessKeyId() {
		return accessKeyId;
	}
	public void setAccessKeyId(String accessKeyId) {
		this.accessKeyId = accessKeyId;
	}
	public String getAccessKeySecret() {
		return accessKeySecret;
	}
	public void setAccessKeySecret(String accessKeySecret) {
		this.accessKeySecret = accessKeySecret;
	}
	public String getQm_name() {
		return qm_name;
	}
	public void setQm_name(String qm_name) {
		this.qm_name = qm_name;
	}
	public String getQm_sms() {
		return qm_sms;
	}
	public void setQm_sms(String qm_sms) {
		this.qm_sms = qm_sms;
	}
	@Override
	public String toString() {
		return "PhotoConfig [accessKeyId=" + accessKeyId + ", accessKeySecret=" + accessKeySecret + ", qm_name="
				+ qm_name + ", qm_sms=" + qm_sms + "]";
	}
	
}
