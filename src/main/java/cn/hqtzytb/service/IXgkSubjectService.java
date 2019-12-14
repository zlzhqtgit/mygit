package cn.hqtzytb.service;


import cn.hqtzytb.entity.ResponseResult;
import cn.hqtzytb.entity.UserFeature;


/**
 * @ClassName: IXgkSubjectService
 * @Description: 学科探索业务实现类
 * @Author: WuPeiLong
 * @Date: 2019年11月21日
 * @Copyright:好前途教育
 * @Version V1.0
 */
public interface IXgkSubjectService {


    String showPotentialReport();

    ResponseResult<Void> haveYouSubjectExploration();

    ResponseResult<Void> addPotentialAnalysis(String evaluationFraction);

	ResponseResult<Void> addScoreAnalysis(String evaluationFraction);

	ResponseResult<UserFeature> getScoreAnalysis();
}
