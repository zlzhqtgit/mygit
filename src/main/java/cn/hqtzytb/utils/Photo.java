package cn.hqtzytb.utils;



import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsRequest;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsResponse;
import com.aliyuncs.exceptions.ClientException;
import com.aliyuncs.profile.DefaultProfile;
import com.aliyuncs.profile.IClientProfile;

/**
* @Title: Photo.java
* @Package cn.hqtzytb.controller
* @Description:(短信验证码)
* @author: ZhouLingZhang
* @date 2019年11月11日
* @Copyright:好前途教育
* @version V1.0
 */
public class Photo {	
	/**
	 * 阿里云短信服务：
	 * 注意：需要 签名名称、模版CODE 以及 RAM访问控制中的 AccessKeyID 和 AccessKeySecret  
	 */ 
	    public  static SendSmsResponse sendSms(String telephone, String code, String accessKeyId, String accessKeySecret, String qm_name, String qm_sms) throws ClientException {
	    	
	        //可自助调整超时时间
	        System.setProperty("sun.net.client.defaultConnectTimeout", "10000");
	        System.setProperty("sun.net.client.defaultReadTimeout", "10000");
	        //初始化acsClient,暂不支持region化
	        IClientProfile profile = DefaultProfile.getProfile("cn-hangzhou",accessKeyId,accessKeySecret);
	        DefaultProfile.addEndpoint("cn-hangzhou", "cn-hangzhou", "Dysmsapi","dysmsapi.aliyuncs.com");
	        IAcsClient acsClient = new DefaultAcsClient(profile);
	        //组装请求对象-具体描述见控制台-文档部分内容
	        SendSmsRequest request = new SendSmsRequest();
	        //必填:待发送手机号
	        request.setPhoneNumbers(telephone);
	        //必填:短信签名-可在短信控制台中找到
	        request.setSignName(qm_name);    // TODO 修改成自己的
	        //必填:短信模板-可在短信控制台中找到
	        request.setTemplateCode(qm_sms);    // TODO 修改成自己的
	        //可选:模板中的变量替换JSON串,如模板内容为"亲爱的${name},您的验证码为${code}"时,此处的值为
//	        request.setTemplateParam("{\"name\":\"Tom\", \"code\":\"123\"}");
	        request.setTemplateParam("{\"code\":\"" + code + "\"}");
	        //选填-上行短信扩展码(无特殊需求用户请忽略此字段)
	        //request.setSmsUpExtendCode("90997");
	        //可选:outId为提供给业务方扩展字段,最终在短信回执消息中将此值带回给调用者
	        request.setOutId("yourOutId");
	        //hint 此处可能会抛出异常，注意catch
	        SendSmsResponse sendSmsResponse = acsClient.getAcsResponse(request);	        
	        return sendSmsResponse;
	    } 
	 
	    //以下为测试代码，随机生成验证码
	    private static int newcode;
	    public static int getNewcode() {
	        return newcode;
	    }
	    public static void setNewcode(){
	        newcode = (int)((Math.random()*9+1)*100000);  //每次调用生成一位四位数的随机数
	    }
	   


}
