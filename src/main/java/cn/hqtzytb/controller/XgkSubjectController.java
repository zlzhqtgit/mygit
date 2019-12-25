package cn.hqtzytb.controller;

import cn.hqtzytb.entity.ResponseResult;
import cn.hqtzytb.entity.UserFeature;
import cn.hqtzytb.service.IXgkSubjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
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

    /**
     * 进入学科探索模块
     * @param session
     * @param response
     * @param request
     * @return
     */
    @RequestMapping("/xgk_subject_score.do")
    public String showXgkIndex(String look, String test,HttpServletRequest request, HttpServletResponse response){
    	
    	 return iXgkSubjectService.showXgkIndex(look,test,request,response);
    }


    /**
     * 新增潜能分析报告
     * @param session session
     * @param evaluationFraction 潜能分析
     * @return
     */
    @PostMapping("/xgk_potential_analysis.do")
    @ResponseBody
    public ResponseResult<Void> addPotentialAnalysis(@RequestParam(value="total_sc") String evaluationFraction, HttpServletRequest request) {
        return iXgkSubjectService.addPotentialAnalysis(evaluationFraction,request);
    }
    
    /**
     * 新增成绩分析报告
     * @param session session
     * @param evaluationFraction 成绩分析
     * @return
     */
    @PostMapping("/xgk_score_analysis.do")
    @ResponseBody
    public ResponseResult<Void> addScoreAnalysis(@RequestParam(value="score") String evaluationFraction, HttpServletRequest request) {
        return iXgkSubjectService.addScoreAnalysis(evaluationFraction,request);
    }

    
    /**
     * 查看成绩分析报告
     * @param session session
     * @param evaluationFraction 成绩分析
     * @return
     */
    @PostMapping("/xgk_score_report.do")
    @ResponseBody
    public ResponseResult<UserFeature> getScoreAnalysis(HttpServletRequest request) {
        return iXgkSubjectService.getScoreAnalysis(request);
    }

    /**
     * 查看潜能分析报告
     * @param session
     * @param response
     * @param request
     * @return
     */
    @RequestMapping("/xgk_potential_report.do")
    public String showPotentialReport(HttpServletRequest request){

        return iXgkSubjectService.showPotentialReport(request);
    }



    /**
     * 是否经做过学科探索
     * @param uid
     * @return
     */
    @RequestMapping("/xgk_subject_exploration.do")
    @ResponseBody
    public ResponseResult<Void> haveYouSubjectExploration(HttpServletRequest request){
        return iXgkSubjectService.haveYouSubjectExploration(request);
    }
    
  
}
