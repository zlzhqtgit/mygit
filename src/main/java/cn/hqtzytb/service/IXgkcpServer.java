package cn.hqtzytb.service;

import java.util.List;
import cn.hqtzytb.entity.Xgkcp;

/**
* @Title: IXgkcpServer.java
* @Package cn.hqtzytb.service
* @Description:(测评结果信息查询业务层接口)
* @author: ZhouLingZhang
* @date 2019年9月5日
* @Copyright:好前途教育
* @version V1.0
*/
public interface IXgkcpServer {
	List<Xgkcp> getCpResult(String cpName);
	List<Xgkcp> getCpType(String cpName);
}
