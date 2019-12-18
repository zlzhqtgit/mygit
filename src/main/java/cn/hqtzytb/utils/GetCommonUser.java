package cn.hqtzytb.utils;


import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import javax.servlet.http.HttpServletRequest;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.shiro.crypto.hash.SimpleHash;
import net.sf.json.JSONArray;

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
	 * @param hashAlgorithmName 加密方式
	 * @param password 密码
	 * @param uuid 密码加密处理的uuid
	 * @param hashIterations 加密次数
	 * @return
	 */
	public String getEncrpytedPassword(String hashAlgorithmName,String password, String uuid,int  hashIterations) {
		Object result = new SimpleHash(hashAlgorithmName,password,uuid,hashIterations);
		return (result.toString()).toUpperCase();
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
	 * 二位数组字符串 转 List<List<String>>数组
	 * @param jsonstr
	 * @param request
	 * @return
	 */
	public static List<List<String>> getJson(Object jsonstr,HttpServletRequest request){  
		try {
			JSONArray jsonArray = null;
			if (jsonstr instanceof JSONArray) {
				jsonArray = (JSONArray)jsonstr;
			} else {
				jsonArray = JSONArray.fromObject(jsonstr);
			}
			System.err.println(jsonArray.size());
			if(jsonArray.size()>0){
				List<List<String>> listTest = new ArrayList<List<String>>();
				for (int j = 0; j < jsonArray.size(); j++) {
					List<String> columnList = new ArrayList<String>();
					for(int i=0;i<jsonArray.getJSONArray(j).size();i++){
						columnList.add(i,(String) jsonArray.getJSONArray(j).getString(i));
					}	  
					listTest.add(j, columnList); 
				}  
				return listTest;
			}else{
				return null;
			}    
		} catch (Exception e) {
			logger.error("二位数组字符串：" + jsonstr);
			logger.error("访问路径："+request.getRequestURI()+"操作： 二维数组转List 错误信息: "+e);
			return null;
		}   
	}
}
