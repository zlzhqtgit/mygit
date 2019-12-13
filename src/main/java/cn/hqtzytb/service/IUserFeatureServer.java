package cn.hqtzytb.service;

import java.util.List;

import cn.hqtzytb.entity.ResponseResult;
import cn.hqtzytb.entity.UserFeature;

public interface IUserFeatureServer
{
	UserFeature insert(UserFeature userFeature);
	Integer update(UserFeature userFeature);
	List<UserFeature> getUserFeatureAll();
	List<UserFeature> getUserFeatureByUid(Integer uid);

	/**
	 * 是否做过认知测评
	 * @param uid
	 * @param type
	 * @return
	 */
	ResponseResult<Void> haveYouCognitionEvaluation(Integer uid, String type);

}
