package cn.hqtzytb.entity;


import java.io.Serializable;
import java.util.Date;

 
/**
 * @ClassName: Order
 * @Description: 订单信息表
 * @author: wuPeiLong
 * @date: 2019年12月27日
 * @Copyright:好前途教育
 * @version V1.0
 */
public class Order implements Serializable{
	
	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = -4199260855742994594L;

	/**
	 * 主键ID
	 */
    private Integer id;

    /**
     * 订单交易号
     */
    private String outTradeNo;

    /**
     * 用户ID
     */
    private Integer uid;

    /**
     * 交易金额
     */
    private Double rechargeMoney;

    /**
     * 交易内容
     */
    private String body;

    /**
     * 交易时间
     */
    private Date createTime;

    
    
    public Order() {
		super();
	}

    
    
	public Order(Integer id, String outTradeNo, Integer uid, Double rechargeMoney, String body, Date createTime) {
		super();
		this.id = id;
		this.outTradeNo = outTradeNo;
		this.uid = uid;
		this.rechargeMoney = rechargeMoney;
		this.body = body;
		this.createTime = createTime;
	}



	public Integer getId() {
        return id;
    }

    public Order setId(Integer id) {
        this.id = id;
        return this;
    }

    public String getOutTradeNo() {
        return outTradeNo;
    }

    public void setOutTradeNo(String outTradeNo) {
        this.outTradeNo = outTradeNo;
    }

    public Integer getUid() {
        return uid;
    }

    public Order setUid(Integer uid) {
        this.uid = uid;
        return this;
    }

    public Double getRechargeMoney() {
        return rechargeMoney;
    }

    public Order setRechargeMoney(Double rechargeMoney) {
        this.rechargeMoney = rechargeMoney;
        return this;
    }

    public String getBody() {
        return body;
    }

    public Order setBody(String body) {
        this.body = body;
        return this;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public Order setCreateTime(Date createTime) {
        this.createTime = createTime;
        return this;
    }



	@Override
	public String toString() {
		return "Order [id=" + id + ", outTradeNo=" + outTradeNo + ", uid=" + uid + ", rechargeMoney=" + rechargeMoney
				+ ", body=" + body + ", createTime=" + createTime + "]";
	}
    
    
}