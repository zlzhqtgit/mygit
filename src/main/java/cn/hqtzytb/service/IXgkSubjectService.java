package cn.hqtzytb.service;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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


    String showPotentialReport(HttpServletRequest request);

    ResponseResult<Void> haveYouSubjectExploration(HttpServletRequest request);

    ResponseResult<Void> addPotentialAnalysis(String evaluationFraction, HttpServletRequest request);

	ResponseResult<Void> addScoreAnalysis(String evaluationFraction, HttpServletRequest request);

	ResponseResult<UserFeature> getScoreAnalysis(HttpServletRequest request);

	String showXgkIndex(String look, String test, HttpServletRequest request, HttpServletResponse response);
}
