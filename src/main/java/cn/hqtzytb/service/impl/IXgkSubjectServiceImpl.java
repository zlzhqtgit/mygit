package cn.hqtzytb.service.impl;

import cn.hqtzytb.utils.Constants;
import cn.hqtzytb.entity.ResponseResult;
import cn.hqtzytb.entity.User;
import cn.hqtzytb.entity.UserFeature;
import cn.hqtzytb.entity.UserResultReport;
import cn.hqtzytb.mapper.UserFeatureMapper;
import cn.hqtzytb.mapper.UserMapper;
import cn.hqtzytb.mapper.UserResultReportMapper;
import cn.hqtzytb.service.IXgkSubjectService;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;

import org.apache.commons.lang.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import javax.servlet.http.HttpSession;
import java.util.*;

/**
 * @ClassName: IXgkSubjectServiceImpl
 * @Description: TODO
 * @Author: WuPeiLong
 * @Date: 2019年11月26日
 * @Copyright:好前途教育
 * @Version V1.0
 */
@Service
public class IXgkSubjectServiceImpl implements IXgkSubjectService {
    @Autowired
    private UserFeatureMapper userFeatureMapper;
    @Autowired
    private UserResultReportMapper userResultReportMapper;
    @Autowired
    private UserMapper userMapper;
    

    public ResponseResult<Void> addPotentialAnalysis(String evaluationFraction) {
    	Session session = SecurityUtils.getSubject().getSession();
        Integer uid = (Integer) session.getAttribute("uid");
        UserFeature oldFeature = userFeatureMapper.selectPotentialAnalyseByUid(uid);
        if (oldFeature == null){
            UserFeature feature = new UserFeature();
            feature.setUid(uid);
            feature.setEvaluationType(Constants.EVALUATION_TYPE_POTENTIAL_ANALYSIS);
            feature.setEvaluationName(Constants.EVALUATION_NAME_POTENTIAL_ANALYSIS);
            feature.setEvaluationFraction(evaluationFraction);
            feature.setEvaluationTime(new Date());
            userFeatureMapper.insert(feature);
        } else {
            oldFeature.setEvaluationFraction(evaluationFraction);
            userFeatureMapper.update(oldFeature);
        }
        return new ResponseResult<Void>(Constants.RESULT_CODE_SUCCESS, Constants.RESULT_MESSAGE_SUCCESS);
    }


    public String showPotentialReport() {
    	Session session = SecurityUtils.getSubject().getSession();
        Integer uid = (Integer) session.getAttribute("uid");
        UserFeature feature = userFeatureMapper.selectPotentialAnalyseByUid(uid);
        JSONArray jsonArray = JSON.parseArray(feature.getEvaluationFraction());
        Map<String,Integer> map = new HashMap<>();
        String subject = "";
        Integer value = null;
        Iterator<String> keys = null;
        for (int i=0; i<jsonArray.size(); i++){
            boolean keyIsExist = false;
            //学科名字
            subject = jsonArray.getJSONArray(i).get(0).toString();
            keys = map.keySet().iterator();
            while (keys.hasNext()) {
                //判断存在Key
                if (subject.equals(keys.next().toString())) {
                    keyIsExist = true;
                }
            }
            if (keyIsExist){
                value = map.get(subject);//学科潜能分析分数
                value += Integer.parseInt(jsonArray.getJSONArray(i).get(2).toString());//总分数
                map.put(subject,value);
            } else {
                map.put(subject,Integer.parseInt(jsonArray.getJSONArray(i).get(2).toString()));
            }
        }
        List<Map.Entry<String, Integer>> list = new LinkedList<Map.Entry<String, Integer>>(map.entrySet());
        Collections.sort(list, (o1, o2) -> o2.getValue().compareTo(o1.getValue()));
        session.setAttribute("list", JSON.toJSONString(list));
        session.setAttribute("evaluationFraction",feature.getEvaluationFraction());
        return "web/xgk/xgk_xk_analyse_rpt";
    }

  

    public ResponseResult<Void> haveYouSubjectExploration() {
    	Session session = SecurityUtils.getSubject().getSession();
        //潜能分析
    	Integer uid = (Integer)session.getAttribute("uid");
    	List<UserFeature> userFeatures = userFeatureMapper.select(" uid ='" + uid +"' AND evaluation_type ='" + Constants.EVALUATION_TYPE_POTENTIAL_ANALYSIS + "'", null, null, null);
    	session.setAttribute(Constants.EVALUATION_TYPE_POTENTIAL_ANALYSIS, userFeatures.isEmpty() ? 0 : 1 );
    	//成绩分析
    	userFeatures = userFeatureMapper.select(" uid ='" + uid +"' AND evaluation_type ='" + Constants.EVALUATION_TYPE_SCORE_ANALYSIS + "'", null, null, null);
        session.setAttribute(Constants.EVALUATION_TYPE_SCORE_ANALYSIS, userFeatures.isEmpty() ? 0 : 1 );
        
        return new ResponseResult<>(Constants.RESULT_CODE_SUCCESS,Constants.RESULT_MESSAGE_SUCCESS);
    }


	@Override
	public ResponseResult<Void> addScoreAnalysis(String evaluationFraction) {
		if ("[]".equals(evaluationFraction)) {
			return new ResponseResult<Void>(ResponseResult.ERR, "请至少输入一组数据");
		}
		Session session = SecurityUtils.getSubject().getSession();
        Integer uid = (Integer) session.getAttribute("uid");
        List<UserFeature> oldFeatures = userFeatureMapper.select(" uid = '" + uid + "' AND evaluation_type = '" + Constants.EVALUATION_TYPE_SCORE_ANALYSIS + "'", null, null, null);
        UserFeature feature = new UserFeature();
        if (oldFeatures.isEmpty()){
            feature.setUid(uid);
            feature.setEvaluationType(Constants.EVALUATION_TYPE_SCORE_ANALYSIS);
            feature.setEvaluationName(Constants.EVALUATION_NAME_SCORE_ANALYSIS);
            feature.setEvaluationFraction(evaluationFraction);
            feature.setEvaluationTime(new Date());
            userFeatureMapper.insert(feature);
        } else {
        	feature = oldFeatures.get(0);
        	feature.setEvaluationFraction(evaluationFraction);
            userFeatureMapper.update(feature);
        }
        return new ResponseResult<Void>(Constants.RESULT_CODE_SUCCESS, Constants.RESULT_MESSAGE_SUCCESS);
	}


	@Override
	public ResponseResult<UserFeature> getScoreAnalysis() {
		Session session = SecurityUtils.getSubject().getSession();
        Integer uid = (Integer) session.getAttribute("uid");
        List<UserFeature> userFeatures = userFeatureMapper.select(" uid = '" + uid + "' AND evaluation_type = '" + Constants.EVALUATION_TYPE_SCORE_ANALYSIS + "'" ,null,null,null);
		if (!userFeatures.isEmpty()) {
			return new ResponseResult<UserFeature>(ResponseResult.STATE_OK,Constants.RESULT_MESSAGE_SUCCESS).setData(userFeatures.get(0));
		}
        return new ResponseResult<UserFeature>(ResponseResult.ERR,Constants.RESULT_MESSAGE_FAIL);
	}
	

}
