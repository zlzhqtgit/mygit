package cn.hqtzytb.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.hqtzytb.entity.Xgkcp;
import cn.hqtzytb.mapper.XgkcpMapper;

/**
* @Title: XgkcpServerImpl.java
* @Package cn.hqtzytb.service
* @Description:(测评结果信息查询业务层实现类)
* @author: ZhouLingZhang
* @date 2019年9月5日
* @Copyright:好前途教育
* @version V1.0
*/

@Service
public class XgkcpServerImpl implements IXgkcpServer {
	
	@Autowired
	public XgkcpMapper xgkcpMapper;

	/**
	 * 获取结果相关信息，按测评名称如：MBTI 查询（cpName）
	 */
	@Override
	public List<Xgkcp> getCpResult(String cpName) {
		String where="cp_name ='"+cpName+"'";
		return xgkcpMapper.select(where, null, null, null);
	}

	@Override
	public List<Xgkcp> getCpType(String cpName) {
		String where="cp_name ='"+cpName+"'";
		return xgkcpMapper.selectType(where, null, null, null);
	}

}
