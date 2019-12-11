package cn.hqtzytb.entity;

public class WxpayConfig
{
	private String appid;
	private String mch_id;
	private String notify_url;
	private String trade_type;
	private String key;
	private String wxpay_url;
	
	public WxpayConfig()
	{
		super();
	}
	
	public WxpayConfig(String appid, String mch_id, String notify_url, String trade_type, String key, String wxpay_url)
	{
		super();
		this.appid = appid;
		this.mch_id = mch_id;
		this.notify_url = notify_url;
		this.trade_type = trade_type;
		this.key = key;
		this.wxpay_url = wxpay_url;
	}

	public String getAppid()
	{
		return appid;
	}
	public void setAppid(String appid)
	{
		this.appid = appid;
	}
	public String getMch_id()
	{
		return mch_id;
	}
	public void setMch_id(String mch_id)
	{
		this.mch_id = mch_id;
	}
	public String getNotify_url()
	{
		return notify_url;
	}
	public void setNotify_url(String notify_url)
	{
		this.notify_url = notify_url;
	}
	public String getTrade_type()
	{
		return trade_type;
	}
	public void setTrade_type(String trade_type)
	{
		this.trade_type = trade_type;
	}
	public String getKey()
	{
		return key;
	}
	public void setKey(String key)
	{
		this.key = key;
	}
	public String getWxpay_url()
	{
		return wxpay_url;
	}
	public void setWxpay_url(String wxpay_url)
	{
		this.wxpay_url = wxpay_url;
	}
	@Override
	public String toString()
	{
		return "WxpayConfig [appid=" + appid + ", mch_id=" + mch_id + ", notify_url=" + notify_url + ", trade_type="
				+ trade_type + ", key=" + key + ", wxpay_url=" + wxpay_url + "]";
	}
	
}
