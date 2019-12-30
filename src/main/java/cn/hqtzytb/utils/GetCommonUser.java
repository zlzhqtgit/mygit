package cn.hqtzytb.utils;


import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.shiro.crypto.hash.SimpleHash;

import com.sun.corba.se.spi.orb.StringPair;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

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
	public static String getEncrpytedPassword(String hashAlgorithmName,String password, String uuid,int  hashIterations) {
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
			if(jsonstr == null){
				return new ArrayList<>();
			}
			JSONArray jsonArray = null;
			if (jsonstr instanceof JSONArray) {
				jsonArray = (JSONArray)jsonstr;
			} else {
				if(!jsonstr.toString().startsWith("[") || !jsonstr.toString().endsWith("]")){
					return new ArrayList<>();
				}
				jsonArray = JSONArray.fromObject(jsonstr);	
			}
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
				return new ArrayList<>();
			}    
		} catch (Exception e) {
			logger.error("二位数组字符串：" + jsonstr);
			logger.error("访问路径：" + request.getRequestURI() + "操作： 二维数组转List 错误信息: " + e);
			return new ArrayList<>();
		}   
	}
	

	/**
	 * 字符串转List数组
	 * @param str
	 * @return
	 */
	public static List<String> getList(String str, HttpServletRequest request) {
		if(StringUtils.isNotEmpty(str)){
			List<String> stringList = new ArrayList<>();	
			try {
				JSONArray jsonArray = JSONArray.fromObject(str);
				for(Object obj : jsonArray){
					if(obj != null){
						stringList.add((String) obj);
					}
				}
			} catch (Exception e) {
				logger.error("字符串转List数组：" + str);
				logger.error("访问路径：" + request.getRequestURI() + "操作： 字符串转List数组 错误信息: " + e);
			}
			return stringList;
		}
		return new ArrayList<>();
	}
	
	public static void main(String[] args) {
		/*String string = "[[['国家重点实验室'],['华南肿瘤学国家重点实验室','眼科学国家重点实验室','光电材料与技术国家重点实验室']],[['教育部重点实验室'],['聚合物符合材料及功能材料','基因工程','眼科学','干细胞与组织工程']],[['国家工程研究中心'],['南海生物技术国家工程研究中心']],[['国家工程技术研究中心'],['国家数字家庭工程技术研究中心']],[['教育部人文社会科学重点研究基地'],['港澳珠三角洲研究中心','行政管理研究中心']]]";
		JSONArray jsonArray = JSONArray.fromObject(string);
		
		for(int h=0; h<jsonArray.size(); h++){
			List<List<String>> json = getJson(jsonArray.get(h));
			for(int i=0; i<json.size(); i++){
				for(int j=0; j<json.get(i).size(); j++){
					System.err.println(json.get(i).get(j));
				}
			}
			System.err.println("" + h + h + h + h);
		}*/
		
//		List<String> list = getList("暂无数据",null);
//		System.err.println(list);
		String a = "[['','理科','资源循环科学与工程','工学','3','-','590'],['','理科','测控技术与仪器','工学','5','-','589'],['','理科','机械工程','工学','3','-','593'],['','理科','金融学','经济学','3','-','599'],['','理科','经济统计学','经济学','5','-','593'],['','理科','交通运输类','工学','5','-','588'],['','理科','机器人工程','工学','4','-','588'],['','理科','软件工程','工学','5','-','597'],['','理科','生物技术','理学','2','-','591'],['','理科','计算机类','工学','2','-','589'],['','理科','数学类','理学','4','-','588'],['','理科','能源动力类','工学','2','-','589'],['','理科','土木类','工学','6','-','590'],['','理科','信息管理与信息系统','管理学','3','-','588']]";
		System.err.println(getJson(a, null).get(0).get(1));
		
	}
}
