package cn.hqtzytb.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import cn.hqtzytb.entity.XgkcpResult;
import cn.hqtzytb.mapper.XgkcpResultMapper;

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
public class XgkcpResultServerImpl implements IXgkcpResultServer {
	
	@Autowired
	public XgkcpResultMapper xgkcpResultMapper;

	
	@Override
	public List<XgkcpResult> ReportUrl(List<String> tzName, String tzType) {		
		String where="tz_name LIKE '%"+tzName.get(0)+"%' AND tz_name LIKE '%"+tzName.get(1)+"%' AND tz_name LIKE '%"+tzName.get(2)+"%' and tz_type='"+tzType+"'";
		return xgkcpResultMapper.selectReportUrl(where, null, null, null);
	}

	@Override
	public List<XgkcpResult> getAll() {
		
		return xgkcpResultMapper.select(null, null, null, null);
	}


}
