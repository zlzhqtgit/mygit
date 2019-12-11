package cn.hqtzytb.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * @ClassName: LoginService
 * @Description: TODO
 * @Author: WuPeiLong
 * @Date: 2019年11月28日
 * @Copyright:好前途教育
 * @Version V1.0
 */
public interface ILoginService {
    String wxLogin();

    void qqLogin(HttpServletRequest request, HttpServletResponse response);

    String qqLoginCallback(HttpServletRequest request, HttpServletResponse response);

    String wxLoginCallback(HttpServletRequest request, HttpServletResponse response);
}
