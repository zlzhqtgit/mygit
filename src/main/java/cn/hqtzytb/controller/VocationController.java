package cn.hqtzytb.controller;

import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import cn.hqtzytb.entity.ResponseResult;
import cn.hqtzytb.entity.Vocation;
import cn.hqtzytb.service.IVocationServer;

/**
 * @ClassName: UniversityController
 * @Description: 职业库器类
 * @Author: WuPeiLong
 * @Date: 2019年12月17日
 * @Copyright:好前途教育
 * @Version V1.0
 */
@Controller
@RequestMapping("/voc")
public class VocationController {
	@Autowired
	private IVocationServer IVocationServer;
	
	/**
	 * 显示职业库主页
	 * @return
	 */
	@RequestMapping("/xgk_job_blank.do")
	public String getVocationIndex() {
		return IVocationServer.getVocationIndex();
	}
	
	/**
	 * 查询职业信息列表
	 * @return
	 */
	@RequestMapping("/xgk_voc_query.do")
	@ResponseBody
	public ResponseResult<List<Vocation>> getVocationQuery(String industry, String education) {
		return IVocationServer.getVocationQuery(industry,education);
	}
	
	/**
	 * 查询职业信息列表
	 * @return
	 */
	@RequestMapping("/xgk_voc_detail.do")
	public String getVocationDetail(String vocationId, HttpServletRequest request) {
		return IVocationServer.getVocationDetail(vocationId, request);
	}
	
	/**
	 * 查询职业信息列表
	 * @return
	 */
	@RequestMapping("/xgk_voc_other.do")
	@ResponseBody
	public ResponseResult<Map<String, Object>> getVocationOtherDetail(String vocationId, HttpServletRequest request) {
		return IVocationServer.getVocationOtherDetail(vocationId, request);
	}
	
	
	/**
	 * 分页查询职业信息列表
	 * @return
	 */
	@RequestMapping("/xgk_voc_list.do")
	@ResponseBody
	public ResponseResult<Map<String, Object>> getVocationList(String where,Integer offset, Integer countPerPage ,HttpServletRequest request) {
		return IVocationServer.getVocationList(where, offset, countPerPage, request);
	}
}
