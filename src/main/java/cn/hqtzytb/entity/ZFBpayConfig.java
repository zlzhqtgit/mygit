package cn.hqtzytb.entity;


public class ZFBpayConfig{
	private String app_id;
	private String merchant_private_key;
	private String alipay_public_key;
	private String notify_url;
	private String return_url;
	private String sign_type;
	private String charset;
	private String gatewayUrl;
	private String log_path;
	private String app_cert_path;
	private String alipay_cert_path;
	private String alipay_root_cert_path;	
	public ZFBpayConfig(){
		super();
	}
	public ZFBpayConfig(String app_id, String merchant_private_key, String alipay_public_key, String notify_url,
			String return_url, String sign_type, String charset, String gatewayUrl, String log_path,
			String app_cert_path, String alipay_cert_path, String alipay_root_cert_path) {
		super();
		this.app_id = app_id;
		this.merchant_private_key = merchant_private_key;
		this.alipay_public_key = alipay_public_key;
		this.notify_url = notify_url;
		this.return_url = return_url;
		this.sign_type = sign_type;
		this.charset = charset;
		this.gatewayUrl = gatewayUrl;
		this.log_path = log_path;
		this.app_cert_path = app_cert_path;
		this.alipay_cert_path = alipay_cert_path;
		this.alipay_root_cert_path = alipay_root_cert_path;
	}
	public String getApp_id() {
		return app_id;
	}
	public void setApp_id(String app_id) {
		this.app_id = app_id;
	}
	public String getMerchant_private_key() {
		return merchant_private_key;
	}
	public void setMerchant_private_key(String merchant_private_key) {
		this.merchant_private_key = merchant_private_key;
	}
	public String getAlipay_public_key() {
		return alipay_public_key;
	}
	public void setAlipay_public_key(String alipay_public_key) {
		this.alipay_public_key = alipay_public_key;
	}
	public String getNotify_url() {
		return notify_url;
	}
	public void setNotify_url(String notify_url) {
		this.notify_url = notify_url;
	}
	public String getReturn_url() {
		return return_url;
	}
	public void setReturn_url(String return_url) {
		this.return_url = return_url;
	}
	public String getSign_type() {
		return sign_type;
	}
	public void setSign_type(String sign_type) {
		this.sign_type = sign_type;
	}
	public String getCharset() {
		return charset;
	}
	public void setCharset(String charset) {
		this.charset = charset;
	}
	public String getGatewayUrl() {
		return gatewayUrl;
	}
	public void setGatewayUrl(String gatewayUrl) {
		this.gatewayUrl = gatewayUrl;
	}
	public String getLog_path() {
		return log_path;
	}
	public void setLog_path(String log_path) {
		this.log_path = log_path;
	}
	public String getApp_cert_path() {
		return app_cert_path;
	}
	public void setApp_cert_path(String app_cert_path) {
		this.app_cert_path = app_cert_path;
	}
	public String getAlipay_cert_path() {
		return alipay_cert_path;
	}
	public void setAlipay_cert_path(String alipay_cert_path) {
		this.alipay_cert_path = alipay_cert_path;
	}
	public String getAlipay_root_cert_path() {
		return alipay_root_cert_path;
	}
	public void setAlipay_root_cert_path(String alipay_root_cert_path) {
		this.alipay_root_cert_path = alipay_root_cert_path;
	}
	@Override
	public String toString() {
		return "ZFBpayConfig [app_id=" + app_id + ", merchant_private_key=" + merchant_private_key
				+ ", alipay_public_key=" + alipay_public_key + ", notify_url=" + notify_url + ", return_url="
				+ return_url + ", sign_type=" + sign_type + ", charset=" + charset + ", gatewayUrl=" + gatewayUrl
				+ ", log_path=" + log_path + ", app_cert_path=" + app_cert_path + ", alipay_cert_path="
				+ alipay_cert_path + ", alipay_root_cert_path=" + alipay_root_cert_path + "]";
	}
	

	
}
