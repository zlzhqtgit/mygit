package cn.hqtzytb.utils;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.util.DigestUtils;

/**
* @Title: GetCommonUser.java
* @Package cn.hqtzytb.controller
* @Description:(用一句话描述该文件做什么)
* @author: ZhouLingZhang
* @date 2019年11月11日
* @Copyright:好前途教育
* @version V1.0
 */
public class GetCommonUser {
	private static final Logger logger = LogManager.getLogger(GetCommonUser.class.getName());

	/**
	 * MD5加密方法 
	 * @param password密码
	 * @param uuid 密码加密处理的uuid
	 * @return MD5 返回加密好的字符串
	 */
	public String getEncrpytedPassword(String password, String uuid) {
		String str = password + uuid;
		// 对字符串进行MD5加密
		String md5 = DigestUtils.md5DigestAsHex(str.getBytes()).toUpperCase();
		return md5;
	}

	public List<String> gethld(Map<String, Integer> cpFengshu) {
		// 排序以后截取前3个类型代码
		List<String> mobileList = cpFengshu.entrySet().stream()
				.sorted((Map.Entry<String, Integer> o1, Map.Entry<String, Integer> o2) -> o2.getValue() - o1.getValue())
				.map(entry -> entry.getKey()).collect(Collectors.toList()).subList(0, 3);
		return mobileList;
	}

	public String getMbti(Map<String, Integer> cpFengshu) {
		String cpresult = "";
		// 判断第一层面E-I,属于那种，如果分数相同取I
		if (cpFengshu.get("E") > cpFengshu.get("I")) {
			cpresult += "E";
		} else {
			cpresult += "I";
		}
		// 判断第二层面S-N,属于那种，如果分数相同取N
		if (cpFengshu.get("S") > cpFengshu.get("N")) {
			cpresult += "S";
		} else {
			cpresult += "N";
		}
		// 判断第三层面T-F,属于那种，如果分数相同取F
		if (cpFengshu.get("T") > cpFengshu.get("F")) {
			cpresult += "T";
		} else {
			cpresult += "F";
		}
		// 判断第四层面J-P,属于那种，如果分数相同取P
		if (cpFengshu.get("J") > cpFengshu.get("P")) {
			cpresult += "J";
		} else {
			cpresult += "P";
		}
		return cpresult;
	}

	/**
	* @Title: getlogin
	* @Description: (判断登录练)
	* @param @param response
	* @param @param request    
	* @return void    
	* @throws
	 */
	public static void getlogin(HttpServletResponse response, HttpServletRequest request) {
		try {
			logger.info("用户名： 模块名：  操作：登录失效  状态：Failed!");
			PrintWriter out = response.getWriter();
			out.println("<html>");
			out.println("<script>");
			out.println("window.open ('" + request.getContextPath() + "/main/hqt_login.do','_top')");
			out.println("</script>");
			out.println("</html>");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
