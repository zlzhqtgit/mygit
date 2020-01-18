package cn.hqtzytb.service.impl;

import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;

import cn.hqtzytb.controller.XgkxkController;
import cn.hqtzytb.entity.Enrollment;
import cn.hqtzytb.entity.EnrollmentRequirements;
import cn.hqtzytb.entity.Personality;
import cn.hqtzytb.entity.ResponseResult;
import cn.hqtzytb.entity.Specialty;
import cn.hqtzytb.entity.TaskDetails;
import cn.hqtzytb.entity.User;
import cn.hqtzytb.entity.UserFeature;
import cn.hqtzytb.entity.UserResultReport;
import cn.hqtzytb.entity.Vocation;
import cn.hqtzytb.mapper.EnrollmentRequirementsMapper;
import cn.hqtzytb.mapper.PersonalityMapper;
import cn.hqtzytb.mapper.SpecialtyMapper;
import cn.hqtzytb.mapper.TaskMapper;
import cn.hqtzytb.mapper.UserFeatureMapper;
import cn.hqtzytb.mapper.UserMapper;
import cn.hqtzytb.mapper.UserResultReportMapper;
import cn.hqtzytb.mapper.VocationMapper;
import cn.hqtzytb.service.IEnrollmentServer;
import cn.hqtzytb.service.ISpecialtyServer;
import cn.hqtzytb.service.IUserFeatureServer;
import cn.hqtzytb.service.IVocationServer;
import cn.hqtzytb.service.IXgkxkService;
import cn.hqtzytb.utils.Combination;
import cn.hqtzytb.utils.Constants;
import cn.hqtzytb.utils.GetCommonUser;

/**
 * @ClassName: IXgkxkServiceImpl
 * @Description: 学科探索业务实现类
 * @Author: WuPeiLong
 * @Date: 2019年12月25日
 * @Copyright:好前途教育
 * @Version V1.0
 */
@Service
public class IXgkxkServiceImpl implements IXgkxkService {
	private static final Logger logger = LogManager.getLogger(XgkxkController.class.getName());
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
	@Autowired
	private TaskMapper taskMapper;

	@Override
	public String showhqtXgkGuideSelect(Integer taskId, ModelMap map, HttpServletRequest request,
			HttpServletResponse response) {
		try {
			Subject subject = SecurityUtils.getSubject();
			Session session = subject.getSession();
			if (subject.isAuthenticated()) {
				if (taskId != null) {
					session.setAttribute("taskId", taskId);
				}
				List<UserFeature> userFeatures = userFeatureMapper
						.select("uid = '" + (Integer) session.getAttribute("uid") + "'", null, null, null);
				Integer SCORE_ANALYZE = 0;// 成绩分析
				Integer POTENTIALSCORE_ANALYZE = 0;// 潜能分析
				Integer COGNIZESCORE_ANALYZE = 0;// 认知分析
				for (UserFeature userFeature : userFeatures) {
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
			session.setAttribute("LARGE_CLASS",
					JSON.toJSONString(vocationMapper.selectLargeClass(null, null, null, null)));// 职业大类
			logger.info("用户名：" + session.getAttribute("username") + " 模块名：选科指导页面     操作：进入模块  状态：OK!");
			return "web/xgk/xgk_pick_guide";
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：进入选科指导页面   错误信息: " + e);
			return "web/xgk/xgk_error_404";
		}
	}

	@Override
	public ResponseResult<Map<String,Object>> getVocationList(String industryName, HttpServletRequest request) {
		try {
			Map<String,Object> resultMap = new HashMap<>();
			List<Vocation> vocationList = vocationMapper.select(" b.industry_name = '" + industryName + "'", null, null, null);
			List<Specialty> specialtyList = specialtyMapper.selectSpecialtyListByIndustryName(" v.industry_name = '" + industryName + "'", null, null, null);
			resultMap.put("sList", specialtyList);
			resultMap.put("vList", vocationList);
			return new ResponseResult<>(ResponseResult.STATE_OK, Constants.RESULT_MESSAGE_SUCCESS, resultMap);
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：依据职业大类查询职业详情清单   错误信息: " + e);
			return new ResponseResult<>(ResponseResult.ERR, Constants.RESULT_MESSAGE_FAIL);
		}
	}

	@Override
	public ResponseResult<List<Specialty>> getSpecialtyList(String vocationId, HttpServletRequest request) {
		try {
			List<Specialty> specialtyList = specialtyMapper.selectvoction(" e.vocation_id = '" + vocationId + "' ",
					null, null, null);
			return new ResponseResult<>(ResponseResult.STATE_OK, Constants.RESULT_MESSAGE_SUCCESS, specialtyList);
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：依据职业id查询相关专业信息   错误信息: " + e);
			return new ResponseResult<>(ResponseResult.ERR, Constants.RESULT_MESSAGE_FAIL);
		}
	}

	@Override
	public ResponseResult<Void> getPickReport(HttpServletRequest request) {
		try {
			Subject subject = SecurityUtils.getSubject();
			Session session = subject.getSession();
			if (subject.isAuthenticated()) {
				List<UserResultReport> userResultReports = userResultReportMapper
						.select(" uid = '" + (Integer) session.getAttribute("uid") + "'", null, null, null);
				if (userResultReports.isEmpty()) {// 用户未进行过学科指导
					return new ResponseResult<>(ResponseResult.STATE_OK, Constants.RESULT_MESSAGE_SUCCESS);
				} else {
					if ("1".equals(userResultReports.get(0).getStatus())) {
						session.setAttribute("whether_done", 1);// 已做过选科指导
					} else {
						session.setAttribute("whether_done", 0);// 已做过选科指导
					}
					return new ResponseResult<>(ResponseResult.STATE_OK, Constants.RESULT_MESSAGE_SUCCESS);
				}

			} else {
				return new ResponseResult<>(ResponseResult.ERR, "用户未登录,请登录后再进行学科！");
			}
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：查询用户是否可以继续选科异常   错误信息: " + e);
			return new ResponseResult<>(ResponseResult.ERR, Constants.RESULT_MESSAGE_FAIL);
		}

	}

	@Override
	public String getGenerateReport(String province, String specialtyId, HttpServletRequest request) throws UnsupportedEncodingException {
		try {
			Subject subject = SecurityUtils.getSubject();
			province = new String(province.toString().getBytes("ISO8859-1"), "UTF-8");
			specialtyId = new String(specialtyId.toString().getBytes("ISO8859-1"), "UTF-8");
			if (subject.isAuthenticated()) {
				Session session = subject.getSession();
				session.setAttribute("choose_province", province);// 选择省份
				session.setAttribute("choose_specialtyId", specialtyId);// 选择专业
				session.setAttribute("choose_enrollment_major",	specialtyMapper.select(" b.specialty_id = '" + specialtyId + "'", null, null, null).get(0));// 选择专业名字
				Integer uid = (Integer) session.getAttribute("uid");
				List<UserFeature> userFeatures = userFeatureMapper.select(" uid = '" + (Integer) session.getAttribute("uid") + "' ", null, null, null);
				String score_analyze = null;// 成绩分析
				String potential_analyze = null;// 潜能分析
				UserFeature mbti_analyze = null;// MBTI分析
				UserFeature hld_analyze = null;// 霍兰德分析
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
	
				// 成绩分析
				Map<String, Double> score_map = new HashMap<>();// 分数map
				List<List<String>> stringList = GetCommonUser.getJson(score_analyze, request);
				Double wu = 0d;// 物
				Double hua = 0d;// 化
				Double sheng = 0d;// 生
				Double zheng = 0d;// 政
				Double li = 0d;// 历
				Double di = 0d;// 地
				Double total_score = 0d;// 成绩分析总分
				for (int i = 0; i < stringList.size(); i++) {
					if (Combination.物化生.one.equals(stringList.get(i).get(0))) {
						if (StringUtils.isEmpty(stringList.get(i).get(0))) {
							wu = 0d;
						} else {
							wu = Double.valueOf(stringList.get(i).get(1));// 物理
							total_score += Double.valueOf(stringList.get(i).get(1));
						}
					}
					if (Combination.物化生.two.equals(stringList.get(i).get(0))) {
						if (StringUtils.isEmpty(stringList.get(i).get(0))) {
							hua = 0d;
						} else {
							hua = Double.valueOf(stringList.get(i).get(1));// 化学
							total_score += Double.valueOf(stringList.get(i).get(1));
						}
					}
					if (Combination.物化生.three.equals(stringList.get(i).get(0))) {
						if (StringUtils.isEmpty(stringList.get(i).get(0))) {
							sheng = 0d;
						} else {
							sheng = Double.valueOf(stringList.get(i).get(1));// 生物
							total_score += Double.valueOf(stringList.get(i).get(1));
						}
					}
					if (Combination.政历地.one.equals(stringList.get(i).get(0))) {
						if (StringUtils.isEmpty(stringList.get(i).get(0))) {
							zheng = 0d;
						} else {
							zheng = Double.valueOf(stringList.get(i).get(1));// 政治
							total_score += Double.valueOf(stringList.get(i).get(1));
						}
					}
					if (Combination.政历地.two.equals(stringList.get(i).get(0))) {
						if (StringUtils.isEmpty(stringList.get(i).get(0))) {
							li = 0d;
						} else {
							li = Double.valueOf(stringList.get(i).get(1));// 历史
							total_score += Double.valueOf(stringList.get(i).get(1));
						}
					}
					if (Combination.政历地.three.equals(stringList.get(i).get(0))) {
						if (StringUtils.isEmpty(stringList.get(i).get(0))) {
							di = 0d;
						} else {
							di = Double.valueOf(stringList.get(i).get(1));// 地理
							total_score += Double.valueOf(stringList.get(i).get(1));
						}	
					}					
				}
				if (!total_score.equals(new Double(0))) {
					score_map.put(Combination.物化生.one, wu / total_score);// 物理占比
					score_map.put(Combination.物化生.two, hua / total_score);// 化学占比
					score_map.put(Combination.物化生.three, sheng / total_score);// 生物占比
					score_map.put(Combination.政历地.one, zheng / total_score);// 政治占比
					score_map.put(Combination.政历地.two, li / total_score);// 历史占比
					score_map.put(Combination.政历地.three, di / total_score);// 地理占比
				} else {
					score_map.put(Combination.物化生.one, 0d);// 物理占比
					score_map.put(Combination.物化生.two, 0d);// 化学占比
					score_map.put(Combination.物化生.three, 0d);// 生物占比
					score_map.put(Combination.政历地.one, 0d);// 政治占比
					score_map.put(Combination.政历地.two, 0d);// 历史占比
					score_map.put(Combination.政历地.three, 0d);// 地理占比
				}
				session.setAttribute("score_analyse", score_analyze);
	
				// 潜能分析
				Map<String, Double> potential_map = new HashMap<>();// 分数map
				wu = 0d;// 物
				hua = 0d;// 化
				sheng = 0d;// 生
				zheng = 0d;// 政
				li = 0d;// 历
				di = 0d;// 地
				JSONArray jsonArray2 = JSON.parseArray(potential_analyze);
				total_score = 0d;// 潜能分析总分
				for (int i = 0; i < jsonArray2.size(); i++) {
					if (Combination.物化生.one.equals(jsonArray2.getJSONArray(i).get(0).toString())) {
						wu += Double.valueOf(jsonArray2.getJSONArray(i).get(2).toString());// 物
					}
					if (Combination.物化生.two.equals(jsonArray2.getJSONArray(i).get(0).toString())) {
						hua += Double.valueOf(jsonArray2.getJSONArray(i).get(2).toString());// 化
					}
					if (Combination.物化生.three.equals(jsonArray2.getJSONArray(i).get(0).toString())) {
						sheng += Double.valueOf(jsonArray2.getJSONArray(i).get(2).toString());// 生
					}
					if (Combination.政历地.one.equals(jsonArray2.getJSONArray(i).get(0).toString())) {
						zheng += Double.valueOf(jsonArray2.getJSONArray(i).get(2).toString());// 政
					}
					if (Combination.政历地.two.equals(jsonArray2.getJSONArray(i).get(0).toString())) {
						li += Double.valueOf(jsonArray2.getJSONArray(i).get(2).toString());// 历
					}
					if (Combination.政历地.three.equals(jsonArray2.getJSONArray(i).get(0).toString())) {
						di += Double.valueOf(jsonArray2.getJSONArray(i).get(2).toString());// 地
					}
					total_score += Double.valueOf(jsonArray2.getJSONArray(i).get(2).toString());
				}
				if (!total_score.equals(new Double(0))) {
					potential_map.put(Combination.物化生.one, wu / total_score);// 物理占比
					potential_map.put(Combination.物化生.two, hua / total_score);// 化学占比
					potential_map.put(Combination.物化生.three, sheng / total_score);// 生物占比
					potential_map.put(Combination.政历地.one, zheng / total_score);// 政治占比
					potential_map.put(Combination.政历地.two, li / total_score);// 历史占比
					potential_map.put(Combination.政历地.three, di / total_score);// 地理占比
				} else {
					potential_map.put(Combination.物化生.one, 0d);// 物理占比
					potential_map.put(Combination.物化生.two, 0d);// 化学占比
					potential_map.put(Combination.物化生.three, 0d);// 生物占比
					potential_map.put(Combination.政历地.one, 0d);// 政治占比
					potential_map.put(Combination.政历地.two, 0d);// 历史占比
					potential_map.put(Combination.政历地.three, 0d);// 地理占比
				}
				session.setAttribute("potential_analyse", potential_analyze);
	
				// 认知分析
				UserFeature cognize_analyze = mbti_analyze == null ? hld_analyze : mbti_analyze;// 认知分析 [优先选择mbti分析] 
				Map<String, Object> paramMap = new HashMap<>();
				paramMap.put("personalityCode", cognize_analyze.getEvaluationName());
				List<Personality> personalityList = personalityMapper.selectPersonalityListByMap(paramMap);
				Map<String, Double> cognize_map = new HashMap<>();// 分数map
				wu = 0d;// 物
				hua = 0d;// 化
				sheng = 0d;// 生
				zheng = 0d;// 政
				li = 0d;// 历
				di = 0d;// 地
				total_score = 0d;// 认知分析总分
				if (personalityList.isEmpty()) {
					cognize_map.put(Combination.物化生.one, 0d);// 物理占比
					cognize_map.put(Combination.物化生.two, 0d);// 化学
					cognize_map.put(Combination.物化生.three, 0d);// 生物
					cognize_map.put(Combination.政历地.one, 0d);// 政治
					cognize_map.put(Combination.政历地.two, 0d);// 历史
					cognize_map.put(Combination.政历地.three, 0d);// 地理
				} else {
					Personality personality = personalityList.get(0);// 认知测评结果数据信息
					List<List<String>> specialtyIns = GetCommonUser.getJson(personality.getPersonalitySpecialty(), request);
					String where = " specialty_id IN (";
					for (int i = 0; i < specialtyIns.size(); i++) {
						if (i == specialtyIns.size() - 1) {
							where += specialtyIns.get(i).get(0);
						} else {
							where += specialtyIns.get(i).get(0) + ",";
						}
					}
					// 查询专业科目分数占比
					List<Specialty> specialtyList = specialtyMapper.select(where + ")", null, null, null);
					for (int i=0; i<specialtyList.size(); i++) {
						total_score += specialtyList.get(i).getPhysicsPerformance()
									+  specialtyList.get(i).getChemistryPerformance()
									+  specialtyList.get(i).getBiologyPerformance()
									+  specialtyList.get(i).getPoliticPerformance()
									+  specialtyList.get(i).getHistoryPerformance()
									+  specialtyList.get(i).getGeographyPerformance();
						wu += specialtyList.get(i).getPhysicsPerformance();// 物
						hua += specialtyList.get(i).getChemistryPerformance();// 化
						sheng += specialtyList.get(i).getBiologyPerformance();// 生
						zheng += specialtyList.get(i).getPoliticPerformance();// 政
						li += specialtyList.get(i).getHistoryPerformance();// 历
						di += specialtyList.get(i).getGeographyPerformance();// 地
					}
				}
				cognize_map.put(Combination.物化生.one, wu / total_score);// 物理占比
				cognize_map.put(Combination.物化生.two, hua / total_score);// 化学占比
				cognize_map.put(Combination.物化生.three, sheng / total_score);// 生物占比
				cognize_map.put(Combination.政历地.one, zheng / total_score);// 政治占比
				cognize_map.put(Combination.政历地.two, li / total_score);// 历史占比
				cognize_map.put(Combination.政历地.three, di / total_score);// 地理占比
				List<Map.Entry<String, Double>> cognize_list = new LinkedList<Map.Entry<String, Double>>(cognize_map.entrySet());
				Collections.sort(cognize_list, (o1, o2) -> o2.getValue().compareTo(o1.getValue()));
				session.setAttribute("cognize_analyze", JSON.toJSONString(cognize_list));// 认知测评
	
				Map<String, Double> map = new HashMap<>();// 总占比map
				map.put(Combination.物化生.one, score_map.get(Combination.物化生.one) + potential_map.get(Combination.物化生.one) + cognize_map.get(Combination.物化生.one));// 物理
				map.put(Combination.物化生.two, score_map.get(Combination.物化生.two) + potential_map.get(Combination.物化生.two) + cognize_map.get(Combination.物化生.two));// 化学
				map.put(Combination.物化生.three, score_map.get(Combination.物化生.three) + potential_map.get(Combination.物化生.three) + cognize_map.get(Combination.物化生.three));// 生物
				map.put(Combination.政历地.one, score_map.get(Combination.政历地.one) + potential_map.get(Combination.政历地.one) + cognize_map.get(Combination.政历地.one));// 政治
				map.put(Combination.政历地.two, score_map.get(Combination.政历地.two) + potential_map.get(Combination.政历地.two) + cognize_map.get(Combination.政历地.two));// 历史
				map.put(Combination.政历地.three, score_map.get(Combination.政历地.three)	+ potential_map.get(Combination.政历地.three) + cognize_map.get(Combination.政历地.three));// 地理
	
				Map<String, Double> combinationMap = new HashMap<>();// 学科组合map
				combinationMap.put(Combination.物化生.toString(),	map.get(Combination.物化生.one) + map.get(Combination.物化生.two) + map.get(Combination.物化生.three));
				combinationMap.put(Combination.物化政.toString(),	map.get(Combination.物化政.one) + map.get(Combination.物化政.two) + map.get(Combination.物化政.three));
				combinationMap.put(Combination.物化历.toString(),	map.get(Combination.物化历.one) + map.get(Combination.物化历.two) + map.get(Combination.物化历.three));
				combinationMap.put(Combination.物化地.toString(),	map.get(Combination.物化地.one) + map.get(Combination.物化地.two) + map.get(Combination.物化地.three));
				combinationMap.put(Combination.物生政.toString(),	map.get(Combination.物生政.one) + map.get(Combination.物生政.two) + map.get(Combination.物生政.three));
				combinationMap.put(Combination.物生历.toString(),	map.get(Combination.物生历.one) + map.get(Combination.物生历.two) + map.get(Combination.物生历.three));
				combinationMap.put(Combination.物生地.toString(),	map.get(Combination.物生地.one) + map.get(Combination.物生地.two) + map.get(Combination.物生地.three));
				combinationMap.put(Combination.物政历.toString(),	map.get(Combination.物政历.one) + map.get(Combination.物政历.two) + map.get(Combination.物政历.three));
				combinationMap.put(Combination.物政地.toString(),	map.get(Combination.物政地.one) + map.get(Combination.物政地.two) + map.get(Combination.物政地.three));
				combinationMap.put(Combination.物历地.toString(),	map.get(Combination.物历地.one) + map.get(Combination.物历地.two) + map.get(Combination.物历地.three));
				combinationMap.put(Combination.化生政.toString(),	map.get(Combination.化生政.one) + map.get(Combination.化生政.two) + map.get(Combination.化生政.three));
				combinationMap.put(Combination.化生历.toString(),	map.get(Combination.化生历.one) + map.get(Combination.化生历.two) + map.get(Combination.化生历.three));
				combinationMap.put(Combination.化生地.toString(),	map.get(Combination.化生地.one) + map.get(Combination.化生地.two) + map.get(Combination.化生地.three));
				combinationMap.put(Combination.化政历.toString(),	map.get(Combination.化政历.one) + map.get(Combination.化政历.two) + map.get(Combination.化政历.three));
				combinationMap.put(Combination.化政地.toString(),	map.get(Combination.化政地.one) + map.get(Combination.化政地.two) + map.get(Combination.化政地.three));
				combinationMap.put(Combination.化历地.toString(),	map.get(Combination.化历地.one) + map.get(Combination.化历地.two) + map.get(Combination.化历地.three));
				combinationMap.put(Combination.生政历.toString(),	map.get(Combination.生政历.one) + map.get(Combination.生政历.two) + map.get(Combination.生政历.three));
				combinationMap.put(Combination.生政地.toString(),	map.get(Combination.生政地.one) + map.get(Combination.生政地.two) + map.get(Combination.生政地.three));
				combinationMap.put(Combination.生历地.toString(),	map.get(Combination.生历地.one) + map.get(Combination.生历地.two) + map.get(Combination.生历地.three));
				combinationMap.put(Combination.政历地.toString(),	map.get(Combination.政历地.one) + map.get(Combination.政历地.two) + map.get(Combination.政历地.three));
				// 通过成绩分析、潜能测评、认知测评分析获得 学科组合分布
				List<Map.Entry<String, Double>> list = new LinkedList<Map.Entry<String, Double>>(combinationMap.entrySet());
				Collections.sort(list, (o1, o2) -> o2.getValue().compareTo(o1.getValue()));
				List<String> combination_list = new ArrayList<>();
				for (int i = 0; i < list.size(); i++) {
					combination_list.add(i, list.get(i).getKey());
				}
				session.setAttribute("recommend_combination", JSON.toJSONString(combination_list));// 测评推荐学科组合排序
	
				// 测评+分析 学科组合总分
				Double combination_total_score = 0d;
				for (Double value : combinationMap.values()) {
					combination_total_score += value;
				}
				// 获取当前年份政策[已学生填写的高考年度为准]
				User user = userMapper.select(" id = '" + uid + "'", null, null, null).get(0);
				String year = StringUtils.isEmpty(user.getEducationalCircles()) ? new SimpleDateFormat("yyyy").format(new Date()) : user.getEducationalCircles();
				session.setAttribute("choose_year", year);// 当地政策年份
				// 政策查询条件
				String where = " e_year = '" + year + "' AND LOCATE('" + specialtyId + "', include_major) > 0 AND LOCATE('"	+ province + "', e_province) > 0";
				List<EnrollmentRequirements> enrollmentRequirementsList = enrollmentRequirementsMapper.select(where, null, null, null);
	
				// 当地政策map
				if (enrollmentRequirementsList.isEmpty()) {
					session.setAttribute("intersection", 2);// 无当地政策
					session.setAttribute("combination", JSON.toJSONString(combination_list));// 测评推荐学科组合
					session.setAttribute("policy_combination", JSON.toJSONString(new ArrayList<String>()));// 政策允许选科组合
					return "web/xgk/xgk_pick_report";
				}
				String[] enrollment_list = null;
				if (StringUtils.isNotEmpty(enrollmentRequirementsList.get(0).getSubjectCombination())) {
					enrollment_list = enrollmentRequirementsList.get(0).getSubjectCombination().split(";");// 某一所院校政策允许学科组合数组
				} else {
					enrollment_list = new String[0];
				}
				List<String> policy_combination = new ArrayList<>();// 交集政策学科组合
				for (int i = 0; i < enrollment_list.length; i++) {// 当前院校某一学科组合
					Integer count = 1;
					for (EnrollmentRequirements enrollmentRequirements : enrollmentRequirementsList) {// 院校政策
						String subCom = enrollmentRequirements.getSubjectCombination();// 院校政策允许学科组合字符串
						if (StringUtils.isNotEmpty(subCom) && subCom.contains(enrollment_list[i])) {
							count++;
						} else {
							break;
						}
					}
					if (count.equals(enrollmentRequirementsList.size())) {
						policy_combination.add(enrollment_list[i]);
					}
				}
	
				Map<String, Double> policy_map = new HashMap<>();// 政策允许出现的学科组合Map<学科,总占比>
				if (policy_combination.isEmpty()) {// 无交集
					int count = 0;// 政策允许学科组合总数
					for (int i = 0; i < enrollmentRequirementsList.size(); i++) {
						if (StringUtils.isEmpty(enrollmentRequirementsList.get(i).getSubjectCombination())) {
							break;
						}
						enrollment_list = enrollmentRequirementsList.get(i).getSubjectCombination().split(";");
						for (int j = 0; j < enrollment_list.length; j++) {
							count++;
							if (policy_map.containsKey(enrollment_list[j])) {
								policy_map.put(enrollment_list[j], policy_map.get(enrollment_list[j]) + 1);// 出现次数+1
							} else {
								policy_map.put(enrollment_list[j], 1d);
								policy_combination.add(enrollment_list[j]);
							}
						}
					}
					for (Map.Entry<String, Double> enrty : policy_map.entrySet()) {
						// 政策允许出现学科组合占比 + 测评学科组合占比
						policy_map.put(enrty.getKey(), enrty.getValue() / count + combinationMap.get(enrty.getKey()) / combination_total_score);
					}
					session.setAttribute("intersection", 0);// 无交集
	
				} else {
					for (int i = 0; i < enrollmentRequirementsList.size(); i++) {
						enrollment_list = enrollmentRequirementsList.get(i).getSubjectCombination().split(";");
						for (int j = 0; j < enrollment_list.length; j++) {
							if (policy_map.containsKey(enrollment_list[j])) {
								policy_map.put(enrollment_list[j], policy_map.get(enrollment_list[j]) + 1);
							} else {
								policy_map.put(enrollment_list[j], 1d);
								policy_combination.add(enrollment_list[j]);
							}
						}
					}
					for (String key : policy_map.keySet()) {
						// 政策允许出现学科组合占比 + 测评学科组合占比
						policy_map.put(key, policy_map.get(key) / enrollmentRequirementsList.size()	+ combinationMap.get(key) / combination_total_score);
					}
					session.setAttribute("intersection", 1);// 有交集
				}
				List<Map.Entry<String, Double>> combination = new LinkedList<Map.Entry<String, Double>>(policy_map.entrySet());
				Collections.sort(combination, (o1, o2) -> o2.getValue().compareTo(o1.getValue()));
				session.setAttribute("combination", JSON.toJSONString(combination));// 测评 + 政策 推荐学科组合																					
				session.setAttribute("policy_combination", JSON.toJSONString(policy_combination));// 政策允许组合
			}	
			return "web/xgk/xgk_pick_report";
		 } catch (Exception e) {
			 logger.error("访问路径：" + request.getRequestURI() + "操作：进入选科报告数据分析异常错误信息: " + e);
			 return "web/xgk/xgk_error_404";
		 }
	}

	@Override
	public ResponseResult<Void> addReport(String result, HttpServletRequest request) {
		try {
			Subject subject = SecurityUtils.getSubject();
			if (subject.isAuthenticated()) {
				Session session = subject.getSession();
				String province = (String) session.getAttribute("choose_province");
				String specialtyId = (String) session.getAttribute("choose_specialtyId");
				Date currentTime = new Date();
				UserResultReport report = null;
				Integer uid = (Integer) session.getAttribute("uid");
				List<UserResultReport> reportList = userResultReportMapper.select(" uid = '" + uid + "'", null, null, null);
				String taskId = (String) session.getAttribute("taskId");
				TaskDetails task = null;
				if (StringUtils.isNotEmpty(taskId)) {
					task = taskMapper.selectTaskDetails(" a.tid = '" + taskId + "' ", null, null, null).get(0);
				}
				if (reportList.isEmpty()) {
					report = new UserResultReport();
					report.setUid(uid);
					report.setProvince(province);
					report.setSpecialtyId(specialtyId);
					report.setResult(result);
					report.setStatus("1");
					report.setStartTime(currentTime);
					report.setEndTime(currentTime);
				} else {
					report = reportList.get(0);
					report.setEndTime(currentTime);
					report.setProvince(province);
					report.setSpecialtyId(specialtyId);
					report.setStatus("1");
					report.setResult(result);
				}
				if (task != null) {
					task.setdStatus(2);
					task.setdResult(result);
					taskMapper.updateTaskDetails(task);
					report.setStartTime(task.getCreationTime());
				}
				if (reportList.isEmpty()) {
					userResultReportMapper.insert(report);
				} else {
					userResultReportMapper.update(report);
				}
				session.setAttribute("whether_done", 1);// 已做过选科指导
				return new ResponseResult<>(ResponseResult.STATE_OK, Constants.RESULT_MESSAGE_SUCCESS);
			}
			return new ResponseResult<>(ResponseResult.ERR, "请登录后,再进行提交学科组合报告！");
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：新增选科组合报告异常   错误信息: " + e);
			return new ResponseResult<>(ResponseResult.ERR, Constants.RESULT_MESSAGE_FAIL);
		}
	}

	@Override
	public String showhqtCustomise(ModelMap map, HttpServletRequest request, HttpServletResponse response) {
		try {
			Session session = SecurityUtils.getSubject().getSession();
			logger.info("用户名：" + session.getAttribute("username") + " 模块名：自定义选科页面操作：进入模块  状态：OK!");
			return "web/xgk/xgk_customise";
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：进入自定义选科页面操作  错误信息: " + e);
			return "web/xgk/xgk_error_404";
		}
	}

	@Override
	public String showhqtCustomisereport(ModelMap map, String str, HttpServletRequest request,
			HttpServletResponse response) {
		try {
			Session session = SecurityUtils.getSubject().getSession();
			logger.info("用户名：" + session.getAttribute("username") + " 模块名：自定义选科报告页面简介  操作：进入模块  状态：OK!");
			return "web/xgk/xgk_customisereport";
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：进入自定义选科报告页面  错误信息: " + e);
			return "web/xgk/xgk_error_404";
		}
	}

	@Override
	public String showhqtCpfxselectreportone(String personalityCode, HttpServletRequest request,
			HttpServletResponse response) {
		try {
			Session session = SecurityUtils.getSubject().getSession();
			logger.info("用户名：" + session.getAttribute("username") + " 模块名：测评选科报告页面简介  操作：进入模块  状态：OK!");
			return "web/xgk/xgk_guide_xuanke";
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：进入测评选科报告页面  错误信息: " + e);
			return "web/xgk/xgk_error_404";
		}
	}

	@Override
	public ResponseResult<Void> handleCpXk(HttpServletRequest request) {
		ResponseResult<Void> rr = null;
		try {
			Subject subject = SecurityUtils.getSubject();
			if (subject.isAuthenticated()) {
				Session session = subject.getSession();
				List<UserFeature> featurelist = userFeatureServer
						.getUserFeatureByUid((Integer) session.getAttribute("uid"));
				if (featurelist.size() > 0) {
					rr = new ResponseResult<Void>(ResponseResult.STATE_OK, featurelist.get(0).getEvaluationName());
				} else {
					rr = new ResponseResult<Void>(ResponseResult.ERR, "你还没有进行测评");
				}
			} else {
				rr = new ResponseResult<Void>(ResponseResult.ERR, "请登录后，在进行查看测评选科报告");
			}
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：获取测评报告信息  错误信息: " + e);
			rr = new ResponseResult<Void>(ResponseResult.ERR, "数据存在异常，请联系工作人员处理！");
		}
		return rr;
	}

	@Override
	public String showhqtCpEnrollment(ModelMap map, String includeMajor, HttpServletRequest request,
			HttpServletResponse response) {
		try {
			Session session = SecurityUtils.getSubject().getSession();
			String includeMajors = new String(includeMajor.getBytes("ISO-8859-1"), "utf-8");
			List<Enrollment> enrollmentlist = enrollmentServer.getMajor(includeMajors, "湖南省");
			map.addAttribute("enrollmentlist", enrollmentlist);
			map.addAttribute("includeMajor", includeMajor);
			logger.info("用户名：" + session.getAttribute("username") + " 模块名：查询选科各地要求  操作：进入模块  状态：OK!");
			return "web/xgk/xgk_enrollemnt";
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：进入查询选科各地要求页面  错误信息: " + e);
			return "web/xgk/xgk_error_404";
		}
	}

	@Override
	public String showhqtCpSpecialty(ModelMap map, String specialtyId, HttpServletRequest request,
			HttpServletResponse response) {
		try {
			Session session = SecurityUtils.getSubject().getSession();
			List<Specialty> specialtylist = specialtyServer.getSpecialtyById(specialtyId);
			map.addAttribute("specialtylist", specialtylist);
			logger.info("用户名：" + session.getAttribute("username") + " 模块名：测评选科报告页面简介  操作：进入模块  状态：OK!");
			return "web/xgk/xgk_specialty";
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：进入测评选科报告页面  错误信息: " + e);
			return "web/xgk/xgk_error_404";
		}
	}

	@Override
	public String showhqtCpVocation(ModelMap map, String vocationId, HttpServletRequest request,
			HttpServletResponse response) {
		try {
			Session session = SecurityUtils.getSubject().getSession();
			List<Vocation> vocationlist = vocationServer.getVocationById(vocationId);
			map.addAttribute("vocationlist", vocationlist);
			logger.info("用户名：" + session.getAttribute("username") + " 模块名：测评选科报告页面简介  操作：进入模块  状态：OK!");
			return "web/xgk/xgk_vocation";
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：进入测评选科报告页面  错误信息: " + e);
			return "web/xgk/xgk_error_404";
		}
	}

	@Override
	public ResponseResult<List<Enrollment>> handlezsyq(String includeMajor, String eProvince,
			HttpServletRequest request) {
		ResponseResult<List<Enrollment>> rr;
		try {
			String includeMajors = new String(includeMajor.getBytes("ISO-8859-1"), "utf-8");
			List<Enrollment> enrollmentlist = enrollmentServer.getMajor(includeMajors, eProvince);
			if (enrollmentlist.size() > 0) {
				rr = new ResponseResult<List<Enrollment>>(ResponseResult.STATE_OK, enrollmentlist);
			} else {
				rr = new ResponseResult<List<Enrollment>>(ResponseResult.ERR, "在当前区域没有该专业的相关招生信息");
			}
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：获取招生信息  错误信息: " + e);
			rr = new ResponseResult<List<Enrollment>>(ResponseResult.ERR, "数据存在异常，请联系工作人员处理！");
		}
		return rr;
	}

}
