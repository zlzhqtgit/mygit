package cn.hqtzytb.service.impl;

import cn.hqtzytb.utils.Constants;
import cn.hqtzytb.entity.User;
import cn.hqtzytb.mapper.UserMapper;
import cn.hqtzytb.service.ILoginService;
import cn.hqtzytb.utils.HttpClientUtils;
import cn.hqtzytb.utils.PropsUtil;
import cn.hqtzytb.utils.QQHttpClient;
import com.qq.connect.QQConnectException;
import com.qq.connect.oauth.Oauth;
import net.sf.json.JSONObject;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.*;

/**
 * @ClassName: ILoginServiceImpl
 * @Description: TODO
 * @Author: WuPeiLong
 * @Date: 2019年11月28日
 * @Copyright:好前途教育
 * @Version V1.0
 */
@Service
public class ILoginServiceImpl implements ILoginService {
    private  static final Logger logger = LogManager.getLogger(ILoginServiceImpl.class.getName());

    @Autowired
    private UserMapper userMapper;

    @Override
    public String wxLogin() {
        return null;
    }

    @Override
    public void qqLogin(HttpServletRequest request, HttpServletResponse response) {
        response.setContentType("text/html;charset=utf-8");
        try {
            response.sendRedirect(new Oauth().getAuthorizeURL(request));
        } catch (QQConnectException | IOException e) {
            e.printStackTrace();
            logger.error("QQ登录跳转异常",e.getMessage());
        }
    }

    @Override
    public String qqLoginCallback(HttpServletRequest request, HttpServletResponse response) {
        try {
            HttpSession session = request.getSession();
            String code = request.getParameter("code");

            //通过Authorization Code获取Access Token
            String url = Constants.QQ_LOGIN_TOKEN_URL
                    .replace("APPID",PropsUtil.loadProps("qqconnectconfig.properties").getProperty("app_ID"))
                    .replace("APPKEY",PropsUtil.loadProps("qqconnectconfig.properties").getProperty("app_KEY"))
                    .replace("CODE",code)
                    .replace("REDIRECT_URI",PropsUtil.loadProps("qqconnectconfig.properties").getProperty("redirect_URI"));


            String access_token = QQHttpClient.getAccessToken(url);
            //获取回调后的 openid 值
            url = Constants.QQ_USER_OPENID_URL.replace("ACCESS_TOKEN",access_token);
            String openid = QQHttpClient.getOpenID(url);

            //获取QQ用户信息
            url = Constants.QQ_USER_INFO_URL.replace("ACCESS_TOKEN",access_token)
                    .replace("APPID",PropsUtil.loadProps("qqconnectconfig.properties").getProperty("app_ID"))
                    .replace("OPENID",openid);
            com.alibaba.fastjson.JSONObject jsonObject = QQHttpClient.getUserInfo(url);
            if (!"0".equals(jsonObject.getString("ret"))) {
                logger.error(Constants.ERROR_HEAD_INFO + "QQ登录回调异常");
            } else {
                    Map<String,Object> paramMap = new HashMap<>();
                    paramMap.put("qqChat",openid);
                    List<User> users = userMapper.selectUserListByMap(paramMap);
                    if (users.isEmpty()){ //不存在该QQ用户
                        session.setAttribute("headUrl", jsonObject.get("figureurl_qq_2"));
                        session.setAttribute("qqChat", openid);
                        return "web/xgk/xgk_bindingAcc";
                    } else {
                        session.setAttribute("uid", users.get(0).getId());
                        session.setAttribute("username", users.get(0).getUsername());
                        session.setAttribute("headUrl", users.get(0).getHeadUrl());
                        JSONObject userJson = JSONObject.fromObject(users.get(0));
                        session.setAttribute("userJson", userJson);//提供给前端页面使用
                        session.setAttribute("user", users.get(0));//提供给后台服务websocket类使用(存放对象，避免过多的json转换)
                        return "web/xgk/xgk_index";
                    }
            }
        } catch (Exception e) {
            e.printStackTrace();
            logger.error(Constants.ERROR_HEAD_INFO + "QQ登录回调异常");
        }
        return "web/xgk/xgk_error_404";
    }

    @Override
    public String wxLoginCallback(HttpServletRequest request, HttpServletResponse response) {
        try{
            String code = request.getParameter("code");
            if (code == null){
                logger.error(Constants.ERROR_HEAD_INFO + "用户禁止授权");
            }
            String requestUrl = Constants.WX_LOGIN_TOKEN_URL
                    .replace("APPID", PropsUtil.loadProps("config.properties").getProperty("wx_login_appid"))
                    .replace("SECRET",PropsUtil.loadProps("config.properties").getProperty("wx_login_secret"))
                    .replace("CODE",code);
            String access_token_json = HttpClientUtils.doGet(requestUrl);
            JSONObject token_json = JSONObject.fromObject(access_token_json);
            String openid = token_json.get("openid").toString();
            String access_token = token_json.get("access_token").toString();
            requestUrl = Constants.WX_USER_INFO_URL.replace("ACCESS_TOKEN",access_token).replace("OPENID",openid);
            String user_info_json = HttpClientUtils.doGet(requestUrl);
            JSONObject user_json = JSONObject.fromObject(user_info_json);
            Map<String,Object> paramMap = new HashMap<>();
            paramMap.put("wexinChat",openid);
            List<User> users = userMapper.selectUserListByMap(paramMap);
            if (users.isEmpty()){ //不存在该微信用户
                request.getSession().setAttribute("headUrl", user_json.get("headimgurl"));
                request.getSession().setAttribute("wexinChat", openid);
                // TODO 完善用户信息页面
                return "web/xgk/xgk_bindingAcc";
            } else {
                request.getSession().setAttribute("uid", users.get(0).getId());
                request.getSession().setAttribute("username", users.get(0).getUsername());
                request.getSession().setAttribute("headUrl", users.get(0).getHeadUrl());
                JSONObject userJson = JSONObject.fromObject(users.get(0));
                request.getSession().setAttribute("userJson", userJson);//提供给前端页面使用
                request.getSession().setAttribute("user", users.get(0));//提供给后台服务websocket类使用(存放对象，避免过多的json转换)
                return "web/xgk/xgk_index";
            }
        } catch (Exception ex){
            ex.printStackTrace();
            logger.error(Constants.ERROR_HEAD_INFO + "微信登录回调异常");
        }
        return "web/xgk/xgk_error_404";
    }
}
