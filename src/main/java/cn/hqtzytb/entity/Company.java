package cn.hqtzytb.entity;


import java.util.Date;
import java.io.Serializable;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

/**
 * @ClassName: Role
 * @Description: 公司信息实体类
 * @author: wuPeiLong
 * @date: 2019年12月11日
 * @Copyright:好前途教育
 * @version V1.0
 */
public class Company implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 公司ID
     */
    private Integer companyId;

    /**
     * 公司编号
     */
    private String companyNumber;

    /**
     * 公司名字
     */
    private String companyName;

    /**
     * 公司地址
     */
    private String companyAdress;

    /**
     * 创建时间
     */
    private Date creationTime;

	public Company() {
		super();
	}

	public Company(Integer companyId, String companyNumber, String companyName, String companyAdress,
			Date creationTime) {
		super();
		this.companyId = companyId;
		this.companyNumber = companyNumber;
		this.companyName = companyName;
		this.companyAdress = companyAdress;
		this.creationTime = creationTime;
	}

	public Integer getCompanyId() {
		return companyId;
	}

	public Company setCompanyId(Integer companyId) {
		this.companyId = companyId;
		return this;
	}

	public String getCompanyNumber() {
		return companyNumber;
	}

	public Company setCompanyNumber(String companyNumber) {
		this.companyNumber = companyNumber;
		return this;
	}

	public String getCompanyName() {
		return companyName;
	}

	public Company setCompanyName(String companyName) {
		this.companyName = companyName;
		return this;
	}

	public String getCompanyAdress() {
		return companyAdress;
	}

	public Company setCompanyAdress(String companyAdress) {
		this.companyAdress = companyAdress;
		return this;
	}

	public Date getCreationTime() {
		return creationTime;
	}

	public Company setCreationTime(Date creationTime) {
		this.creationTime = creationTime;
		return this;
	}

	@Override
	public String toString() {
		return "Company [companyId=" + companyId + ", companyNumber=" + companyNumber + ", companyName=" + companyName
				+ ", companyAdress=" + companyAdress + ", creationTime=" + creationTime + "]";
	}

    

}
