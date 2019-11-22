package cn.hqtzytb.service;

import cn.hqtzytb.controller.Constants;
import cn.hqtzytb.entity.ResponseResult;
import cn.hqtzytb.entity.UserFeature;
import cn.hqtzytb.entity.out.PotentialAnalysisOut;
import cn.hqtzytb.mapper.UserFeatureMapper;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import javax.servlet.http.HttpSession;
import java.util.*;

/**
 * @ClassName: IXgkSubjectService
 * @Description: 学科业务实现类
 * @Author: WuPeiLong
 * @Date: 2019年11月21日
 * @Copyright:好前途教育
 * @Version V1.0
 */
@Service
public class IXgkSubjectService {

    @Autowired
    private UserFeatureMapper userFeatureMapper;

    public ResponseResult<Void> addPotentialAnalysis(HttpSession session,String evaluationFraction) {
        Integer uid = (Integer) session.getAttribute("uid");
        System.out.println("uid : " + uid);
        System.out.println("evaluationFraction : " + evaluationFraction);
        UserFeature oldFeature = userFeatureMapper.selectPotentialAnalyseByUid(uid);
        if (oldFeature == null){
            UserFeature feature = new UserFeature();
            feature.setUid(uid);
            feature.setEvaluationName("QNFX");
            feature.setEvaluationType("潜能分析");
            feature.setEvaluationFraction(evaluationFraction);
            feature.setEvaluationTime(new Date());
            userFeatureMapper.insert(feature);
        } else {
            oldFeature.setEvaluationFraction(evaluationFraction);
            userFeatureMapper.update(oldFeature);
        }
        return new ResponseResult<Void>(Constants.RESULT_CODE_SUCCESS, Constants.RESULT_MESSAGE_SUCCESS);
    }


    public void showPotentialReport(HttpSession session) {
        // TODO 通过session查询用户uid获得潜能分析,并将信息封装到session中
        Integer uid = (Integer) session.getAttribute("uid");
        UserFeature feature = userFeatureMapper.selectPotentialAnalyseByUid(uid);
        PotentialAnalysisOut analysis = getPotentialAnalysisReport(feature);
        System.out.println(analysis.toString());
        session.setAttribute("analysis",analysis);
    }



    /**
     * 潜力分析报告加工
     * @param userFeature 测评分析
     * @return
     */
    private PotentialAnalysisOut getPotentialAnalysisReport(UserFeature userFeature){
        JSONArray jsonArray = JSON.parseArray(userFeature.getEvaluationFraction());
        Map<String,Integer> map = new HashMap<>();
        String subject = "";
        Integer value = null;
        Iterator keys = null;
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
        //另外一种写法：
        /*Collections.sort(list, new Comparator<Map.Entry<String, Integer>>()
        {
            @Override
            public int compare(Map.Entry<String, Integer> o1, Map.Entry<String, Integer> o2)
            {
                int compare = (o1.getValue()).compareTo(o2.getValue());
                return -compare;
            }
        });*/

        PotentialAnalysisOut analysis = new PotentialAnalysisOut()
                .setSortOne(list.get(0).getKey())
                .setSortOneScore(list.get(0).getValue())
                .setSortTwo(list.get(1).getKey())
                .setSortTwoScore(list.get(1).getValue())
                .setSortThree(list.get(2).getKey())
                .setSortThreeScore(list.get(2).getValue())
                .setEvaluationFraction(userFeature.getEvaluationFraction());
        return analysis;
    }


}
