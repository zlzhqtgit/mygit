package cn.hqtzytb.service;

import javax.servlet.http.HttpServletRequest;

import cn.hqtzytb.entity.Enshrine;
import cn.hqtzytb.entity.ResponseResult;

/**
 * @ClassName: IEnshrineService
 * @Description: 收藏控制器
 * @Author: WuPeiLong
 * @Date: 2019年12月30日
 * @Copyright:好前途教育
 * @Version V1.0
 */
public interface IEnshrineService {
	
	ResponseResult<Enshrine> addEnshrine(Enshrine enshrine, HttpServletRequest request);

	ResponseResult<Void> deleteEnshrine(Integer eId, HttpServletRequest request);

}