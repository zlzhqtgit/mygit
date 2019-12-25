package cn.hqtzytb.service.impl;

import java.util.List;
import cn.hqtzytb.entity.ResponseResult;
import cn.hqtzytb.service.IUserFeatureServer;
import cn.hqtzytb.utils.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import cn.hqtzytb.entity.UserFeature;
import cn.hqtzytb.mapper.UserFeatureMapper;


/**
* @Title: UserFeatureServerImpl.java
* @Package cn.hqtzytb.service
* @Description:(用户特征业务层实现类)
* @author: ZhouLingZhang
* @date 2019年9月27日
* @Copyright:好前途教育
* @version V1.0
 */
@Service
public class UserFeatureServerImpl implements IUserFeatureServer {
	
	@Autowired
	public UserFeatureMapper userFeatureMapper;
	
	@Override
	public UserFeature insert(UserFeature userFeature) {
		userFeatureMapper.insert(userFeature);
		return userFeature;
	}

	@Override
	public Integer update(UserFeature userFeature) {		
		return userFeatureMapper.update(userFeature);
	}

	@Override
	public List<UserFeature> getUserFeatureAll() {		
		return userFeatureMapper.select(null, null, null, null);
	}

	
	@Override
	public List<UserFeature> getUserFeatureByUid(Integer uid) {
		String where="uid="+uid;
		return userFeatureMapper.select(where, null, null, null);
	}

	@Override
	public ResponseResult<Void> haveYouCognitionEvaluation(Integer uid, String type) {
		String where = "";
		if ("hld".equals(type)){
			where += "uid = '" + uid + "' and evaluation_type = '霍兰德'";
		} else {
			where += "uid = '" + uid + "' and evaluation_type = 'MBTI'";
		}
		List<UserFeature> userFeatures = userFeatureMapper.select(where,null,null,null);
		if (userFeatures.isEmpty()){//未做过测评
			return new ResponseResult<>(Constants.RESULT_CODE_FAIL,Constants.RESULT_MESSAGE_SUCCESS);
		}
		return new ResponseResult<>(Constants.RESULT_CODE_SUCCESS,Constants.RESULT_MESSAGE_SUCCESS);
	}


}
