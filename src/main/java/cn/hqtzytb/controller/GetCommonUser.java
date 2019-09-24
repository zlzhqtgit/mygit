package cn.hqtzytb.controller;


import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.util.DigestUtils;

/**
 * 方法类-用于通用方法的调用
 * @author zhoulingzhang
 *
 */
public class GetCommonUser
{
	private  static final  Logger logger = LogManager.getLogger(GetCommonUser.class.getName());
	/**
	 * MD5加密方法
	 * @param password密码
	 * @param uuid 密码加密处理的uuid
	 * @return MD5 返回加密好的字符串
	 */
	public String getEncrpytedPassword(String password, String uuid)
	{
		String str = password + uuid;
		//对字符串进行MD5加密
		String md5 = DigestUtils.md5DigestAsHex(str.getBytes()).toUpperCase();
		return md5;
	}
	/**
	 * 响应登录页面	
	 */
	public static void getlogin(HttpServletResponse response,HttpServletRequest request)
	{	
		try
		{
			logger.info("用户名： 模块名：  操作：登录失效  状态：Failed!");
			PrintWriter out = response.getWriter();
			out.println("<html>");    
			out.println("<script>");    
			out.println("window.open ('"+request.getContextPath()+"/main/hqt_login.do','_top')");    
			out.println("</script>");    
			out.println("</html>");
		} catch (IOException e){			
			e.printStackTrace();
		}
	   
	}
}
