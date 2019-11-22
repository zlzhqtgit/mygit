package cn.hqtzytb.controller;

import cn.hqtzytb.entity.ResponseResult;
import cn.hqtzytb.service.IXgkSubjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * @ClassName: XgkSubjectController
 * @Description: 学科控制器
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
    public String showXgkIndex(HttpSession session, HttpServletResponse response, HttpServletRequest request){
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
    public ResponseResult<Void> addPotentialAnalysis(HttpSession session, @RequestParam(value="total_sc") String evaluationFraction) {
        return iXgkSubjectService.addPotentialAnalysis(session,evaluationFraction);
    }


    /**
     * 查看潜能分析报告
     * @param session
     * @param response
     * @param request
     * @return
     */
    @RequestMapping("/xgk_potential_report.do")
    public String showPotentialReport(HttpSession session, HttpServletResponse response, HttpServletRequest request){
        iXgkSubjectService.showPotentialReport(session);
        return "web/xgk/xgk_xk_analyse_rpt";
    }


}
