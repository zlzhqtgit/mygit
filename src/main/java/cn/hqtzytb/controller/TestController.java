package cn.hqtzytb.controller;

import java.util.ArrayList;
import java.util.List;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.hqtzytb.utils.GetCommonUser;
import net.sf.json.JSONArray;


@Controller
@RequestMapping("/test")
public class TestController {

	@RequestMapping("/one.do")
	public String test(){
		String str = "[[['国家重点实验室'],['华南肿瘤学国家重点实验室','眼科学国家重点实验室','光电材料与技术国家重点实验室']],[['教育部重点实验室'],['聚合物符合材料及功能材料','基因工程','眼科学','干细胞与组织工程']],[['国家工程研究中心'],['南海生物技术国家工程研究中心']],[['国家工程技术研究中心'],['国家数字家庭工程技术研究中心']],[['教育部人文社会科学重点研究基地'],['港澳珠三角洲研究中心','行政管理研究中心']]]";
		str = "[[['一级学科国家重点'],['中国哲学','冰原生物学','人类学']],[['二级学科国家重点'],['中国哲学','冰原生物学','人类学']],[['国家重点(培育)学科'],['中国哲学','冰原生物学','人类学']]]";	
		Session session = SecurityUtils.getSubject().getSession();
		List<List<String>> json = GetCommonUser.getJson(str,null);
		List<List<List<String>>> listTest = new ArrayList<List<List<String>>>();
		//System.out.println(json);
		for(int i=0;i<json.size();i++){
		   System.out.println("第"+i+"条数据："+json.get(i));
		   List<List<String>> json1 = GetCommonUser.getJson(json.get(i).toString(),null);
		   listTest.add(i,json1);   
		}
		session.setAttribute("ooo", listTest);
		
		return "web/hello";
	}
}
