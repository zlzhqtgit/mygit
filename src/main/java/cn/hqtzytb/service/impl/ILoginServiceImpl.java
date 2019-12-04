package cn.hqtzytb.service.impl;

import cn.hqtzytb.utils.Constants;
import cn.hqtzytb.entity.User;
import cn.hqtzytb.mapper.UserMapper;
import cn.hqtzytb.service.ILoginService;
import cn.hqtzytb.utils.HttpClientUtils;
import cn.hqtzytb.utils.PropsUtil;
import com.qq.connect.QQConnectException;
import com.qq.connect.api.OpenID;
import com.qq.connect.api.qzone.UserInfo;
import com.qq.connect.javabeans.AccessToken;
import com.qq.connect.javabeans.qzone.UserInfoBean;
import com.qq.connect.oauth.Oauth;
import net.sf.json.JSONObject;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
            AccessToken accessTokenObj = (new Oauth()).getAccessTokenByRequest(request);
            String accessToken  = null;
            String openId  = null;
            long tokenExpireIn = 0L;
            Date creatTime=new Date();
            if (accessTokenObj.getAccessToken().equals("")) {
//                我们的网站被CSRF攻击了或者用户取消了授权
//                做一些数据统计工作
                logger.error(Constants.ERROR_HEAD_INFO + "QQ登录回调异常");
            } else {
                accessToken = accessTokenObj.getAccessToken();
                tokenExpireIn = accessTokenObj.getExpireIn();
                request.getSession().setAttribute("accessToken", accessToken);
                request.getSession().setAttribute("tokenExpirein", String.valueOf(tokenExpireIn));
                OpenID openIDObj =  new OpenID(accessToken);
                openId = openIDObj.getUserOpenID();
                UserInfo qzoneUserInfo = new UserInfo(accessToken, openId);
                UserInfoBean userInfoBean = qzoneUserInfo.getUserInfo();
                if (userInfoBean.getRet() == 0) {
//                    userInfoBean.getGender());//性别
//                    userInfoBean.getAvatar().getAvatarURL30();//头像
//                    userInfoBean.getAvatar().getAvatarURL50();
//                    userInfoBean.getAvatar().getAvatarURL100();
                    Map<String,Object> paramMap = new HashMap<>();
                    paramMap.put("qqChat",openId);
                    List<User> users = userMapper.selectUserListByMap(paramMap);
                    if (users.isEmpty()){ //不存在该QQ用户
                        request.getSession().setAttribute("headUrl", userInfoBean.getAvatar().getAvatarURL50());
                        request.getSession().setAttribute("qqChat", openId);
                        // TODO 完善用户信息页面
                        return "";
                    } else {
                        request.getSession().setAttribute("uid", users.get(0).getId());
                        request.getSession().setAttribute("username", users.get(0).getUsername());
                        request.getSession().setAttribute("headUrl", users.get(0).getHeadUrl());
                        JSONObject userJson = JSONObject.fromObject(users.get(0));
                        request.getSession().setAttribute("userJson", userJson);//提供给前端页面使用
                        request.getSession().setAttribute("user", users.get(0));//提供给后台服务websocket类使用(存放对象，避免过多的json转换)
                        return "web/xgk/xgk_index";
                    }

                } else {
                    logger.error("很抱歉，我们没能正确获取到您的信息，原因是： " + userInfoBean.getMsg());
                }
            }
        } catch (QQConnectException e) {
            e.printStackTrace();
            logger.error(Constants.ERROR_HEAD_INFO + "QQ登录回调异常");
        }
        return "web/xga/xgk_error_404";
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
                return "";
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
        return "web/xga/xgk_error_404";
    }


}
