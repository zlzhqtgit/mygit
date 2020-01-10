package cn.hqtzytb.service.impl;

import java.io.File;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;
import org.springframework.web.multipart.MultipartFile;

import cn.hqtzytb.entity.AdminSystem;
import cn.hqtzytb.entity.Enshrine;
import cn.hqtzytb.entity.ResponseResult;
import cn.hqtzytb.entity.Specialty;
import cn.hqtzytb.entity.University;
import cn.hqtzytb.entity.Vocation;
import cn.hqtzytb.mapper.EnshrineMapper;
import cn.hqtzytb.mapper.SpecialtyMapper;
import cn.hqtzytb.mapper.UniversityMapper;
import cn.hqtzytb.mapper.UserRoleMapper;
import cn.hqtzytb.mapper.VocationMapper;
import cn.hqtzytb.service.IWebService;
import cn.hqtzytb.utils.Constants;
import cn.hqtzytb.utils.GetCommonUser;

/**
 * @ClassName: IWebServiceImpl
 * @Description: WEB服务实现类
 * @Author: WuPeiLong
 * @Date: 2019年12月27日
 * @Copyright:好前途教育
 * @Version V1.0
 */
@Service
public class IWebServiceImpl implements IWebService {
	private static final Logger logger = LogManager.getLogger(IWebServiceImpl.class.getName());
	@Autowired
	private UniversityMapper universityMapper;
	@Autowired
	private VocationMapper vocationMapper;
	@Autowired
	private SpecialtyMapper specialtyMapper;
	@Autowired
	private UserRoleMapper userRoleMapper;
	@Autowired
	private EnshrineMapper enshrineMapper;

	@Override
	public String browserSearch(String content, Integer offset, Integer countPerPage, ModelMap map,
			HttpServletRequest request) {
		try {
			if (StringUtils.isNotEmpty(content)) {
				System.err.println(content);
				content = new String(content.toString().getBytes("ISO8859-1"), "UTF-8");
			}			
			// 高校
			List<University> universityList = universityMapper.selectUniversityList2(StringUtils.isEmpty(content) ? null : " LOCATE('" + content + "',u.universities_name) "," ur.ur_year DESC ", offset == null ? 0 : offset, countPerPage == null ? 5 : countPerPage);			
			Integer universityCount = universityMapper.selectUniversityListCount2(StringUtils.isEmpty(content) ? null : " LOCATE('" + content + "',u.universities_name) ");
			// 专业
			List<Specialty> specialtyList = specialtyMapper.select(StringUtils.isEmpty(content) ? null : " LOCATE('" + content + "',b.specialty_name) ", null,offset == null ? 0 : offset, countPerPage == null ? 5 : countPerPage);
			Integer specialtyCount = specialtyMapper.selectCount(StringUtils.isEmpty(content) ? null : " LOCATE('" + content + "',b.specialty_name) ");
			// 职业
			List<Vocation> vocationList = vocationMapper.select(StringUtils.isEmpty(content) ? null : " LOCATE('" + content + "',b.vocation_name) ", null,offset == null ? 0 : offset, countPerPage == null ? 5 : countPerPage);
			Integer vocationCount = vocationMapper.selectCount(StringUtils.isEmpty(content) ? null : " LOCATE('" + content + "',b.vocation_name) ");			
			Subject subject = SecurityUtils.getSubject();
			if (subject.isAuthenticated()) {
				Session session = subject.getSession();
				Integer uid = (Integer)session.getAttribute("uid");
				List<Enshrine> eList = enshrineMapper.select(" uid = '" + uid + "' AND e_type = '0' ", null, null, null);
				for (University university : universityList) {
					university.setTeachingResearchList(GetCommonUser.getJson(university.getTeachingResearch(), request));//教研教学点
					university.setEnshrineCount(enshrineMapper.selectCount("e_code ='" + university.getUniversitiesCode() + "' ") + 80);//学校收藏数
					for(Enshrine e : eList){
						if(university.getUniversitiesCode().equals(e.geteCode()) ){
							university.seteId(e.geteId());
						}
					}
				}
				if(!specialtyList.isEmpty()){
					eList = enshrineMapper.select(" uid = '" + uid + "' AND e_type = '1' ", null, null, null);
					specialtyList.get(0).setEnshrineList(eList);
					for(Specialty s : specialtyList){
						for(Enshrine e : eList){
							if(s.getSpecialtyId().equals(e.geteCode())){
								s.seteId(e.geteId());
							}
						}
					}					
				}
				if(!vocationList.isEmpty()){
					eList = enshrineMapper.select(" uid = '" + uid + "' AND e_type = '2' ", null, null, null);
					vocationList.get(0).setEnshrineList(eList);
					for(Vocation v : vocationList){
						for(Enshrine e : eList){
							if(v.getVocationId().equals(e.geteCode())){
								v.seteId(e.geteId());
							}
						}
					}
				}				
			} else {
				for (University university : universityList) {
					university.setTeachingResearchList(GetCommonUser.getJson(university.getTeachingResearch(), request));//教研教学点
					university.setEnshrineCount(enshrineMapper.selectCount("e_code ='" + university.getUniversitiesCode() + "' ") + 80);//学校收藏数
				}
			}
			map.put("COLLEGE_PHOTO_PREFIX", Constants.COLLEGE_PHOTO_PREFIX);
			map.put("universityList", universityList);
			map.put("universityCount", universityCount);
			map.put("vocationList", vocationList);
			map.put("vocationCount", vocationCount);
			map.put("specialtyList", specialtyList);
			map.put("specialtyCount", specialtyCount);
			map.put("search_content", content);
			return "web/xgk/xgk_webSearch";
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：搜索框搜索院校/专业/职业信息异常   错误信息: " + e);
			return "web/xgk/xgk_error_404";
		}

	}

	@Override
	public ResponseResult<Void> handlexyghReg(HttpServletRequest request, MultipartFile file) {
		ResponseResult<Void> rr;
		try {
			Session session = SecurityUtils.getSubject().getSession();
			String classpath = this.getClass().getResource("/").getPath();
			String path = classpath.replaceAll("WEB-INF/classes/", "") + "img/chat";
			File file5 = new File(path);
			if (!file5.exists()) {
				file5.mkdirs();
			}
			Date now = new Date();
			// 获取图片后缀
			String extName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
			file.transferTo(new File(path + "/" + now.getTime() + extName));
			rr = new ResponseResult<Void>(ResponseResult.STATE_OK, "/img/chat/" + now.getTime() + extName);
			logger.info("用户名：" + session.getAttribute("username") + " 模块名：上传图片信息 操作：上传  状态：OK!");
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：上传图片信息  错误信息: " + e);
			rr = new ResponseResult<Void>(ResponseResult.ERR, "数据存在异常，请联系工作人员处理！");
		}
		return rr;
	}


	@Override
	public String showVipIndex(HttpServletRequest request) {
		try {
			Session session = SecurityUtils.getSubject().getSession();
			AdminSystem VIPRECHAARGE = userRoleMapper.queryAdminSystemByName("VIPRECHAARGE");// 学生套餐[VIP]
			AdminSystem COUNSELORRECHAARGE = userRoleMapper.queryAdminSystemByName("COUNSELORRECHAARGE");// 咨询师套餐
			session.setAttribute("VIPRECHAARGE", VIPRECHAARGE);
			session.setAttribute("COUNSELORRECHAARGE", COUNSELORRECHAARGE);
			return "web/xgk/xgk_userVip";
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：进入VIP充值页异常   错误信息: " + e);
			return "web/xgk/xgk_error_404";
		}

	}

	@Override
	public String showNewbieIndex(HttpServletRequest request) {
		try {
			return "web/xgk/xgk_noviceMaterial";
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：进入VIP充值页异常   错误信息: " + e);
			return "web/xgk/xgk_error_404";
		}
	}

	@Override
	public String showBusinessCooperationIndex(HttpServletRequest request) {
		try {
			return "web/xgk/xgk_cooperation";
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：进入VIP充值页异常   错误信息: " + e);
			return "web/xgk/xgk_error_404";
		}
	}

}
