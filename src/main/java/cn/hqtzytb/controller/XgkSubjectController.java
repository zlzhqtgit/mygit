package cn.hqtzytb.controller;

import cn.hqtzytb.entity.ResponseResult;
import cn.hqtzytb.entity.UserFeature;
import cn.hqtzytb.mapper.UserFeatureMapper;
import cn.hqtzytb.service.IXgkSubjectService;
import cn.hqtzytb.utils.Constants;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * @ClassName: XgkSubjectController
 * @Description: 学科探索控制器
 * @author: wuPeiLong
 * @date: 2019年11月20日
 * @Copyright:好前途教育
 * @version V1.0
 */
@Controller
@RequestMapping("/sub")
public class XgkSubjectController {

    @Autowired
    private IXgkSubjectService iXgkSubjectService;
	@Autowired
	private UserFeatureMapper userFeatureMapper;

    /**
     * 进入学科探索模块
     * @param session
     * @param response
     * @param request
     * @return
     */
    @RequestMapping("/xgk_subject_score.do")
    public String showXgkIndex(HttpServletResponse response, HttpServletRequest request){
    	Subject subject = SecurityUtils.getSubject();
    	if (subject.isAuthenticated()) {
    		Session session= subject.getSession();
    		Integer uid = (Integer) session.getAttribute("uid");
    		List<UserFeature> userFeatures = userFeatureMapper.select(" uid ='" + uid + "'", null, null, null);
        	for(UserFeature userFeature : userFeatures){
        		if (Constants.EVALUATION_TYPE_POTENTIAL_ANALYSIS.equals(userFeature.getEvaluationType())) {
        			session.setAttribute(Constants.EVALUATION_TYPE_POTENTIAL_ANALYSIS,1);
    			}
        		if (Constants.EVALUATION_TYPE_SCORE_ANALYSIS.equals(userFeature.getEvaluationType())) {
        			session.setAttribute(Constants.EVALUATION_TYPE_SCORE_ANALYSIS,1);
    			}
        		if (Constants.EVALUATION_TYPE_MBTI_ANALYSIS.equals(userFeature.getEvaluationType())) {
        			session.setAttribute(Constants.EVALUATION_TYPE_MBTI_ANALYSIS,1);
    			}
        		if (Constants.EVALUATION_TYPE_HOLLAND_ANALYSIS.equals(userFeature.getEvaluationType())) {
        			session.setAttribute(Constants.EVALUATION_TYPE_HOLLAND_ANALYSIS,1);
    			}
        	}
		}
    	return "web/xgk/xgk_subject_score";
    }


    /**
     * 新增潜能分析报告
     * @param session session
     * @param evaluationFraction 潜能分析
     * @return
     */
    @PostMapping("/xgk_potential_analysis.do")
    @ResponseBody
    public ResponseResult<Void> addPotentialAnalysis(@RequestParam(value="total_sc") String evaluationFraction) {
        return iXgkSubjectService.addPotentialAnalysis(evaluationFraction);
    }
    
    /**
     * 新增成绩分析报告
     * @param session session
     * @param evaluationFraction 成绩分析
     * @return
     */
    @PostMapping("/xgk_score_analysis.do")
    @ResponseBody
    public ResponseResult<Void> addScoreAnalysis(@RequestParam(value="score") String evaluationFraction) {
        return iXgkSubjectService.addScoreAnalysis(evaluationFraction);
    }

    
    /**
     * 查看成绩分析报告
     * @param session session
     * @param evaluationFraction 成绩分析
     * @return
     */
    @PostMapping("/xgk_score_report.do")
    @ResponseBody
    public ResponseResult<UserFeature> getScoreAnalysis() {
        return iXgkSubjectService.getScoreAnalysis();
    }

    /**
     * 查看潜能分析报告
     * @param session
     * @param response
     * @param request
     * @return
     */
    @RequestMapping("/xgk_potential_report.do")
    public String showPotentialReport(){

        return iXgkSubjectService.showPotentialReport();
    }



    /**
     * 是否经做过学科探索
     * @param uid
     * @return
     */
    @RequestMapping("/xgk_subject_exploration.do")
    @ResponseBody
    public ResponseResult<Void> haveYouSubjectExploration(){
        return iXgkSubjectService.haveYouSubjectExploration();
    }
    
  
}
