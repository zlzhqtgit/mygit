package cn.hqtzytb.service;

import java.util.List;
import cn.hqtzytb.entity.UserFeature;

public interface IUserFeatureServer
{
	UserFeature insert(UserFeature userFeature);
	Integer update(UserFeature userFeature);
	List<UserFeature> getUserFeatureAll();
	List<UserFeature> getUserFeatureByUid(Integer uid);
	
}
