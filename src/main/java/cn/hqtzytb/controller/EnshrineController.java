package cn.hqtzytb.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import cn.hqtzytb.entity.Enshrine;
import cn.hqtzytb.entity.ResponseResult;
import cn.hqtzytb.service.IEnshrineService;

/**
 * @ClassName: EnshrineController
 * @Description: 收藏控制器
 * @Author: WuPeiLong
 * @Date: 2019年12月30日
 * @Copyright:好前途教育
 * @Version V1.0
 */
@Controller
@RequestMapping("/ens")
public class EnshrineController {
	@Autowired
	private IEnshrineService iEnshrineService;
	
	/**
	 * 新增收藏
	 */
	@RequestMapping("/hqt_add_enshrine.do")
	@ResponseBody
	public ResponseResult<Enshrine> addEnshrine(Enshrine enshrine, HttpServletRequest request){
		
		return iEnshrineService.addEnshrine(enshrine, request);
	}
	
	
	
	/**
	 * 删除收藏
	 */
	@RequestMapping("/hqt_delete_enshrine.do")
	@ResponseBody
	public ResponseResult<Void> deleteEnshrine(Integer eId, HttpServletRequest request){
		
		return iEnshrineService.deleteEnshrine(eId, request);
	}
	
	
 }
