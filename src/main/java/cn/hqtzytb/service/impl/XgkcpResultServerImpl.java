package cn.hqtzytb.service.impl;

import java.util.List;
import cn.hqtzytb.service.IXgkcpResultServer;
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

	public List<XgkcpResult> resultReport(List<String> personalityCode, String testName) {
		String where = "personality_code LIKE '%" + personalityCode.get(0) + "%' AND personality_code LIKE '%"
				+ personalityCode.get(1) + "%' AND personality_code LIKE '%" + personalityCode.get(2)
				+ "%' and test_name='" + testName + "'";
		return xgkcpResultMapper.select(where, null, null, null);
	}

	public List<XgkcpResult> getAll() {
		return xgkcpResultMapper.select(null, null, null, null);
	}

}
