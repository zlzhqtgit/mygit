package cn.hqtzytb.service.impl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;

import com.aliyuncs.dysmsapi.model.v20170525.SendSmsResponse;

import cn.hqtzytb.entity.AdminSystem;
import cn.hqtzytb.entity.Enshrine;
import cn.hqtzytb.entity.PhotoConfig;
import cn.hqtzytb.entity.ResponseResult;
import cn.hqtzytb.entity.Role;
import cn.hqtzytb.entity.TaskDetails;
import cn.hqtzytb.entity.User;
import cn.hqtzytb.entity.UserFeature;
import cn.hqtzytb.entity.UserResultReport;
import cn.hqtzytb.exception.MyRuntimeException;
import cn.hqtzytb.intercepter.MyUsernamePasswordToken;
import cn.hqtzytb.mapper.EnshrineMapper;
import cn.hqtzytb.mapper.TaskMapper;
import cn.hqtzytb.mapper.UserFeatureMapper;
import cn.hqtzytb.mapper.UserMapper;
import cn.hqtzytb.mapper.UserResultReportMapper;
import cn.hqtzytb.mapper.UserRoleMapper;
import cn.hqtzytb.service.IUserServer;
import cn.hqtzytb.utils.Constants;
import cn.hqtzytb.utils.GetCommonUser;
import cn.hqtzytb.utils.Photo;
import net.sf.json.JSONObject;

@Service
public class IUserServerImpl implements IUserServer {
	private static final Logger logger = LogManager.getLogger(IUserServerImpl.class.getName());
	@Autowired
	private UserMapper userMapper;
	@Autowired
	private PhotoConfig photoConfig;
	@Autowired
	private UserResultReportMapper userResultReportMapper;
	@Autowired
	private UserFeatureMapper userFeatureMapper;
	@Autowired
	private TaskMapper taskMapper;
	@Autowired
	private EnshrineMapper enshrineMapper;
	@Autowired
	private UserRoleMapper userRoleMapper;

	@Override
	public List<User> getuserAll() {
		return userMapper.select(null, null, null, null);
	}

	@Override
	public List<User> getuserByphone(String phone) {
		String where = " phone='" + phone + "'";
		return userMapper.select(where, null, null, null);
	}

	/**
	 * 查询单个用户信息 登陆
	 * 
	 * @param phone
	 * @return
	 */
	@Override
	public User queryUser(String account) {
		return userMapper.queryUser(account);
	}

	/**
	 * 插入用户信息
	 * 
	 * @param user
	 * @return
	 */
	@Override
	public User insert(User user) {
		userMapper.insert(user);
		return user;
	}

	@Override
	public ResponseResult<Void> bindAccount(String phone, String verifyCode) {
		Subject subject = SecurityUtils.getSubject();
		Session session = subject.getSession();
		String code = session.getAttribute("code").toString();
		String mobile = session.getAttribute("phone").toString();
		if (!verifyCode.equals(code) || !phone.equals(mobile)) {
			logger.error("手机号：" + mobile + " 模块名：第三方用户手机号绑定   操作：绑定  状态：FAIL! 验证码错误");
			return new ResponseResult<>(ResponseResult.ERR, "验证码错误");
		}
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("phone", phone);
		List<User> users = userMapper.selectUserListByMap(paramMap);
		if (users.isEmpty()) {
			logger.error("手机号：" + mobile + " 模块名：第三方用户手机号绑定   操作：绑定  状态：FAIL! 用户信息不存在");
			return new ResponseResult<>(ResponseResult.ERR, "验证码错误");
		} else {
			String wexinChat = session.getAttribute("wexinChat") == null ? null
					: session.getAttribute("wexinChat").toString();
			String qqChat = session.getAttribute("qqChat") == null ? null : session.getAttribute("qqChat").toString();
			User user = users.get(0);
			if (StringUtils.isEmpty(user.getWexinChat()) && StringUtils.isNotEmpty(wexinChat)) {
				user.setWexinChat(wexinChat);// 绑定微信openid
			}
			if (StringUtils.isEmpty(user.getQqChat()) && StringUtils.isNotEmpty(qqChat)) {
				user.setQqChat(qqChat);// 绑定腾讯openid
			}
			user.setHeadImg(session.getAttribute("headImg").toString());
			userMapper.updateById(user);// 修改用户信息
			session.setAttribute("uid", users.get(0).getId());
			session.setAttribute("username", users.get(0).getUsername());
			session.setAttribute("headImg", users.get(0).getHeadImg());
			JSONObject userJson = JSONObject.fromObject(users.get(0));
			session.setAttribute("userJson", userJson);// 提供给前端页面使用
			session.setAttribute("user", users.get(0));// 提供给后台服务websocket类使用(存放对象，避免过多的json转换)
			subject.login(new MyUsernamePasswordToken(user.getPhone()));
			logger.error("手机号：" + mobile + " 模块名：第三方用户手机号绑定   操作：绑定  状态：OK!");
			return new ResponseResult<Void>(ResponseResult.STATE_OK, Constants.RESULT_MESSAGE_SUCCESS);
		}
	}

	@Override
	public String hanldLogin(ModelMap map, String nowUrl, HttpServletRequest request, HttpServletResponse response)
			throws MyRuntimeException {
		try {
			Session session = SecurityUtils.getSubject().getSession();
			map.addAttribute("nowUrl", nowUrl);
			logger.info("用户名：" + session.getAttribute("username") + " 模块名：新高考用户登录模块  操作：进入模块  状态：OK!");
			return "web/xgk/xgk_index";
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：进入新高考用户登录模块     错误信息: " + e);
			throw new MyRuntimeException(e);
		}
	}

	@Override
	public ResponseResult<Void> handleUserlogin(String account, String password, HttpServletRequest request) {
		ResponseResult<Void> rr = null;
		try {
			Subject subject = SecurityUtils.getSubject();
			// 查询用户名是否存在
			User user = userMapper.queryUser(account);
			System.out.println("账号号：" + account);
			System.out.println("密码：" + password);
			// 判断用户名是否存在
			if (user == null) {
				rr = new ResponseResult<Void>(ResponseResult.ERR, "手机号不存在!请重新输入...");
				logger.info("用户手机：" + account + " 模块名：登录模块 操作：登录  状态：Failed! ");
			} else {
				System.err.println("password:" + password);
				MyUsernamePasswordToken token = new MyUsernamePasswordToken(account, password);
				subject.login(token);
				Session session = subject.getSession();
				if (Constants.HQT_COMPANY_NUMBER.equals(user.getCompanyNumber())) {// 好前途平台用户
					session.setAttribute(Constants.HQT_USER, 1);
				} else {
					session.setAttribute(Constants.HQT_USER, 0);
				}
				session.setAttribute(Constants.SYSTEM_USER, user);
				session.setAttribute("uid", user.getId());
				session.setAttribute("username", user.getUsername());
				session.setAttribute("headImg", user.getHeadImg());
				session.setAttribute("province", user.getStudyProvinces());
				JSONObject userJson = JSONObject.fromObject(user);
				session.setAttribute("userJson", userJson);// 提供给前端页面使用
				session.setAttribute("user", user);// 提供给后台服务websocket类使用(存放对象，避免过多的json转换)
				rr = new ResponseResult<Void>(ResponseResult.STATE_OK, "登录成功");
				logger.info("用户名：" + user.getUsername() + " 模块名：登录模块 操作：登录  状态：OK!");
			}
		} catch (Exception e) {
			e.printStackTrace();
			rr = new ResponseResult<Void>(ResponseResult.ERR, "数据存在异常，请联系工作人员处理！");
			logger.error("访问路径：" + request.getRequestURI() + "操作：登录模块 操作 错误信息: " + e);
		}
		return rr;
	}

	@Override
	public ResponseResult<Void> handlephotoyzm(String phone, HttpServletRequest request) {
		Session session = SecurityUtils.getSubject().getSession();
		ResponseResult<Void> rr;
		System.err.println("dalshkjdashkjldhaskjhdakjsghdkjashdkjashekjashkjdhakj ");
		try {
			String code = Integer.toString(Photo.getNewcode());
			User user = userMapper.queryUser(phone);
			if (user != null) {
				rr = new ResponseResult<Void>(ResponseResult.ERR, "该手机号已经存在，请重新输入");
				logger.info("用户手机：" + phone + " 模块名：注册模块 操作：注册发送短信验证码  状态：Failed! ");
			} else {
				System.out.println(Constants.ERROR_HEAD_INFO + "开始发送短信");
				SendSmsResponse response = Photo.sendSms(phone, code, photoConfig.getAccessKeyId(),
						photoConfig.getAccessKeySecret(), photoConfig.getQm_name(), photoConfig.getQm_sms());
				System.out.println(Constants.ERROR_HEAD_INFO + "短信发送完毕");
				if (response.getCode().equals("OK") && response.getMessage().equals("OK")) {
					session.setAttribute("code", code);
					session.setAttribute("phone", phone);
					System.err.println("短信验证码：" + code);
					rr = new ResponseResult<Void>(ResponseResult.STATE_OK, "短信验证码已成功发送");
					logger.info("用户手机：" + phone + " 模块名：注册模块 操作：注册发送短信验证码  状态：Success! ");
					System.out.println(code);
				} else {
					rr = new ResponseResult<Void>(ResponseResult.ERR, "短信验证码发送失败");
					logger.info("用户手机：" + phone + " 模块名：注册模块 操作：注册发送短信验证码  状态：Failed! ");
				}
			}
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：注册发送短信验证码  错误信息: " + e);
			rr = new ResponseResult<Void>(ResponseResult.ERR, "数据存在异常，请联系工作人员处理！");
		}
		return rr;
	}

	@Override
	public String hanldRegister(ModelMap map, HttpServletRequest request, HttpServletResponse response)
			throws MyRuntimeException {
		try {
			Session session = SecurityUtils.getSubject().getSession();
			logger.info("用户名：" + session.getAttribute("username") + " 模块名：用户注册模块  操作：进入模块  状态：OK!");
			return "web/public/register";
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：进入用户注册模块     错误信息: " + e);
			throw new MyRuntimeException(e);
		}
	}

	@Override
	public ResponseResult<Void> handleRegisteradd(User user, String verifyCode, HttpServletRequest request) {
		Subject subject = SecurityUtils.getSubject();
		Session session = subject.getSession();
		ResponseResult<Void> rr = null;
		System.err.println("1111111");
		if (session.getAttribute("phone") == null || session.getAttribute("code") == null) {
			return new ResponseResult<>(Constants.RESULT_CODE_FAIL, "请先获取手机验证码");
		}
		if (!user.getPhone().equals(session.getAttribute("phone").toString())) {
			return new ResponseResult<>(Constants.RESULT_CODE_FAIL, "验证码和手机号不匹配");
		}
		System.err.println("verifyCode:" + verifyCode);
		System.err.println("code:" + session.getAttribute("code").toString());
		if (!verifyCode.equals(session.getAttribute("code").toString())) {
			return new ResponseResult<>(Constants.RESULT_CODE_FAIL, "验证码输入错误");
		}

		try {
			// 查询手机号用户是否存在
			User account = userMapper.queryUser(user.getPhone());
			// 判断用户名是否存在
			if (account != null) {
				logger.info("用户手机：" + user.getPhone() + " 模块名：注册模块 操作：登录  状态：Failed! ");
				return new ResponseResult<Void>(ResponseResult.ERR, "手机号已经存在!请重新输入...");
			}
			// 查询身份证号是否存在
			if (StringUtils.isNotEmpty(user.getPcNumber())) {
				account = userMapper.queryUser(user.getPcNumber());
			}
			// 判断身份证号是否存在
			if (account != null) {
				logger.info("用户手机：" + user.getPhone() + " 模块名：注册模块 操作：登录  状态：Failed! ");
				return new ResponseResult<Void>(ResponseResult.ERR, "身份证号已经存在!请重新输入...");
			}
			if (StringUtils.isNotEmpty(user.getStudentId())) {
				List<User> student_user = userMapper.select(" student_id = '" + user.getStudentId() + "' ", null, null,
						null);
				if (!student_user.isEmpty()) {
					logger.info("用户手机：" + user.getPhone() + " 模块名：注册模块 操作：登录  状态：Failed! ");
					return new ResponseResult<Void>(ResponseResult.ERR, "学号已经存在!请重新输入...");
				}
			}
			Role role = userMapper.selectRoleById(5);
			if (StringUtils.isEmpty(role.getRoleAuthority())) {
				logger.info("用户手机：" + user.getPhone() + " 模块名：注册模块 操作：登录  状态：Failed! ");
				return new ResponseResult<Void>(ResponseResult.ERR, "系统正处于维护状态!请稍后重试...");
			}
			Date currentTime = new Date();
			System.err.println("注册密码：" + user.getPassword());
			String uuid = UUID.randomUUID().toString().toUpperCase();
			String md5Password = GetCommonUser.getEncrpytedPassword(Constants.MD5, user.getPassword(), uuid, 1024);
			user.setUuid(uuid);
			user.setPassword(md5Password);
			user.setRid(5);// 默认角色 为平台个人
			user.setAuthority(role.getRoleAuthority());// 用户授权
			user.setWexinChat(
					session.getAttribute("wexinChat") == null ? null : session.getAttribute("wexinChat").toString());
			user.setQqChat(session.getAttribute("qqChat") == null ? null : session.getAttribute("qqChat").toString());
			user.setHeadImg((String) session.getAttribute("headImg"));
			user.setCreatTime(currentTime);
			userMapper.insert(user);
			JSONObject userJson = JSONObject.fromObject(user);
			session.setAttribute("uid", user.getId());
			session.setAttribute("username", user.getUsername());
			session.setAttribute("headImg", user.getHeadImg());
			session.setAttribute("userJson", userJson);// 提供给前端页面使用
			session.setAttribute("user", user);// 提供给后台服务websocket类使用(存放对象，避免过多的json转换)
			logger.info("用户名：" + user.getUsername() + " 模块名：注册模块 操作：登录  状态：OK!");
			rr = new ResponseResult<Void>(ResponseResult.STATE_OK, "注册成功");
			subject.login(new MyUsernamePasswordToken(user.getPhone()));

		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：注册信息  错误信息: " + e);
			rr = new ResponseResult<Void>(ResponseResult.ERR, "数据存在异常，请联系工作人员处理！");
		}
		return rr;
	}

	@Override
	public ResponseResult<Void> userIsExist(String phone, HttpServletRequest request) {
		try {
			User user = userMapper.queryUser(phone);
			if (user != null) {
				return new ResponseResult<Void>(ResponseResult.STATE_OK, Constants.RESULT_MESSAGE_SUCCESS);
			}
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：查询手机号/身份证号注册信息  错误信息: " + e);
		}
		return new ResponseResult<Void>(ResponseResult.ERR, Constants.RESULT_MESSAGE_SUCCESS);
	}

	@Override
	public ResponseResult<Void> sendMessage(String phone, HttpSession session, HttpServletRequest request) {
		ResponseResult<Void> rr;
		String code = Integer.toString(Photo.getNewcode());
		try {
			User user = userMapper.queryUser(phone);
			if (user == null) {
				rr = new ResponseResult<Void>(ResponseResult.ERR, "该手机号账户不存在，请重新输入");
				logger.info("用户手机：" + phone + " 模块名：发送短信模块 操作：登录  状态：Failed! ");
			} else {
				SendSmsResponse response = Photo.sendSms(phone, code, photoConfig.getAccessKeyId(),
						photoConfig.getAccessKeySecret(), photoConfig.getQm_name(), photoConfig.getQm_sms());
				if (response.getCode().equals("OK") && response.getMessage().equals("OK")) {
					session.setAttribute("code", code);
					session.setAttribute("phone", phone);
					rr = new ResponseResult<Void>(ResponseResult.STATE_OK, "短信验证码已成功发送");
					logger.info("用户手机：" + phone + " 模块名：发送短信模块 操作：登录  状态：Success! ");
					System.out.println(code);
				} else {
					rr = new ResponseResult<Void>(ResponseResult.ERR, "短信验证码发送失败");
					logger.info("用户手机：" + phone + " 模块名：发送短信模块 操作：登录  状态：Failed! ");
				}
			}
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：注册信息  错误信息: " + e);
			rr = new ResponseResult<Void>(ResponseResult.ERR, "数据存在异常，请联系工作人员处理！");
		}
		return rr;
	}

	@Override
	public String showUserCenterInfo(HttpServletRequest request) {
		try {
			Subject subject = SecurityUtils.getSubject();
			if (subject.isAuthenticated()) {
				Session session = subject.getSession();
				Integer uid = (Integer) session.getAttribute("uid");
				User user = userMapper.select(" id = '" + uid + "' ", null, null, null).get(0);
				session.setAttribute("user", user);// 用户信息
				List<UserResultReport> reportList = userResultReportMapper.select(" uid = '" + uid + "' ", null, null,
						null);
				if (!reportList.isEmpty()) {
					session.setAttribute("result_report", reportList.get(0));// 测评结果报告
					session.setAttribute("assignment", reportList.get(0).getStatus());// 是否存在测评任务
				} else {
					session.setAttribute("assignment", 3);// 不存在测评任务
				}
				List<UserFeature> userFeatureList = userFeatureMapper.select(" uid = '" + uid + "' ", null, null, null);
				for (UserFeature userFeature : userFeatureList) {
					System.err.println("userFeature: " + userFeature);
					if (Constants.EVALUATION_TYPE_SCORE_ANALYSIS.equals(userFeature.getEvaluationType())) {
						session.setAttribute(Constants.EVALUATION_TYPE_SCORE_ANALYSIS, userFeature);// 成绩分析
					}
					if (Constants.EVALUATION_TYPE_POTENTIAL_ANALYSIS.equals(userFeature.getEvaluationType())) {
						session.setAttribute(Constants.EVALUATION_TYPE_POTENTIAL_ANALYSIS, userFeature);// 潜能测评
					}
					if (Constants.EVALUATION_TYPE_HOLLAND_ANALYSIS.equals(userFeature.getEvaluationType())) {
						session.setAttribute(Constants.EVALUATION_TYPE_HOLLAND_ANALYSIS, userFeature);// 霍来德测评
					}
					if (Constants.EVALUATION_TYPE_MBTI_ANALYSIS.equals(userFeature.getEvaluationType())) {
						session.setAttribute(Constants.EVALUATION_TYPE_MBTI_ANALYSIS, userFeature);// MBTI测评
					}
				}

				List<UserResultReport> resultReportList = userResultReportMapper.select(" uid = '" + uid + "' ", null,
						null, null);
				if (!resultReportList.isEmpty()) {
					if ("1".equals(resultReportList.get(0).getStatus())) {
						session.setAttribute("whether_done", 1);// 已做过选科指导
					} else {
						session.setAttribute("whether_done", 0);// 已做过选科指导
					}
					session.setAttribute("resule_report", resultReportList.get(0));// 测评结果报告
				}

				if (Constants.HQT_COMPANY_NUMBER.equals(user.getCompanyNumber())) {// 好前途平台用户
					session.setAttribute(Constants.HQT_USER, 1);
				} else {// 非好前途平台用户
					session.setAttribute(Constants.HQT_USER, 0);
					List<TaskDetails> taskDetailsList = taskMapper.selectTaskDetails(" e.id = '" + uid + "' ",
							" b.status DESC,b.creation_time DESC ", null, null);
					Integer taskCount = 0;
					for (TaskDetails task : taskDetailsList) {
						if (!task.getdStatus().equals(2) && task.getStatus().equals(0)) {
							taskCount++;
						}
					}
					session.setAttribute("task_count", taskCount);// 未完成任务数
					session.setAttribute("task_list", taskDetailsList);// 任务列表					
				}
				List<Enshrine> universityList = enshrineMapper.select(" uid = '" + uid + "' AND e_type = '0' ", null,null, null);
				List<Enshrine> specialtyList = enshrineMapper.select(" uid = '" + uid + "' AND e_type = '1' ", null,null, null);
				List<Enshrine> voactionList = enshrineMapper.select(" uid = '" + uid + "' AND e_type = '2' ", null,null, null);
				session.setAttribute("like_university_list", universityList);// 收藏的学校
				session.setAttribute("like_specialty_list", specialtyList);// 收藏的专业
				session.setAttribute("like_voaction_list", voactionList);// 收藏的职业
			}
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：查看个人中心   错误信息: " + e);
		}
		return "web/xgk/center_user";
	}

	@Override
	public ResponseResult<Map<String, Object>> reduceDownloadCount(HttpServletRequest request) {
		try {
			Subject subject = SecurityUtils.getSubject();
			Map<String, Object> resultMap = new HashMap<>();
			if (subject.isAuthenticated()) {// 好前途平台用户下载报告有限制
				Date currentTime = new Date();
				Integer uid = (Integer) subject.getSession().getAttribute("uid");
				User user = userMapper.select(" id = '" + uid + "' ", null, null, null).get(0);
				System.err.println("user：" + user);
				AdminSystem DOWNLOADRECHAARGE = userRoleMapper.queryAdminSystemByName("DOWNLOADRECHAARGE");
				resultMap.put("DOWNLOADRECHAARGE", DOWNLOADRECHAARGE);
				AdminSystem adminSystem = userRoleMapper.queryAdminSystemByRoleId(user.getRid());
				resultMap.put("USER_TYPE", adminSystem.getSysname());
				if (Constants.HQT_COMPANY_NUMBER.equals(user.getCompanyNumber())) {
					if ("SYSTEMUSER".equals(adminSystem.getSysname())) {// 您还不是VIP无法使用

						if (user.getDownloadCount() != null && user.getDownloadCount() <= 0) {// 下载次数用完
							return new ResponseResult<>(ResponseResult.ERR, "您还不是VIP无法下载报告，是否成为VIP用户？或单独购买本次服务?",
									resultMap);
						} else {
							resultMap.put("count", user.getDownloadCount());
							if (user.getExpirationTime() != null) {
								resultMap.put("expirationTime",
										new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(user.getExpirationTime()));
							}
							user.setDownloadCount(user.getDownloadCount() - 1);
							userMapper.updateById(user);
							return new ResponseResult<>(ResponseResult.STATE_OK, Constants.RESULT_MESSAGE_SUCCESS,
									resultMap);
						}
					} else {
						if (user.getDownloadCount() != null && user.getDownloadCount() <= 0) {// 下载次数用完
							return new ResponseResult<>(ResponseResult.ERR, "您的下载测评报告次数已用完，请充值后再进行尝试！或单独购买本次服务?",
									resultMap);
						}
						if (user.getExpirationTime() != null && currentTime.after(user.getExpirationTime())) {// vip过期
							return new ResponseResult<>(ResponseResult.ERR, "您的VIP权限已过期，请续费后再进行尝试下载测评报告！或单独购买本次服务?");
						} else {
							resultMap.put("count", user.getDownloadCount());
							if (user.getExpirationTime() != null) {
								resultMap.put("expirationTime",
										new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(user.getExpirationTime()));
							}
							user.setDownloadCount(user.getDownloadCount() - 1);
							userMapper.updateById(user);
							return new ResponseResult<>(ResponseResult.STATE_OK, Constants.RESULT_MESSAGE_SUCCESS,
									resultMap);
						}
					}
				}
				return new ResponseResult<>(ResponseResult.STATE_OK, Constants.RESULT_MESSAGE_SUCCESS, resultMap);
			} else {
				return new ResponseResult<>(ResponseResult.ERR, "请登录后,再行打印报告", resultMap);
			}
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：查看用户是否能够下载测评报告异常 错误信息: " + e);
			return new ResponseResult<>(ResponseResult.ERR, Constants.RESULT_MESSAGE_FAIL);
		}

	}

	@Override
	public ResponseResult<Map<String, Object>> addTaskResult(Integer taskId, HttpServletRequest request) {
		Subject subject = SecurityUtils.getSubject();
		try {
			if (subject.isAuthenticated()) {
				Integer uid = (Integer) subject.getSession().getAttribute("uid");
				List<UserResultReport> resultReportList = userResultReportMapper.select(" uid = '" + uid + "'", null,
						null, null);
				if (!resultReportList.isEmpty()) {
					TaskDetails task = new TaskDetails();
					task.setTaskId(taskId);
					task.setdStatus(2);
					task.setdResult(resultReportList.get(0).getResult());
					taskMapper.updateTaskDetails(task);
					return new ResponseResult<>(ResponseResult.STATE_OK, Constants.RESULT_MESSAGE_SUCCESS);
				}
			}
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：添加测评报告到任务异常   错误信息: " + e);
		}
		return new ResponseResult<>(ResponseResult.STATE_OK, Constants.RESULT_MESSAGE_FAIL);
	}

	@Override
	public ResponseResult<Void> updateUserInfo(User user, HttpServletRequest request) {
		Subject subject = SecurityUtils.getSubject();
		try {
			if (subject.isAuthenticated()) {
				Session session = subject.getSession();
				Integer uid = (Integer) session.getAttribute("uid");
				user.setId(uid);
				List<User> users = new ArrayList<>();
				if(StringUtils.isNotEmpty(user.getPcNumber())){
					users = userMapper.select(" pc_number = '" + user.getPcNumber() + "' AND id != '" + uid + "' ", null, null, null);
					if (!users.isEmpty()) {
						return new ResponseResult<>(ResponseResult.ERR, "身份证号已存在,请重新输入!");
					}
				}
				if(StringUtils.isNotEmpty(user.getStudentId())){
					users = userMapper.select(" student_id = '" + user.getStudentId() + "' AND id != '" + uid + "' ", null,
							null, null);
					if (!users.isEmpty()) {
						return new ResponseResult<>(ResponseResult.ERR, "学号已存在,请重新输入!");
					}
				}	
				if(StringUtils.isNotEmpty(user.getPassword())){
					String uuid = UUID.randomUUID().toString().toUpperCase();
					user.setUuid(uuid);
					String md5Password = GetCommonUser.getEncrpytedPassword(Constants.MD5, user.getPassword(), uuid, 1024);
					user.setPassword(md5Password);
				}				
				Integer row = userMapper.updateById(user);
				if (row > 0) {
					session.setAttribute(Constants.SYSTEM_USER, user);
					session.setAttribute("username", user.getUsername());
					session.setAttribute("province", user.getStudyProvinces());
					JSONObject userJson = JSONObject.fromObject(user);
					session.setAttribute("userJson", userJson);// 提供给前端页面使用
					session.setAttribute("user", user);// 提供给后台服务websocket类使用(存放对象，避免过多的json转换)
					return new ResponseResult<>(ResponseResult.STATE_OK, Constants.RESULT_MESSAGE_SUCCESS);
				}
			}
		} catch (Exception e) {
			logger.error("访问路径：" + request.getRequestURI() + "操作：用户修改信息异常   错误信息: " + e);
		}
		return new ResponseResult<>(ResponseResult.ERR, Constants.RESULT_MESSAGE_FAIL);
	}

	@Override
	public ResponseResult<Void> updateUserPhone(String phone, String verifyCode, HttpServletRequest request) {
		ResponseResult<Void> rr = null;
		try {
			Subject subject = SecurityUtils.getSubject();
			if (subject.isAuthenticated()) {
				Session session = subject.getSession();
				String code = (String) session.getAttribute("code");
				String mobile = (String) session.getAttribute("phone");
				Integer uid = (Integer) session.getAttribute("uid");
				if (!verifyCode.equals(code)) {
					rr = new ResponseResult<>(ResponseResult.ERR, "验证码输入错误,请重新输入!");
				}
				if (!phone.equals(mobile)) {
					rr = new ResponseResult<>(ResponseResult.ERR, "手机号输入错误,请重新输入!");
				}
				User user = new User();
				user.setId(uid);
				user.setPhone(phone);
				userMapper.updateById(user);
				rr = new ResponseResult<>(ResponseResult.STATE_OK, Constants.RESULT_MESSAGE_SUCCESS);
			}

		} catch (Exception e) {
			rr = new ResponseResult<>(ResponseResult.ERR, Constants.RESULT_MESSAGE_FAIL);
			logger.error("访问路径：" + request.getRequestURI() + "操作：用户修改手机号异常   错误信息: " + e);
		}
		return rr;
	}
}
