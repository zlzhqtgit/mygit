package cn.hqtzytb.service.impl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import cn.hqtzytb.entity.Enshrine;
import cn.hqtzytb.entity.ResponseResult;
import cn.hqtzytb.mapper.EnshrineMapper;
import cn.hqtzytb.service.IEnshrineService;
import cn.hqtzytb.utils.Constants;

/**
 * @ClassName: IEnshrineServiceImpl
 * @Description: 收藏控业务实现类
 * @Author: WuPeiLong
 * @Date: 2019年12月30日
 * @Copyright:好前途教育
 * @Version V1.0
 */
@Service
public class IEnshrineServiceImpl implements IEnshrineService {
	private  static final Logger logger = LogManager.getLogger(IUniversityServiceImpl.class.getName());
	@Autowired
	private EnshrineMapper enshrineMapper;
	
	
	@Override
	public ResponseResult<Enshrine> addEnshrine(Enshrine enshrine, HttpServletRequest request) {
		try {
			Subject subject = SecurityUtils.getSubject();
			System.err.println(enshrine);
			if(subject.isAuthenticated()){
				Session session = subject.getSession();
				Integer uid = (Integer)session.getAttribute("uid");
				enshrine.setUid(uid);
				List<Enshrine> list = enshrineMapper.select(" uid = '" + uid + "' AND e_code = '" + enshrine.geteCode() + "' AND e_type = '" + enshrine.geteType() + "' ", null, null, null);
				if (list.isEmpty()) {
					enshrineMapper.insert(enshrine);
				}
				return new ResponseResult<>(Constants.RESULT_CODE_SUCCESS,Constants.RESULT_MESSAGE_SUCCESS,enshrine);
			} else {
				return new ResponseResult<>(Constants.RESULT_CODE_FAIL,Constants.RESULT_MESSAGE_FAIL);
			}
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作； 用户添加收藏异常   错误信息：" + e);
			return new ResponseResult<>(Constants.RESULT_CODE_FAIL,Constants.RESULT_MESSAGE_FAIL);
		}

	}


	@Override
	public ResponseResult<Void> deleteEnshrine(Integer eId, HttpServletRequest request) {
		try {
			enshrineMapper.deleteById(eId);
			return new ResponseResult<>(Constants.RESULT_CODE_SUCCESS,Constants.RESULT_MESSAGE_SUCCESS);

		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作； 用户删除收藏异常   错误信息：" + e);
		}
		return new ResponseResult<>(Constants.RESULT_CODE_FAIL,Constants.RESULT_MESSAGE_FAIL);
	}



}
