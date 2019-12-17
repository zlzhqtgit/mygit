package cn.hqtzytb.controller;




import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.CountDownLatch;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.junit.experimental.theories.FromDataPoints;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import cn.hqtzytb.entity.Enrollment;
import cn.hqtzytb.entity.EnrollmentRequirements;
import cn.hqtzytb.entity.Personality;
import cn.hqtzytb.entity.ResponseResult;
import cn.hqtzytb.entity.Specialty;
import cn.hqtzytb.entity.SpecialtyIn;
import cn.hqtzytb.entity.User;
import cn.hqtzytb.entity.UserFeature;
import cn.hqtzytb.entity.UserResultReport;
import cn.hqtzytb.entity.Vocation;
import cn.hqtzytb.exception.MyRuntimeException;
import cn.hqtzytb.mapper.EnrollmentRequirementsMapper;
import cn.hqtzytb.mapper.PersonalityMapper;
import cn.hqtzytb.mapper.SpecialtyMapper;
import cn.hqtzytb.mapper.UserFeatureMapper;
import cn.hqtzytb.mapper.UserMapper;
import cn.hqtzytb.mapper.UserResultReportMapper;
import cn.hqtzytb.mapper.VocationMapper;
import cn.hqtzytb.service.IEnrollmentServer;
import cn.hqtzytb.service.ISpecialtyServer;
import cn.hqtzytb.service.IUserFeatureServer;
import cn.hqtzytb.service.IVocationServer;
import cn.hqtzytb.utils.Combination;
import cn.hqtzytb.utils.Constants;
import cn.hqtzytb.utils.GetCommonUser;
import lombok.val;
import net.sf.json.JSONObject;




/**
* @Title: XgkcpController.java
* @Package cn.hqtzytb.controller
* @Description:(选科控制层)
* @author: ZhouLingZhang
* @date 2019年9月24日
* @Copyright:好前途教育
* @version V1.0
*/
@Controller
@RequestMapping("/xk")
public class XgkxkController {
	private  static final  Logger logger = LogManager.getLogger(XgkxkController.class.getName());
	@Autowired
	private IUserFeatureServer userFeatureServer;
	@Autowired
	private ISpecialtyServer specialtyServer;
	@Autowired
	private IEnrollmentServer enrollmentServer;
	@Autowired
	private IVocationServer vocationServer;
	@Autowired
	private UserFeatureMapper userFeatureMapper;
	@Autowired
	private VocationMapper vocationMapper;
	@Autowired
	private SpecialtyMapper specialtyMapper;
	@Autowired
	private UserMapper userMapper;
	@Autowired
	private UserResultReportMapper userResultReportMapper;
	@Autowired
	private PersonalityMapper personalityMapper;
	@Autowired
	private EnrollmentRequirementsMapper enrollmentRequirementsMapper;
	
	/**
	 * @throws MyRuntimeException 
	* @Title: showhqtCpAnswer
	* @Description: (选科指导页面  )
	* @param @param map
	* @param @param session
	* @param @param request
	* @param @param response
	* @param @return    
	* @return String    
	* @throws
	 */
	@RequestMapping("/xgk_guide_select.do")	
	public String showhqtXgkGuideSelect(ModelMap map,HttpServletRequest request,HttpServletResponse response) throws MyRuntimeException{	
		try
		{
			Subject subject = SecurityUtils.getSubject();
			Session session = subject.getSession();		
			if (subject.isAuthenticated()) {
				List<UserFeature> userFeatures = userFeatureMapper.select("uid = '" + (Integer)session.getAttribute("uid") + "'", null, null, null);
				Integer SCORE_ANALYZE = 0;//成绩分析
				Integer POTENTIALSCORE_ANALYZE = 0;//潜能分析
				Integer COGNIZESCORE_ANALYZE = 0;//认知分析
				for(UserFeature userFeature : userFeatures){
					if (Constants.EVALUATION_TYPE_SCORE_ANALYSIS.equals(userFeature.getEvaluationType())) {
						SCORE_ANALYZE = 1;
					}
					if (Constants.EVALUATION_TYPE_POTENTIAL_ANALYSIS.equals(userFeature.getEvaluationType())) {
						POTENTIALSCORE_ANALYZE = 1;
					}
					if (Constants.EVALUATION_TYPE_MBTI_ANALYSIS.equals(userFeature.getEvaluationType()) 
							|| Constants.EVALUATION_TYPE_HOLLAND_ANALYSIS.equals(userFeature.getEvaluationType())) {
						COGNIZESCORE_ANALYZE = 1;
					}
				}
				session.setAttribute("SCORE_ANALYZE", SCORE_ANALYZE);
				session.setAttribute("POTENTIAL_ANALYZE", POTENTIALSCORE_ANALYZE);
				session.setAttribute("COGNIZE_ANALYZE", COGNIZESCORE_ANALYZE);
			}
			session.setAttribute("LARGE_CLASS", JSON.toJSONString(vocationMapper.selectLargeClass(null, null, null, null)));//职业大类
			System.err.println(JSON.toJSONString(vocationMapper.selectLargeClass(null, null, null, null)));
			logger.info("用户名：" + session.getAttribute("username") + " 模块名：选科指导页面     操作：进入模块  状态：OK!");
			return  "web/xgk/xgk_pick_guide";
		} catch (Exception e){
			logger.error("访问路径：" + request.getRequestURI() + "操作：进入选科指导页面   错误信息: "+e);
			throw new MyRuntimeException(e);
		}
							
	}
	
	
	/**
	 * 依据职业大类查询职业详情清单
	 * @param industryName
	 * @return
	 */
	@RequestMapping("/xgk_guide_vocation_list.do")
	@ResponseBody
	public ResponseResult<List<Vocation>> getVocationList(String industryName){
		return new ResponseResult<List<Vocation>>(ResponseResult.STATE_OK,vocationMapper.select(" b.industry_name = '" + industryName + "'", null, null, null));
	}
	
	
	
	
	/**
	 * 依据职业id查询相关专业信息
	 * @param industryName
	 * @return
	 */
	@RequestMapping("/xgk_guide_specialt_list.do")
	@ResponseBody
	public ResponseResult<List<Specialty>> getSpecialtyList(String vocationId){
		return new ResponseResult<List<Specialty>>(ResponseResult.STATE_OK,specialtyMapper.selectvoction(" e.vocation_id = '" + vocationId + "' ", null, null, null));
	}
	
	
	/**
	 * 判断用户是否能继续选科
	 * @return
	 */
	@RequestMapping("/xgk_pick_verdict.do")
	@ResponseBody
	public ResponseResult<Void> getPickReport(HttpServletRequest request){
		Subject subject = SecurityUtils.getSubject();
		Session session = subject.getSession();
		if (subject.isAuthenticated()) {
			List<UserResultReport> userResultReports = userResultReportMapper.select(" uid = '" + (Integer)session.getAttribute("uid") + "'", null, null, null);
			if (userResultReports.isEmpty()) {//用户未进行过学科指导
				return new ResponseResult<>(ResponseResult.STATE_OK,Constants.RESULT_MESSAGE_SUCCESS);
			} else {
				if ("1".equals(userResultReports.get(0).getStatus())) {
					return new ResponseResult<>(2, "您已存在选科指导记录，继续将覆盖您之前的选科报告" );
				}else {
					return new ResponseResult<>(ResponseResult.STATE_OK,Constants.RESULT_MESSAGE_SUCCESS);

				}
			}
		}else {
			return new ResponseResult<>(ResponseResult.ERR,"用户未登录,请登录后再进行学科！");
		}
	}
	
	
	
	/**
	 * 进入选科报告数据分析
	 * @param province 省份
	 * @param specialtyId 专业ID
	 * @return
	 * @throws UnsupportedEncodingException 
	 */
	@RequestMapping("/xgk_pick_report.do")
	public String getGenerateReport(String province, String specialtyId, HttpServletRequest request) throws UnsupportedEncodingException{
		Subject subject = SecurityUtils.getSubject();
		Session session = subject.getSession();
		province = new String(province.toString().getBytes("ISO8859-1"), "UTF-8");
		specialtyId = new String(specialtyId.toString().getBytes("ISO8859-1"), "UTF-8");
		if (subject.isAuthenticated()) {
			Integer uid = (Integer)session.getAttribute("uid");
			List<UserResultReport> reportList = userResultReportMapper.select(" uid = '" + uid  + "'", null, null, null);
			if (reportList.isEmpty()) {
				userResultReportMapper.insert(new UserResultReport()
						.setUid((Integer)session.getAttribute("uid"))
						.setStartTime(new Date())
						.setProvince(province)
						.setSpecialtyId(specialtyId)
						.setStatus("0"));//待完成
			} else {
				userResultReportMapper.update(reportList.get(0)
						.setSpecialtyId(specialtyId)
						.setProvince(province)
						.setEndTime(null)
						.setStatus("0")
						.setStartTime(new Date())
						.setResult(""));
			}
			List<UserFeature> userFeatures = userFeatureMapper.select(" uid = '" + (Integer)session.getAttribute("uid") + "' ", null, null, null);
			String score_analyze = null;//成绩分析
			String potential_analyze = null;//潜能分析
			UserFeature mbti_analyze = null;//MBTI分析
			UserFeature hld_analyze = null;//霍兰德分析
			for (UserFeature feature : userFeatures) {
				if (Constants.EVALUATION_TYPE_SCORE_ANALYSIS.equals(feature.getEvaluationType())) {
					score_analyze = feature.getEvaluationFraction();
				}
				if (Constants.EVALUATION_TYPE_POTENTIAL_ANALYSIS.equals(feature.getEvaluationType())) {
					potential_analyze = feature.getEvaluationFraction();
				}
				if (Constants.EVALUATION_TYPE_MBTI_ANALYSIS.equals(feature.getEvaluationType())) {
					mbti_analyze = feature;
				}
				if (Constants.EVALUATION_TYPE_HOLLAND_ANALYSIS.equals(feature.getEvaluationType())) {
					hld_analyze = feature;
				}
			}
			
			//成绩分析
			Map<String,Double> score_map = new HashMap<>();//分数map
			score_map.put(Combination.物化生.one,0d);//物理
			score_map.put(Combination.物化生.two,0d);//化学
			score_map.put(Combination.物化生.three,0d);//生物
			score_map.put(Combination.政历地.one,0d);//政治
			score_map.put(Combination.政历地.two,0d);//历史
			score_map.put(Combination.政历地.three,0d);//地理
			List<List<String>>  stringList = GetCommonUser.getJson(net.sf.json.JSONArray.fromObject(score_analyze), request);
			String sub = "";
			Double score = 0d;
			Double total_score = 0d;
			for (int i = 0; i < stringList.size(); i++) {
				sub = stringList.get(i).get(0);
				score = Double.valueOf(stringList.get(i).get(1));
				if (Combination.物化生.one.equals(sub)) {//物理
					score_map.put(Combination.物化生.one, score);//物理
				}
				if (Combination.物化生.two.equals(sub)) {//化学
					score_map.put(Combination.物化生.two, score);//化学
								}
				if (Combination.物化生.three.equals(sub)) {//生物
					score_map.put(Combination.物化生.three, score);//生物
				}
				if (Combination.政历地.one.equals(sub)) {//政治
					score_map.put(Combination.政历地.one, score);//政治
				}
				if (Combination.政历地.two.equals(sub)) {//历史
					score_map.put(Combination.政历地.two, score);//历史
				}
				if (Combination.政历地.three.equals(sub)) {//地理
					score_map.put(Combination.政历地.three,score);//地理
				}
				total_score += score;
			}
			score_map.put(Combination.物化生.one,score_map.get(Combination.物化生.one)/total_score);//物理占比
	        score_map.put(Combination.物化生.two,score_map.get(Combination.物化生.two)/total_score);//化学占比
	        score_map.put(Combination.物化生.three,score_map.get(Combination.物化生.three)/total_score);//生物占比
	        score_map.put(Combination.政历地.one,score_map.get(Combination.政历地.one)/total_score);//政治占比
	        score_map.put(Combination.政历地.two,score_map.get(Combination.政历地.two)/total_score);//历史占比
	        score_map.put(Combination.政历地.three,score_map.get(Combination.政历地.three)/total_score);//地理占比
	        session.setAttribute("score_analyse", score_analyze);
	        
			//潜能分析
			Map<String,Double> potential_map = new HashMap<>();//分数map
			potential_map.put(Combination.物化生.one,0d);//物理
			potential_map.put(Combination.物化生.two,0d);//化学
			potential_map.put(Combination.物化生.three,0d);//生物
			potential_map.put(Combination.政历地.one,0d);//政治
			potential_map.put(Combination.政历地.two,0d);//历史
			potential_map.put(Combination.政历地.three,0d);//地理
			JSONArray jsonArray2 = JSON.parseArray(potential_analyze);
			Double potential_total_score = 0d;
            for (int i=0; i<jsonArray2.size(); i++){
            	potential_total_score += Double.valueOf(jsonArray2.getJSONArray(i).get(2).toString());
            	potential_map.put(jsonArray2.getJSONArray(i).get(0).toString(),potential_map.get(jsonArray2.getJSONArray(i).get(0).toString()) + Double.valueOf(jsonArray2.getJSONArray(i).get(2).toString()));
            }
            potential_map.put(Combination.物化生.one,score_map.get(Combination.物化生.one)/potential_total_score);//物理占比
            potential_map.put(Combination.物化生.two,score_map.get(Combination.物化生.two)/potential_total_score);//化学占比
            potential_map.put(Combination.物化生.three,score_map.get(Combination.物化生.three)/potential_total_score);//生物占比
            potential_map.put(Combination.政历地.one,score_map.get(Combination.政历地.one)/potential_total_score);//政治占比
            potential_map.put(Combination.政历地.two,score_map.get(Combination.政历地.two)/potential_total_score);//历史占比
            potential_map.put(Combination.政历地.three,score_map.get(Combination.政历地.three)/potential_total_score);//地理占比
            session.setAttribute("potential_analyse", potential_analyze);
            
            //认知分析
			UserFeature cognize_analyze = mbti_analyze == null ? hld_analyze : mbti_analyze;//认知分析 [优先选择mbti分析]
			Map<String,Object> paramMap = new HashMap<>();
            paramMap.put("personalityCode",cognize_analyze.getEvaluationName());
            Map<String,Double> cognize_map = new HashMap<>();//分数map
            cognize_map.put(Combination.物化生.one,0d);//物理
            cognize_map.put(Combination.物化生.two,0d);//化学
            cognize_map.put(Combination.物化生.three,0d);//生物
            cognize_map.put(Combination.政历地.one,0d);//政治
            cognize_map.put(Combination.政历地.two,0d);//历史
            cognize_map.put(Combination.政历地.three,0d);//地理
            List<Personality> personalityList = personalityMapper.selectPersonalityListByMap(paramMap);
            Personality personality = personalityList.get(0);//认知测评结果数据信息
            List<SpecialtyIn> specialtyIns = JSON.parseArray(personality.getPersonalitySpecialty(), SpecialtyIn.class);
            String where = " specialty_id IN (";
            for(int i=0; i<specialtyIns.size(); i++){
            	if (i == specialtyIns.size()-1) {
            		where += specialtyIns.get(i).getNuber();
				} else {
					where += specialtyIns.get(i).getNuber() + ",";
				}
            }
            List<Specialty> specialtyList = specialtyMapper.select(where + ")", null, null, null);
            Double cognize_total_score = 0d;//认知测评总分
            for (int i=0; i<specialtyList.size(); i++){
            	cognize_total_score += specialtyList.get(i).getPhysicsPerformance() 
			            			+ specialtyList.get(i).getChemistryPerformance()
			            			+ specialtyList.get(i).getBiologyPerformance()
			            			+ specialtyList.get(i).getPoliticPerformance()
			            			+ specialtyList.get(i).getHistoryPerformance()
			            			+ specialtyList.get(i).getGeographyPerformance();	
            	cognize_map.put(Combination.物化生.one,cognize_map.get(Combination.物化生.one) + specialtyList.get(i).getPhysicsPerformance());
            	cognize_map.put(Combination.物化生.two,cognize_map.get(Combination.物化生.two) + specialtyList.get(i).getChemistryPerformance());
            	cognize_map.put(Combination.物化生.three,cognize_map.get(Combination.物化生.three) + specialtyList.get(i).getBiologyPerformance());
            	cognize_map.put(Combination.政历地.one,cognize_map.get(Combination.政历地.one) + specialtyList.get(i).getPoliticPerformance());
            	cognize_map.put(Combination.政历地.two,cognize_map.get(Combination.政历地.two) + specialtyList.get(i).getHistoryPerformance());
            	cognize_map.put(Combination.政历地.three,cognize_map.get(Combination.政历地.three) + specialtyList.get(i).getGeographyPerformance());
            }
            List<Map.Entry<String, Double>> cognize_list = new LinkedList<Map.Entry<String, Double>>(cognize_map.entrySet());
            Collections.sort(cognize_list, (o1, o2) -> o2.getValue().compareTo(o1.getValue()));
            session.setAttribute("cognize_analyze", JSON.toJSONString(cognize_list));
            cognize_map.put(Combination.物化生.one,cognize_map.get(Combination.物化生.one)/cognize_total_score);//物理占比
            cognize_map.put(Combination.物化生.two,cognize_map.get(Combination.物化生.two)/cognize_total_score);//化学占比
            cognize_map.put(Combination.物化生.three,cognize_map.get(Combination.物化生.three)/cognize_total_score);//生物占比
            cognize_map.put(Combination.政历地.one,cognize_map.get(Combination.政历地.one)/cognize_total_score);//政治占比
            cognize_map.put(Combination.政历地.two,cognize_map.get(Combination.政历地.two)/cognize_total_score);//历史占比
            cognize_map.put(Combination.政历地.three,cognize_map.get(Combination.政历地.three)/cognize_total_score);//地理占比
            
            Map<String,Double> map = new HashMap<>();//总占比map
            map.put(Combination.物化生.one, score_map.get(Combination.物化生.one) + potential_map.get(Combination.物化生.one) + cognize_map.get(Combination.物化生.one));//物理
            map.put(Combination.物化生.two, score_map.get(Combination.物化生.two) + potential_map.get(Combination.物化生.two) + cognize_map.get(Combination.物化生.two));//化学
            map.put(Combination.物化生.three, score_map.get(Combination.物化生.three) + potential_map.get(Combination.物化生.three) + cognize_map.get(Combination.物化生.three));//生物
            map.put(Combination.政历地.one, score_map.get(Combination.政历地.one) + potential_map.get(Combination.政历地.one) + cognize_map.get(Combination.政历地.one));//政治
            map.put(Combination.政历地.two, score_map.get(Combination.政历地.two) + potential_map.get(Combination.政历地.two) + cognize_map.get(Combination.政历地.two));//历史
            map.put(Combination.政历地.three, score_map.get(Combination.政历地.three) + potential_map.get(Combination.政历地.three) + cognize_map.get(Combination.政历地.three));//地理
            
            Map<String,Double> combinationMap = new HashMap<>();//组合学科map
            combinationMap.put(Combination.物化生.toString(),map.get(Combination.物化生.one) + map.get(Combination.物化生.two) + map.get(Combination.物化生.three));
            combinationMap.put(Combination.物化政.toString(),map.get(Combination.物化政.one) + map.get(Combination.物化政.two) + map.get(Combination.物化政.three));
            combinationMap.put(Combination.物化历.toString(),map.get(Combination.物化历.one) + map.get(Combination.物化历.two) + map.get(Combination.物化历.three));
            combinationMap.put(Combination.物化地.toString(),map.get(Combination.物化地.one) + map.get(Combination.物化地.two) + map.get(Combination.物化地.three));
            combinationMap.put(Combination.物生政.toString(),map.get(Combination.物生政.one) + map.get(Combination.物生政.two) + map.get(Combination.物生政.three));
            combinationMap.put(Combination.物生历.toString(),map.get(Combination.物生历.one) + map.get(Combination.物生历.two) + map.get(Combination.物生历.three));
            combinationMap.put(Combination.物生地.toString(),map.get(Combination.物生地.one) + map.get(Combination.物生地.two) + map.get(Combination.物生地.three));
            combinationMap.put(Combination.物政历.toString(),map.get(Combination.物政历.one) + map.get(Combination.物政历.two) + map.get(Combination.物政历.three));
            combinationMap.put(Combination.物政地.toString(),map.get(Combination.物政地.one) + map.get(Combination.物政地.two) + map.get(Combination.物政地.three));
            combinationMap.put(Combination.物历地.toString(),map.get(Combination.物历地.one) + map.get(Combination.物历地.two) + map.get(Combination.物历地.three));
            combinationMap.put(Combination.化生政.toString(),map.get(Combination.化生政.one) + map.get(Combination.化生政.two) + map.get(Combination.化生政.three));
            combinationMap.put(Combination.化生历.toString(),map.get(Combination.化生历.one) + map.get(Combination.化生历.two) + map.get(Combination.化生历.three));
            combinationMap.put(Combination.化生地.toString(),map.get(Combination.化生地.one) + map.get(Combination.化生地.two) + map.get(Combination.化生地.three));
            combinationMap.put(Combination.化政历.toString(),map.get(Combination.化政历.one) + map.get(Combination.化政历.two) + map.get(Combination.化政历.three));
            combinationMap.put(Combination.化政地.toString(),map.get(Combination.化政地.one) + map.get(Combination.化政地.two) + map.get(Combination.化政地.three));
            combinationMap.put(Combination.化历地.toString(),map.get(Combination.化历地.one) + map.get(Combination.化历地.two) + map.get(Combination.化历地.three));
            combinationMap.put(Combination.生政历.toString(),map.get(Combination.生政历.one) + map.get(Combination.生政历.two) + map.get(Combination.生政历.three));
            combinationMap.put(Combination.生政地.toString(),map.get(Combination.生政地.one) + map.get(Combination.生政地.two) + map.get(Combination.生政地.three));
            combinationMap.put(Combination.生历地.toString(),map.get(Combination.生历地.one) + map.get(Combination.生历地.two) + map.get(Combination.生历地.three));
            combinationMap.put(Combination.政历地.toString(),map.get(Combination.政历地.one) + map.get(Combination.政历地.two) + map.get(Combination.政历地.three));
            //通过成绩分析、潜能测评、认知测评分析获得 学科组合分布
            List<Map.Entry<String, Double>> list = new LinkedList<Map.Entry<String, Double>>(combinationMap.entrySet());
            Collections.sort(list, (o1, o2) -> o2.getValue().compareTo(o1.getValue()));
            List<String> combination_list = new ArrayList<>();
            for (int i=0; i<list.size(); i++) {
            	combination_list.add(i, list.get(i).getKey());
			}
            session.setAttribute("recommend_combination",JSON.toJSONString(combination_list));//测评推荐学科组合
            //测评+分析 学科组合总分
			Double combination_total_score = 0d;
			for(Double value : combinationMap.values()){
				combination_total_score += value;
			}
			
            
            //获取当前年份政策[已学生填写的高考年度为准]
            User user = userMapper.select(" id = '" + uid + "'", null, null, null).get(0);
            String year = StringUtils.isEmpty(user.getCeeYear())? new SimpleDateFormat("yyyy").format(new Date()) : user.getCeeYear();
            //政策查询条件
            where = " e_year = '" + year + "' AND LOCATE('" + specialtyId + "', include_major) > 0 AND LOCATE('" + province + "', e_province) > 0";
            List<EnrollmentRequirements> enrollmentRequirementsList = enrollmentRequirementsMapper.select(where, null, null, null);
            
            System.err.println(enrollmentRequirementsList);
            //当地政策map
            if (enrollmentRequirementsList.isEmpty()) {
				return "web/xgk/xgk_pick_report";
			}
            String[] enrollment_list = enrollmentRequirementsList.get(0).getSubjectCombination().split(";");
            List<String> policy_combination = new ArrayList<>();//政策学科组合
            for(int i=0; i<enrollment_list.length; i++){
            	Integer count = 1;
            	for(int j=1; j<enrollmentRequirementsList.size(); j++){
            		String subCom = enrollmentRequirementsList.get(j).getSubjectCombination();
            		if (subCom.contains(enrollment_list[i])) {
            			count ++;
					} else{
						break;
					}
            	}
            	if (count.equals(enrollmentRequirementsList.size())) {
            		policy_combination.add(enrollment_list[i]);
				}
            }
            
			Map<String, Double> policy_map = new HashMap<>();//政策允许出现的学科组合Map<学科,总占比>
            if (policy_combination.isEmpty()) {//无交集
            	int count = 0;//政策允许学科组合总数
				for(int i=0; i<enrollmentRequirementsList.size(); i++){
					enrollment_list = enrollmentRequirementsList.get(i).getSubjectCombination().split(";");
					for(int j=0; j<enrollment_list.length; j++){
						if (policy_map.containsKey(enrollment_list[j])) {
							policy_map.put(enrollment_list[j], policy_map.get(enrollment_list[j]) + 1);//出现次数+1
						} else {
							count ++ ;
							policy_map.put(enrollment_list[j], 1d);
							policy_combination.add(enrollment_list[j]);
						}
					}
				}
				for(Map.Entry<String, Double> enrty : policy_map.entrySet()){
					//政策允许出现学科组合占比 + 测评学科组合占比
					policy_map.put(enrty.getKey(), enrty.getValue()/count + combinationMap.get(enrty.getKey())/combination_total_score);
				}
				session.setAttribute("intersection", 0);//无交集
				
			} else {
				for(int i=0; i<enrollmentRequirementsList.size(); i++){
					enrollment_list = enrollmentRequirementsList.get(i).getSubjectCombination().split(";");
					for(int j=0; j<enrollment_list.length; j++){
						if (policy_map.containsKey(enrollment_list[j])) {
							policy_map.put(enrollment_list[j], policy_map.get(enrollment_list[j]) + 1);
						} else {
							policy_map.put(enrollment_list[j], 1d);
						}
					}
				}
				for(String key : policy_map.keySet()){
					//政策允许出现学科组合占比 + 测评学科组合占比
					policy_map.put(key, policy_map.get(key)/enrollmentRequirementsList.size() + combinationMap.get(key)/combination_total_score);
				}
				session.setAttribute("intersection", 1);//有交集
			}
            List<Map.Entry<String, Double>> combination = new LinkedList<Map.Entry<String, Double>>(policy_map.entrySet());
			Collections.sort(combination, (o1, o2) -> o2.getValue().compareTo(o1.getValue()));
			System.err.println(combination);
			session.setAttribute("combination", JSON.toJSONString(combination));//测评  + 政策 推荐学科组合	
            session.setAttribute("policy_combination", JSON.toJSONString(policy_combination));//政策允许组合  
		}
		return "web/xgk/xgk_pick_report";
	}
	
	/**
	 * 新增选科组合报告
	 * @param request
	 * @param response
	 * @param result
	 * @return
	 */
	@RequestMapping("/xgk_add_report.do")	
	@ResponseBody
	public ResponseResult<Void> addReport(HttpServletRequest request,HttpServletResponse response,String result) {	
		System.err.println(result);
		Subject subject = SecurityUtils.getSubject();
		if (subject.isAuthenticated()) {
			Session session = subject.getSession();
			Integer uid = (Integer)session.getAttribute("uid");
			UserResultReport report = userResultReportMapper.select(" uid = '" + uid + "'", null, null, null).get(0);
			report.setEndTime(new Date())
			.setStatus("1")
			.setResult(result);
			userResultReportMapper.update(report);
			return new ResponseResult<>(ResponseResult.STATE_OK,Constants.RESULT_MESSAGE_SUCCESS);
		}
		return new ResponseResult<>(ResponseResult.ERR,"请登录后,再进行提交学科组合报告！");
	}
	
	
	
	/**
	 * @throws MyRuntimeException 
	* @Title: showhqtCustomise
	* @Description: (自定义选科页面)
	* @param @param map
	* @param @param session
	* @param @param request
	* @param @param response
	* @param @return    
	* @return String    
	* @throws
	 */
	@RequestMapping("/xgk_customise.do")	
	public String showhqtCustomise(ModelMap map,HttpServletRequest request,HttpServletResponse response) throws MyRuntimeException{		
		try
		{
			Session session = SecurityUtils.getSubject().getSession();	
			logger.info("用户名："+session.getAttribute("username")+" 模块名：自定义选科页面操作：进入模块  状态：OK!");
			return  "web/xgk/xgk_customise";
		} catch (Exception e){
			logger.error("访问路径："+request.getRequestURI()+"操作：进入自定义选科页面操作  错误信息: "+e);
			throw new MyRuntimeException(e);
		}					
	}
	/**
	 * @throws MyRuntimeException 
	* @Title: showhqtCustomisereport
	* @Description: (自定义选科报告页面)
	* @param @param map
	* @param @param session
	* @param @param request
	* @param @param response
	* @param @return    
	* @return String    
	* @throws
	 */
	@RequestMapping("/xgk_customisereport.do")	
	public String showhqtCustomisereport(ModelMap map,String str,HttpServletRequest request,HttpServletResponse response) throws MyRuntimeException{		
		try
		{
			Session session = SecurityUtils.getSubject().getSession();
			System.out.println(str);
			logger.info("用户名："+session.getAttribute("username")+" 模块名：自定义选科报告页面简介  操作：进入模块  状态：OK!");
			return  "web/xgk/xgk_customisereport";
		} catch (Exception e){
			logger.error("访问路径："+request.getRequestURI()+"操作：进入自定义选科报告页面  错误信息: "+e);
			throw new MyRuntimeException(e);
		}							
	}
	/**	
	* @Title: showhqtCpfxselectreport
	* @Description: (测评选科报告页面)
	* @param @param map
	* @param @param session
	* @param @param request
	* @param @param response
	* @param @return
	* @param @throws MyRuntimeException    
	* @return String    
	* @throws
	 */
	@RequestMapping("/xgk_guide_xuanke.do")	
	public String showhqtCpfxselectreportone(ModelMap map,String personalityCode,HttpServletRequest request,HttpServletResponse response) throws MyRuntimeException{		
		try
		{		
			Session session = SecurityUtils.getSubject().getSession();
			logger.info("用户名："+session.getAttribute("username")+" 模块名：测评选科报告页面简介  操作：进入模块  状态：OK!");
			return  "web/xgk/xgk_guide_xuanke";
		} catch (Exception e){
			logger.error("访问路径："+request.getRequestURI()+"操作：进入测评选科报告页面  错误信息: "+e);
			throw new MyRuntimeException(e);
		}							
	}
	
	/**
	* @Title: handleCpXk
	* @Description: (测评选科报告)
	* @param @param session
	* @param @param request
	* @param @return    
	* @return ResponseResult<Void>    
	* @throws
	 */
	@RequestMapping(value = "/xgk_cpxk.do", method = RequestMethod.POST)
	@ResponseBody
	public ResponseResult<Void> handleCpXk(HttpServletRequest request) {
		ResponseResult<Void> rr=null;
		try{
			Session session = SecurityUtils.getSubject().getSession();
			List<UserFeature> featurelist=userFeatureServer.getUserFeatureByUid(2);
			if(featurelist.size()>0){				
				rr = new ResponseResult<Void>(ResponseResult.STATE_OK,featurelist.get(0).getEvaluationName());
			}else{
				rr = new ResponseResult<Void>(ResponseResult.ERR,"你还没有进行测评");
			}			
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：获取测评报告信息  错误信息: " + e);
			rr = new ResponseResult<Void>(ResponseResult.ERR, "数据存在异常，请联系工作人员处理！");
		}
		return rr;
	}
	/**
	* @Title: showhqtCpEnrollment
	* @Description: (查询选科各地要求)
	* @param @param map
	* @param @param includeMajor
	* @param @param session
	* @param @param request
	* @param @param response
	* @param @return
	* @param @throws MyRuntimeException    
	* @return String    
	* @throws
	 */
	@RequestMapping("/xgk_cpEnrollment.do")	
	public String showhqtCpEnrollment(ModelMap map,String includeMajor,HttpServletRequest request,HttpServletResponse response) throws MyRuntimeException{		
		try
		{
			Session session = SecurityUtils.getSubject().getSession();
			String includeMajors=new String(includeMajor.getBytes("ISO-8859-1"),"utf-8"); 			
			List<Enrollment> enrollmentlist=enrollmentServer.getMajor(includeMajors, "湖南省");			
			map.addAttribute("enrollmentlist", enrollmentlist);
			map.addAttribute("includeMajor", includeMajor);
			logger.info("用户名："+session.getAttribute("username")+" 模块名：查询选科各地要求  操作：进入模块  状态：OK!");
			return  "web/xgk/xgk_enrollemnt";
		} catch (Exception e){
			logger.error("访问路径："+request.getRequestURI()+"操作：进入查询选科各地要求页面  错误信息: "+e);
			throw new MyRuntimeException(e);
		}							
	}
	/**
	* @Title: showhqtCpSpecialty
	* @Description: (专业详细信息页面)
	* @param @param map
	* @param @param specialtyId
	* @param @param session
	* @param @param request
	* @param @param response
	* @param @return
	* @param @throws MyRuntimeException    
	* @return String    
	* @throws
	 */
	@RequestMapping("/xgk_specialty.do")	
	public String showhqtCpSpecialty(ModelMap map,String specialtyId,HttpServletRequest request,HttpServletResponse response) throws MyRuntimeException{		
		try
		{		
			Session session = SecurityUtils.getSubject().getSession();
			List<Specialty> specialtylist=specialtyServer.getSpecialtyById(specialtyId);
			map.addAttribute("specialtylist",specialtylist);
			logger.info("用户名："+session.getAttribute("username")+" 模块名：测评选科报告页面简介  操作：进入模块  状态：OK!");
			return  "web/xgk/xgk_specialty";
		} catch (Exception e){
			logger.error("访问路径："+request.getRequestURI()+"操作：进入测评选科报告页面  错误信息: "+e);
			throw new MyRuntimeException(e);
		}							
	}
	@RequestMapping("/xgk_vocation.do")	
	public String showhqtCpVocation(ModelMap map,String vocationId,HttpServletRequest request,HttpServletResponse response) throws MyRuntimeException{		
		try
		{		
			Session session = SecurityUtils.getSubject().getSession();
			List<Vocation> vocationlist=vocationServer.getVocationById(vocationId);
			System.out.println(vocationId);
			map.addAttribute("vocationlist",vocationlist);
			logger.info("用户名："+session.getAttribute("username")+" 模块名：测评选科报告页面简介  操作：进入模块  状态：OK!");
			return  "web/xgk/xgk_vocation";
		} catch (Exception e){
			logger.error("访问路径："+request.getRequestURI()+"操作：进入测评选科报告页面  错误信息: "+e);
			throw new MyRuntimeException(e);
		}							
	}
	/**
	* @Title: handlezsyq
	* @Description: (这里用一句话描述这个方法的作用)
	* @param @param session
	* @param @param request
	* @param @return    
	* @return ResponseResult<Void>    
	* @throws
	 */
	@RequestMapping(value = "/xgk_zsyqselect.do", method = RequestMethod.POST)
	@ResponseBody
	public ResponseResult<List<Enrollment> > handlezsyq(String includeMajor,String eProvince, HttpServletRequest request) {
		ResponseResult<List<Enrollment> > rr;
		try{		
			String includeMajors=new String(includeMajor.getBytes("ISO-8859-1"),"utf-8"); 
			List<Enrollment> enrollmentlist=enrollmentServer.getMajor(includeMajors, eProvince);
			System.out.println(includeMajors);
			System.out.println(eProvince);
			System.out.println(enrollmentlist);
			if(enrollmentlist.size()>0){				
				rr = new ResponseResult<List<Enrollment> >(ResponseResult.STATE_OK,enrollmentlist);
			}else{
				rr = new ResponseResult<List<Enrollment> >(ResponseResult.ERR,"在当前区域没有该专业的相关招生信息");
			}			
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：获取招生信息  错误信息: " + e);
			rr = new ResponseResult<List<Enrollment> >(ResponseResult.ERR, "数据存在异常，请联系工作人员处理！");
		}
		return rr;
	}


}
