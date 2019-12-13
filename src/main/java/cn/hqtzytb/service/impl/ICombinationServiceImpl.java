package cn.hqtzytb.service.impl;

import cn.hqtzytb.entity.Personality;
import cn.hqtzytb.entity.Specialty;
import cn.hqtzytb.entity.UserFeature;
import cn.hqtzytb.mapper.PersonalityMapper;
import cn.hqtzytb.mapper.SpecialtyMapper;
import cn.hqtzytb.mapper.UserFeatureMapper;
import cn.hqtzytb.service.ICombinationService;
import cn.hqtzytb.utils.Combination;
import cn.hqtzytb.utils.Constants;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.*;

/**
 * @ClassName: ICombinationServiceImpl
 * @Description: TODO
 * @Author: WuPeiLong
 * @Date: 2019年12月04日
 * @Copyright:好前途教育
 * @Version V1.0
 */
@Service
public class ICombinationServiceImpl implements ICombinationService {
    @Autowired
    private SpecialtyMapper specialtyMapper;
    @Autowired
    private PersonalityMapper personalityMapper;
    @Autowired
    private UserFeatureMapper userFeatureMapper;

    @Override
    public List<Map.Entry<Combination, Double>> getCombination(UserFeature userFeature){
        Map<String,Double> map = new HashMap<>();//分数map
        map.put(Combination.物化生.one,0d);//物理
        map.put(Combination.物化生.two,0d);//化学
        map.put(Combination.物化生.three,0d);//生物
        map.put(Combination.政历地.one,0d);//政治
        map.put(Combination.政历地.two,0d);//历史
        map.put(Combination.政历地.three,0d);//地理
        Map<Combination,Double> combinationMap = new HashMap<>();//组合map
        //潜能分析
        if (Constants.EVALUATION_TYPE_POTENTIAL_ANALYSIS.equals(userFeature.getEvaluationType())) {
            JSONArray jsonArray = JSON.parseArray(userFeature.getEvaluationFraction());
            for (int i=0; i<jsonArray.size(); i++){
                map.put(jsonArray.getJSONArray(i).get(0).toString(),map.get(jsonArray.getJSONArray(i).get(0).toString()) + Double.valueOf(jsonArray.getJSONArray(i).get(2).toString()));
            }
        } else {
            Map<String,Object> paramMap = new HashMap<>();
            paramMap.put("personalityCode",userFeature.getEvaluationName());
            List<Personality> personalityList = personalityMapper.selectPersonalityListByMap(paramMap);
            Personality personality = personalityList.get(0);//认知测评结果数据信息
            List<Specialty> specialtyList = specialtyMapper.select(" e.personality_id = '" + personality.getPersonalityId() + "'",null,null,null);
            for (int i=0; i<specialtyList.size(); i++){
                map.put(Combination.物化生.one,map.get(Combination.物化生.one) + specialtyList.get(i).getPhysicsPerformance());
                map.put(Combination.物化生.two,map.get(Combination.物化生.two) + specialtyList.get(i).getChemistryPerformance());
                map.put(Combination.物化生.three,map.get(Combination.物化生.three) + specialtyList.get(i).getBiologyPerformance());
                map.put(Combination.政历地.one,map.get(Combination.政历地.one) + specialtyList.get(i).getPoliticPerformance());
                map.put(Combination.政历地.two,map.get(Combination.政历地.two) + specialtyList.get(i).getHistoryPerformance());
                map.put(Combination.政历地.three,map.get(Combination.政历地.three) + specialtyList.get(i).getGeographyPerformance());
            }
        }
        combinationMap.put(Combination.物化生,map.get(Combination.物化生.one) + map.get(Combination.物化生.two) + map.get(Combination.物化生.three));
        combinationMap.put(Combination.物化政,map.get(Combination.物化政.one) + map.get(Combination.物化政.two) + map.get(Combination.物化政.three));
        combinationMap.put(Combination.物化历,map.get(Combination.物化历.one) + map.get(Combination.物化历.two) + map.get(Combination.物化历.three));
        combinationMap.put(Combination.物化地,map.get(Combination.物化地.one) + map.get(Combination.物化地.two) + map.get(Combination.物化地.three));
        combinationMap.put(Combination.物生政,map.get(Combination.物生政.one) + map.get(Combination.物生政.two) + map.get(Combination.物生政.three));
        combinationMap.put(Combination.物生历,map.get(Combination.物生历.one) + map.get(Combination.物生历.two) + map.get(Combination.物生历.three));
        combinationMap.put(Combination.物生地,map.get(Combination.物生地.one) + map.get(Combination.物生地.two) + map.get(Combination.物生地.three));
        combinationMap.put(Combination.物政历,map.get(Combination.物政历.one) + map.get(Combination.物政历.two) + map.get(Combination.物政历.three));
        combinationMap.put(Combination.物政地,map.get(Combination.物政地.one) + map.get(Combination.物政地.two) + map.get(Combination.物政地.three));
        combinationMap.put(Combination.物历地,map.get(Combination.物历地.one) + map.get(Combination.物历地.two) + map.get(Combination.物历地.three));
        combinationMap.put(Combination.化生政,map.get(Combination.化生政.one) + map.get(Combination.化生政.two) + map.get(Combination.化生政.three));
        combinationMap.put(Combination.化生历,map.get(Combination.化生历.one) + map.get(Combination.化生历.two) + map.get(Combination.化生历.three));
        combinationMap.put(Combination.化生地,map.get(Combination.化生地.one) + map.get(Combination.化生地.two) + map.get(Combination.化生地.three));
        combinationMap.put(Combination.化政历,map.get(Combination.化政历.one) + map.get(Combination.化政历.two) + map.get(Combination.化政历.three));
        combinationMap.put(Combination.化政地,map.get(Combination.化政地.one) + map.get(Combination.化政地.two) + map.get(Combination.化政地.three));
        combinationMap.put(Combination.化历地,map.get(Combination.化历地.one) + map.get(Combination.化历地.two) + map.get(Combination.化历地.three));
        combinationMap.put(Combination.生政历,map.get(Combination.生政历.one) + map.get(Combination.生政历.two) + map.get(Combination.生政历.three));
        combinationMap.put(Combination.生政地,map.get(Combination.生政地.one) + map.get(Combination.生政地.two) + map.get(Combination.生政地.three));
        combinationMap.put(Combination.生历地,map.get(Combination.生历地.one) + map.get(Combination.生历地.two) + map.get(Combination.生历地.three));
        combinationMap.put(Combination.政历地,map.get(Combination.政历地.one) + map.get(Combination.政历地.two) + map.get(Combination.政历地.three));
        List<Map.Entry<Combination, Double>> list = new LinkedList<Map.Entry<Combination, Double>>(combinationMap.entrySet());
        Collections.sort(list, (o1, o2) -> o2.getValue().compareTo(o1.getValue()));
        return list;
    }

    @Override
    public List<Map.Entry<Combination, Double>> getCompositeCombination(String uid) {
        Map<String, Double> map = new HashMap<>();//分数map
        map.put(Combination.物化生.one, 0d);//物理
        map.put(Combination.物化生.two, 0d);//化学
        map.put(Combination.物化生.three, 0d);//生物
        map.put(Combination.政历地.one, 0d);//政治
        map.put(Combination.政历地.two, 0d);//历史
        map.put(Combination.政历地.three, 0d);//地理
        Map<Combination, Double> combinationMap = new HashMap<>();//组合map
        List<UserFeature> userFeatureList = userFeatureMapper.select("uid = '" + uid + "'", null, null, null);
        for (UserFeature userFeature : userFeatureList) {
            if (Constants.EVALUATION_TYPE_POTENTIAL_ANALYSIS.equals(userFeature.getEvaluationType())) {//潜能分析 学科组合
                JSONArray jsonArray = JSON.parseArray(userFeature.getEvaluationFraction());
                for (int i = 0; i < jsonArray.size(); i++) {
                    map.put(jsonArray.getJSONArray(i).get(0).toString(), map.get(jsonArray.getJSONArray(i).get(0).toString()) + Double.valueOf(jsonArray.getJSONArray(i).get(2).toString()));
                }
            } else {//MBTI 霍兰德 学科组合
                Map<String, Object> paramMap = new HashMap<>();
                paramMap.put("personalityCode", userFeature.getEvaluationName());
                List<Personality> personalityList = personalityMapper.selectPersonalityListByMap(paramMap);
                Personality personality = personalityList.get(0);//认知测评结果数据信息
                List<Specialty> specialtyList = specialtyMapper.select(" e.personality_id = '" + personality.getPersonalityId() + "'", null, null, null);
                for (int i = 0; i < specialtyList.size(); i++) {
                    map.put(Combination.物化生.one, map.get(Combination.物化生.one) + specialtyList.get(i).getPhysicsPerformance());
                    map.put(Combination.物化生.two, map.get(Combination.物化生.two) + specialtyList.get(i).getChemistryPerformance());
                    map.put(Combination.物化生.three, map.get(Combination.物化生.three) + specialtyList.get(i).getBiologyPerformance());
                    map.put(Combination.政历地.one, map.get(Combination.政历地.one) + specialtyList.get(i).getPoliticPerformance());
                    map.put(Combination.政历地.two, map.get(Combination.政历地.two) + specialtyList.get(i).getHistoryPerformance());
                    map.put(Combination.政历地.three, map.get(Combination.政历地.three) + specialtyList.get(i).getGeographyPerformance());
                }
            }
        }
        combinationMap.put(Combination.物化生, map.get(Combination.物化生.one) + map.get(Combination.物化生.two) + map.get(Combination.物化生.three));
        combinationMap.put(Combination.物化政, map.get(Combination.物化政.one) + map.get(Combination.物化政.two) + map.get(Combination.物化政.three));
        combinationMap.put(Combination.物化历, map.get(Combination.物化历.one) + map.get(Combination.物化历.two) + map.get(Combination.物化历.three));
        combinationMap.put(Combination.物化地, map.get(Combination.物化地.one) + map.get(Combination.物化地.two) + map.get(Combination.物化地.three));
        combinationMap.put(Combination.物生政, map.get(Combination.物生政.one) + map.get(Combination.物生政.two) + map.get(Combination.物生政.three));
        combinationMap.put(Combination.物生历, map.get(Combination.物生历.one) + map.get(Combination.物生历.two) + map.get(Combination.物生历.three));
        combinationMap.put(Combination.物生地, map.get(Combination.物生地.one) + map.get(Combination.物生地.two) + map.get(Combination.物生地.three));
        combinationMap.put(Combination.物政历, map.get(Combination.物政历.one) + map.get(Combination.物政历.two) + map.get(Combination.物政历.three));
        combinationMap.put(Combination.物政地, map.get(Combination.物政地.one) + map.get(Combination.物政地.two) + map.get(Combination.物政地.three));
        combinationMap.put(Combination.物历地, map.get(Combination.物历地.one) + map.get(Combination.物历地.two) + map.get(Combination.物历地.three));
        combinationMap.put(Combination.化生政, map.get(Combination.化生政.one) + map.get(Combination.化生政.two) + map.get(Combination.化生政.three));
        combinationMap.put(Combination.化生历, map.get(Combination.化生历.one) + map.get(Combination.化生历.two) + map.get(Combination.化生历.three));
        combinationMap.put(Combination.化生地, map.get(Combination.化生地.one) + map.get(Combination.化生地.two) + map.get(Combination.化生地.three));
        combinationMap.put(Combination.化政历, map.get(Combination.化政历.one) + map.get(Combination.化政历.two) + map.get(Combination.化政历.three));
        combinationMap.put(Combination.化政地, map.get(Combination.化政地.one) + map.get(Combination.化政地.two) + map.get(Combination.化政地.three));
        combinationMap.put(Combination.化历地, map.get(Combination.化历地.one) + map.get(Combination.化历地.two) + map.get(Combination.化历地.three));
        combinationMap.put(Combination.生政历, map.get(Combination.生政历.one) + map.get(Combination.生政历.two) + map.get(Combination.生政历.three));
        combinationMap.put(Combination.生政地, map.get(Combination.生政地.one) + map.get(Combination.生政地.two) + map.get(Combination.生政地.three));
        combinationMap.put(Combination.生历地, map.get(Combination.生历地.one) + map.get(Combination.生历地.two) + map.get(Combination.生历地.three));
        combinationMap.put(Combination.政历地, map.get(Combination.政历地.one) + map.get(Combination.政历地.two) + map.get(Combination.政历地.three));
        List<Map.Entry<Combination, Double>> list = new LinkedList<Map.Entry<Combination, Double>>(combinationMap.entrySet());
        Collections.sort(list, (o1, o2) -> o2.getValue().compareTo(o1.getValue()));
        return list;
    }
    public static void main(String[] args) {
        UserFeature userFeature = new UserFeature();
        userFeature.setEvaluationType(Constants.EVALUATION_TYPE_POTENTIAL_ANALYSIS);
        userFeature.setEvaluationFraction("[['地','自信',15],['地','兴趣',0],['地','能力',0], ['政','自信',5],['政','兴趣',10],['政','能力',0], ['历','自信',0],['历','兴趣',0],['历','能力',0],['物','自信',5],['物','兴趣',5],['物','能力',0],['化','自信',15],['化','兴趣',10],['化','能力',0],['生','自信',10],['生','兴趣',20],['生','能力',0]]");
        List<Map.Entry<Combination, Double>> list =  new ICombinationServiceImpl().getCombination(userFeature);
        System.out.println(list);
    }
}
