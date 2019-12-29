package cn.hqtzytb.entity;

import java.io.Serializable;

/**
 * @ClassName: Enshrine
 * @Description: 用户收藏信息表
 * @author: wuPeiLong
 * @date: 2019年12月30日
 * @Copyright:好前途教育
 * @version V1.0
 */
public class Enshrine implements Serializable{
    /**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = 2023071061343054599L;

	/**
	 * 主键ID
	 */
	private Integer eId;

	/**
	 * 用户ID
	 */
    private Integer uid;

    /**
     * logo
     */
    private String eLogo;

    /**
     * 编码
     */
    private String eCode;

    /**
     * 名称
     */
    private String eName;
    
	/**
	 * 收藏类型：0-学校 1-专业 2-职业
	 */
    private Integer eType;

    
    
    public Enshrine() {
		super();
	}

    
    
	public Enshrine(Integer eId, Integer uid, String eLogo, String eCode, String eName, Integer eType) {
		super();
		this.eId = eId;
		this.uid = uid;
		this.eLogo = eLogo;
		this.eCode = eCode;
		this.eName = eName;
		this.eType = eType;
	}



	public Integer geteId() {
        return eId;
    }

    public Enshrine seteId(Integer eId) {
        this.eId = eId;
        return this;
    }

    public Integer getUid() {
        return uid;
    }

    public Enshrine setUid(Integer uid) {
        this.uid = uid;
        return this;
    }

    public String geteLogo() {
        return eLogo;
    }

    public Enshrine seteLogo(String eLogo) {
        this.eLogo = eLogo;
        return this;
    }

    public String geteCode() {
        return eCode;
    }

    public Enshrine seteCode(String eCode) {
        this.eCode = eCode;

        return this;
    }

    public String geteName() {
        return eName;
    }

    public Enshrine seteName(String eName) {
        this.eName = eName;

        return this;
    }

    public Integer geteType() {
        return eType;
    }

    public Enshrine seteType(Integer eType) {
        this.eType = eType;
        return this;
    }

	@Override
	public String toString() {
		return "Enshrine [eId=" + eId + ", uid=" + uid + ", eLogo=" + eLogo + ", eCode=" + eCode + ", eName=" + eName
				+ ", eType=" + eType + "]";
	}
    
    
}