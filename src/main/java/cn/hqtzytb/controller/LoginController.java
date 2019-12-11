package cn.hqtzytb.controller;

import cn.hqtzytb.entity.ResponseResult;
import cn.hqtzytb.entity.Specialty;
import cn.hqtzytb.service.ILoginService;
import cn.hqtzytb.service.ISpecialtyServer;
import cn.hqtzytb.utils.Constants;
import com.alibaba.fastjson.JSONObject;
import com.google.gson.JsonObject;
import net.sf.json.JSON;
import net.sf.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.*;
import java.util.ArrayList;
import java.util.List;


/**
 * @ClassName: LoginController
 * @Description: 登录控制器
 * @Author: WuPeiLong
 * @Date: 2019年11月28日
 * @Copyright:好前途教育45
 * @Version V1.0
 */
@Controller
public class LoginController {
    @Autowired
    private ISpecialtyServer iSpecialtyServer;
    @Autowired
    private ILoginService iLoginService;

    /**
     * 微信扫码登录入口
     * @return
     */
    @RequestMapping("/wxLogin.do")
    private String wxLogin(){
        return iLoginService.wxLogin();
    }

    /**
     * 腾讯登录跳转
     * @return
     */
    @RequestMapping("/qq_login.do")
    private void qqLogin(HttpServletRequest request, HttpServletResponse response){
        iLoginService.qqLogin(request,response);
    }


    /**
     * 腾讯登录回调
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/connect.do")
    private String qqLoginCallback(HttpServletRequest request, HttpServletResponse response){
        return iLoginService.qqLoginCallback(request,response);
    }


    /**
     * 微信登录回调
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/loginServlet")
//    @RequestMapping("/wxCallback.do")
    private String wxLoginCallback(HttpServletRequest request, HttpServletResponse response){
        return iLoginService.wxLoginCallback(request,response);
    }

    /**
     * 用戶登出模块
     * @param session
     * @return
     */
    @RequestMapping("/login_out.do")
    public String logout(HttpSession session) {
        if (session != null) session.invalidate();
        return "web/xgk/xgk_login";
    }


    /**
     * Test
     */
    @RequestMapping("/test.do")
    @ResponseBody
    public ResponseResult<Specialty> test(){
        Specialty specialty = iSpecialtyServer.getSpecialtyById("20102").get(0);
        System.out.println(specialty.getEmploymentCareerDirection());
        System.err.println(JSONObject.toJSONString(specialty.getEmploymentCareerDirection()));
        specialty.setEmploymentCareerDirection(JSONObject.toJSONString(specialty.getEmploymentCareerDirection()));
        return new ResponseResult<Specialty>().setState(Constants.RESULT_CODE_SUCCESS).setMessage(Constants.RESULT_MESSAGE_SUCCESS).setData(specialty);
    }
}
