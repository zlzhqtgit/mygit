<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=0.3">
		<title>贵州好前途教育科技有限公司</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/js/layui-v2.5.5/layui/css/layui.css"  media="all">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/Hui-iconfont/1.0.8/iconfont.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/index.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/sch_search.css"/>
		<link rel="icon" href="${pageContext.request.contextPath}/web/xgk/favicon.ico" type="image/x-icon">
		<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="${pageContext.request.contextPath}/js/layer/2.4/layer.js"></script>
		<script src="${pageContext.request.contextPath}/js/layui-v2.5.5/layui/layui.js" charset="utf-8"></script>
		<script src="${pageContext.request.contextPath}/js/common.js"></script>
		<script src="${pageContext.request.contextPath}/js/province.js"></script>
		<script src="${pageContext.request.contextPath}/js/jPages.js"></script>
		<style type="text/css">
			.vipLimite{
				width:4em;
			    display: inline-block;
				position:absolute;
				left:78px;
				top:42px;
				box-shadow:0;
				height: 3em;
			}
			.vipLimite:hover{
				/* background-color:transparent; */
			}
			.vipLimite>label{
				display: inline-block;
				font-size:1.4em;
				top:8px;
				left:26px;
				border-radius: 4px;
				margin:0;
				text-align:center;
				background-color: #01b2ca;
			}
			.vipLimite>span{
				position:absolute;
				top:8px;
				left:26px;
				color:red;
			}
		</style>
	</head>

	<body>
		<!-- 页面头部-->
		<c:import url="header.jsp"></c:import>
		<div class="p_relative">
			<div class=""><img src="${pageContext.request.contextPath}/img/xgk/bannerBg.png"/></div>
			<div class="user_info">
				<div class="text-center cenUser_head" style="width: 6em;position:absolute;">
					<a class="show_more vipLimite"><label class="fontwei">${user.roleName}</label>						
						<span class="">
						到期时间：
							<c:if test="${user.expirationTime != null}">
								<fmt:formatDate value="${user.expirationTime}" pattern="yyyy-MM-dd"/>
							</c:if>
							<c:if test="${user.expirationTime == null}">
								无
							</c:if>
						&ensp;
						下载次数：
							<c:if test="hqt_user == 1">
								${user.downloadCount}
							</c:if>
							<c:if test="hqt_user != 1">
								无次数限制
							</c:if>
						</span>
					</a>
					<shiro:guest> 
						<img src="${pageContext.request.contextPath}/img/xgk/user.png" style="width: 100%;"/>
						<h3 class="fontwei">用户昵称</h3>
					</shiro:guest>
					<shiro:user>  
						<c:if test="${headImg != null}">							
							<img src="${headImg}" style="border-radius: 50%; overflow: hidden; width: 100%; height: 100%" />
						</c:if>
						<c:if test="${headImg == null}">
							<img src="${pageContext.request.contextPath}/img/xgk/user.png" style="width: 100%;"/>
						</c:if>						
						<h3 class="fontwei">${username}</h3>
						
					</shiro:user>
				</div>
				<div class="clearfix container">
					<div class="col-lg-6 col-md-6 col-sm-6">
						
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 focus_info">
						<div class="text-center pull-left padding-side margin_bot1 margin_top">
							<shiro:guest>
								<h4 class="fontwei">188</h4>
							</shiro:guest>
							<shiro:user>  
								<h4 class="fontwei">${like_university_list.size()}</h4>
							</shiro:user>
							<div class="text-muted">关注院校 </div>
						</div>
						<div class="text-center pull-left padding-side margin_bot1 margin_top">
							<shiro:guest>
								<h4 class="fontwei">188</h4>
							</shiro:guest>
							<shiro:user>  
								<h4 class="fontwei">${like_specialty_list.size()}</h4>
							</shiro:user>							
							<div class="text-muted">关注专业</div>
						</div>
						<div class="text-center pull-left padding-side margin_bot1 margin_top">
							<shiro:guest>
								<h4 class="fontwei">188</h4>
							</shiro:guest>
							<shiro:user>  
								<h4 class="fontwei">${like_voaction_list.size()}</h4>
							</shiro:user>							
							<div class="text-muted">关注职业</div>
						</div>
						<div class="text-center pull-left padding-side margin_bot1 margin_top">
							<h4 class="fontwei">								
								<span class="glyphicon glyphicon-comment"></span>								
								<script type="text/javascript">
									//打开任务列表
									function open_task(){
										layer.open({
											type: 1,
											area: ['800px', '500px'],
											fix: true, //是否随跟页面滚动
											maxmin: false,
											shadeClose: true, //点击阴影开关
											shade: 0.4, //阴影透明度
											move: 'false', //默认：.layui-layer-title
											moveOut: false, //是否允许拖拽到窗口外
											title: false,
											content: $('#task'),
											scrollbar: true
										});
									}	
									
									//点击操作任务
									function fulfil_task(e){	
										var taskId = $(e).attr("name");
										var report = '${whether_done}';
										if(report == 1 ){
											layer.confirm('您已做完选科指导，是否上传测评报告结果？', {
												  btn: ['是', '否'] //可以无限个按钮												  
												}, function(index, layero){													
													console.log(taskId);
													 $.ajax({
														url:"${pageContext.request.contextPath}/user/hqt_task_add.do",
														data:"taskId=" + taskId,
														type:"POST",
														dataType:"json",
														success:function(obj){
															if(obj.state == 1){
																layer.msg(obj.message,{icon:1,time:1000});
															}else{
																layer.msg(obj.message,{icon:2,time:1000});
															}
															
														}
													});
													layer.close(index);												  
												}, function(index){
												  //按钮【按钮二】的回调
												  location.href = "${pageContext.request.contextPath}/xk/xgk_guide_select.do?taskId=" + taskId;
												});
										}else{
											
										}
										
									}
								</script>
								
								<div class="margin_top" id="task" style="display: none;">
									<table class="table table-hover table-border margin_top" cellspacing="0" cellpadding="0"> 
										<tr> 
											<th width="105">序号</th> 
											<th width="105">时间</th> 
											<th width="181">任务名字</th> 
											<th width="112">任务内容</th>
											<th width="112">详情状态</th>
											<th width="112">结果</th>
											<th width="112">操作</th>
										</tr>
										<c:if test="${hqt_user == 0}">
											<c:forEach items="${task_list}" var="item" varStatus="vs">
												<tr>
													<td>${vs.count}</td> 
													<td><fmt:formatDate value="${item.creationTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td> 
													<td>${item.taskName}</td> 
													<td>${item.taskContent}</td> 
													<c:if test="${item.status == 0}">
														<c:if test="${item.dStatus == 0}">
															<td>${item.dResult}</td>
															<td>未开始</td>
															<td><a name="${item.taskId}" onclick="fulfil_task(this)">去完成</a></td>
														</c:if>
														<c:if test="${item.dStatus == 1}">
															<td>${item.dResult}</td>
															<td>进行中</td>
															<td><a name="${item.taskId}" onclick="fulfil_task(this)">去完成</a></td>
														</c:if>
														<c:if test="${item.dStatus == 2}">
															<td>${item.dResult}</td>
															<td>已结束</td>
															<td><a name="${item.taskId}"></a></td>
														</c:if>													
													</c:if>
													<c:if test="${item.status == 1}">
														<td>${item.dResult}</td>
														<td>已结束</td>
														<td><a name="${item.taskId}"></a></td>
													</c:if>
												</tr>
											</c:forEach>
										</c:if>										
									</table> 
								</div>
							</h4>
							<shiro:hasPermission name="grzx_rw:query"> 
								<div class="text-muted" >
									<%-- <c:if test="${hqt_user == 0}"> --%>
										<a href="javascript:;" onclick="open_task()">我的任务
											<span class="layui-badge">
												<c:if test="${task_count != null}">
													${task_count}
												</c:if>
												<c:if test="${task_count == null}">
													0
												</c:if>
											</span>
										</a>
									<%-- </c:if>
									<c:if test="${hqt_user == 1}">
										<a href="javascript:;">我的任务<span class="layui-badge-dot"></span></a>
									</c:if> --%>
								</div>
							</shiro:hasPermission> 							
						</div>
					</div>
				</div>
			</div>
		</div>
		<main class="container">
			<div class="flex_jc_sb border_major margin_bot1 tab_box" style="height:722px">
				<ul class="center_nav padding-side">
					<shiro:hasPermission name="grzx_wdzl:query"> 
						<li><a href="javascript:void(0)"><span class="glyphicon glyphicon-align-left"></span> 我的资料</a></li>
					</shiro:hasPermission> 	
					<shiro:hasPermission name="grzx_wdcp:query"> 
						<li><a href="javascript:void(0)"><span class="glyphicon glyphicon-list-alt"></span> 我的测评</a></li>
					</shiro:hasPermission> 				
					<shiro:hasPermission name="grzx_sub:query"> 
						<!-- <li><a href="javascript:void(0)"><span class="glyphicon glyphicon-th-large"></span> 我的学科</a></li> -->
					</shiro:hasPermission> 
					<shiro:hasPermission name="grzx_wdxk:query"> 
					<li class="p_relative">
						<a href="javascript:void(0)"><span class="glyphicon glyphicon-check"></span> 
							我的选科<!-- <span class="badge pull-right text-danger">3</span> -->
						</a>
						<%--<ul class="sublist">
							<li class=""><a onclick="getPage('${pageContext.request.contextPath}/web/userCenter/noDone.jsp')" href="javascript:void(0)">待完成</a></li> 
							<li class="cur"><a onclick="getPage('${pageContext.request.contextPath}/web/userCenter/done.jsp')" href="javascript:void(0)">已完成</a></li> 
							<li class=""><a onclick="getPage('${pageContext.request.contextPath}/web/userCenter/myCourse.jsp')" href="javascript:void(0)">我的课表</a></li>  
						</ul>--%>
					</li>
					</shiro:hasPermission> 
					<shiro:hasPermission name="grzx_wdgz:query"> 
						<li><a href="javascript:void(0)"><span class="glyphicon glyphicon-record"></span> 我的关注 </a> </li>
					</shiro:hasPermission> 
					<shiro:hasPermission name="grzx_kstd:query"> 
						<li class="current"><a href="javascript:void(0)"><span class="glyphicon glyphicon-road"></span> 快速通道</a></li>
					</shiro:hasPermission> 					
				</ul>
				
				<div class="center_cont">
					<ul id="user_info">
						<li>
							<div class="user_material" id="user_info" >
								<fieldset id="">
									<c:if test="${hqt_user == 1}">
										<legend class="text-primary">用户信息</legend>
										<div class="form-group">
											<label for="username">用户名称：</label>
											<input id="username" name="username" type="text" placeholder="请输入用户名" value="${user.username}"/>
										</div>
										<%-- <div class="form-group">										
											<label for="password">用户密码：</label>
											<input id="password" name="password" onclick="updatepassword()" type="password" placeholder="" value="${user.password}"/>
										</div> --%>
										<div class="form-group">
											<label for="phone">手机号：</label>
											<input id="phone" name="phone" type="text" placeholder="请输入手机号"  value="${user.phone}" readonly="true"/>
											<shiro:hasPermission name="wdzl_xgsh:update"> 
												<label class="padding-side" for="phone"><a class="btn btn-default" onclick="open_pws_div()">修改手机号</a></label>
											</shiro:hasPermission> 																						
										</div>                       
										<div class="form-group">
											<label for="pcNumber">身份证号：</label>
											<input id="pcNumber1" name="pcNumber1" type="text"  placeholder="请输入身份证号" value="" onfocus="getFocus()" onblur="lostFocus()"  />										
											<input id="pcNumber" name="pcNumber" style="display:none" type="text" placeholder="请输入身份证号" value="" />										
										</div>
										<div class="form-group">
											<label for="studentId">学号：</label>
											<input id="studentId" name="studentId" type="text" placeholder="请输入学号" value="${user.studentId}"/>
										</div>
										<div class="form-group">
											<label for="school">就读学校：</label>
											<input id="school" name="school" type="text" placeholder="请输入就读学校" value="${user.school}"/>
										</div>
										<div class="form-group">
											<label for="schoolAddress">就读学校地址：</label>
											<input id="schoolAddress" name="schoolAddress" type="text" placeholder="请输入就读学校地址" value="${user.schoolAddress}"/>
										</div>
										<div class="form-group">
											<label for="studyProvinces">就读省份：</label>
											<select name="studyProvinces" id="studyProvinces"></select>
											<span class="padding-side glyphicon"></span>
										</div>
										<div class="form-group">
											<label for="educationalCircles">学届：</label>
											<select name="educationalCircles" id="educationalCircles">
												<option value="2021">2021届</option>
												<option value="2020">2020届</option>
												<option value="2019">2019届</option>
												<option value="2018">2018届</option>
												<option value="2017">2017届</option>
												<option value="2016">2016届</option>
												<option value="2015">2015届</option>
											</select>
											<span class="padding-side glyphicon"></span>
										</div>
										<div class="form-group">
											<label for="grade">年级：</label>
											<select name="grade" id="grade">
												<option value="高一">高一</option>
												<option value="高二">高二</option>
												<option value="高三">高三</option>
											</select>
										</div>
										<div class="form-group">
											<label for="className">班级：</label>
											<input id="className" name="className" type="text" placeholder="请输入班级" value="${user.className}"/>
										</div>
										<div class="form-group">
											<label>账号创建时间：</label>
											<span class=""><fmt:formatDate value="${user.creatTime}" pattern="yyyy-MM-dd hh:mm:ss"/></span>
										</div>
									</c:if>
									<c:if test="${hqt_user == 0}">
										<legend class="text-primary">用户信息</legend>
										<div class="form-group">
											<label for="username">用户名称：</label>
											<input id="username" name="username" type="text" placeholder="请输入用户名" value="${user.username}"/>
										</div>
										<%-- <div class="form-group">										
											<label for="password">用户密码：</label>
											<input id="password" name="password" onclick="updatepassword()" type="password" placeholder="" value="${user.password}"/>
										</div> --%>									
										<div class="form-group">
											<label for="phone">手机号：</label>
											<input id="phone" name="phone" type="text" placeholder="请输入手机号" value="${user.phone}" readonly="true" />
											<shiro:hasPermission name="wdzl_xgsh:update">
												<label class="padding-side"><a class="btn btn-default" onclick="open_pws_div()">修改手机号</a></label>
											</shiro:hasPermission>																		
										</div>
										<div class="form-group">
											<label for="pcNumber">身份证号：</label>
											<input id="pcNumber1" name="pcNumber1" type="text"  placeholder="请输入身份证号" value="" onfocus="getFocus()" onblur="lostFocus()"  />										
											<input id="pcNumber" name="pcNumber" style="display:none" type="text" placeholder="请输入身份证号" value="" />										
										</div>
										<div class="form-group">
											<label for="studentId">学号：</label>
											<input id="studentId" name="studentId" type="text" placeholder="请输入学号" value="${user.studentId}" readonly="true"/>
										</div>
										<div class="form-group">
											<label for="school">就读学校：</label>
											<input id="school" name="school" type="text" placeholder="请输入就读学校" value="${user.school}" readonly="true"/>
										</div>
										<div class="form-group">
											<label for="schoolAddress">就读学校地址：</label>
											<input id="schoolAddress" name="schoolAddress" type="text" placeholder="请输入就读学校地址" value="${user.schoolAddress}" readonly="true"/>
										</div>
										<div class="form-group">
											<label for="studyProvinces">就读省份：</label>
											<select name="studyProvinces" id="studyProvinces" readonly="true" disabled="disabled"></select>
											<span class="padding-side glyphicon"></span>
										</div>
										<div class="form-group">
											<label for="educationalCircles">学届：</label>
											<select name="educationalCircles" id="educationalCircles" disabled="disabled">
												<option value="2021">2021届</option>
												<option value="2020">2020届</option>
												<option value="2019">2019届</option>
												<option value="2018">2018届</option>
												<option value="2017">2017届</option>
												<option value="2016">2016届</option>
												<option value="2015">2015届</option>
											</select>
											<span class="padding-side glyphicon"></span>
										</div>
										<div class="form-group">
											<label for="grade">年级：</label>
											<select name="grade" id="grade" disabled="disabled">
												<option value="高一">高一</option>
												<option value="高二">高二</option>
												<option value="高三">高三</option>
											</select>
										</div>
										<div class="form-group">
											<label for="className">班级：</label>
											<input id="className" name="className" type="text" placeholder="请输入班级" value="${user.className}" readonly="true"/>
										</div>
										<div class="form-group">
											<label>账号创建时间：</label>
											<span class=""><fmt:formatDate value="${user.creatTime}" pattern="yyyy-MM-dd hh:mm:ss"/></span>
										</div>
									</c:if>
								</fieldset>
								<shiro:hasPermission name="wdzl_xgxx:update"> 								
									<p class="text-center margin_top"><input class="btn btn-primary" type="button" value="保存" onclick="update()"/></p>
								</shiro:hasPermission> 
							</div>
							<div id="update_pwsd" style="display: none;">
								<fieldset id="">
										<legend class="text-primary margin0" style="padding:1em;padding-bottom:.4em;">修改手机号</legend>									
										<div class="form-group margin_top">
											<label for="new_phone">新手机号：</label>
											<input id="new_phone" name="new_phone" type="text" placeholder="请输入手机号"/>
											<label class="padding-side"><a id="verify_phone" class="get_verify btn btn-default" onclick="sendMobileMessage()">获取手机验证码</a></label>											
										</div>
										<div class="form-group">
											<label for="verify_code">验证码：</label>
											<input id="verify_code" name="verify_code" type="text" placeholder="请输入验证码"/>
										</div>
										<p class="text-center margin_top"><input class="btn btn-primary" type="button" value="修改" onclick="updatephone()"/></p>
								</fieldset>
							</div>
						</li>
					</ul>
					
					<!-- 成绩分析  -->
					<ul id="user_evaluation">
						<shiro:hasPermission name="wdcp_cjfx:query"> 						
							<li style="border-bottom: 1px solid #ddd;">
								<c:if test="${CJFX != null}">
									<div class="" style="display: flex;justify-content: space-between;align-items:center;">
										<a class="text-mute" >成绩分析
											<span class="glyphicon glyphicon-ok-sign text-success"></span>&nbsp;&nbsp;&nbsp;&nbsp;
										</a>
										<a>测评时间：<fmt:formatDate value="${CJFX.evaluationTime}" pattern="yyyy-MM-dd hh:mm:ss"/><a class="text-info" href="${pageContext.request.contextPath}/sub/xgk_subject_score.do?look=CJFX">查看报告<span class="glyphicon glyphicon-chevron-right"></span></a></a>
									</div>	
								</c:if>
								
								<c:if test="${CJFX == null}">
									<div class="" style="display: flex;justify-content: space-between;align-items:center;">
										<a class="text-mute" >成绩分析
											<span class="glyphicon glyphicon-remove"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										</a>
										<a>您还未进行成绩分析测评,是否去测评？<a href="${pageContext.request.contextPath}/sub/xgk_subject_score.do?test=CJFX">测评<span class="glyphicon glyphicon-chevron-right"></span></a></a>
									</div>	
								</c:if>
							</li>
						</shiro:hasPermission>			
						<!-- 潜能分析  -->
						<shiro:hasPermission name="wdcp_qnfx:query"> 
							<li style=" border-bottom: 1px solid #ddd;" >							
								<c:if test="${QNFX != null}">
									<div class="" style="display: flex;justify-content: space-between;align-items:center;">
										<!-- 跳转潜能分析测评页面  -->
										<a class="text-mute" >潜能分析
											<span class="glyphicon glyphicon-ok-sign text-success"></span>&nbsp;&nbsp;&nbsp;&nbsp;
										</a>
										<a>测评时间：<fmt:formatDate value="${QNFX.evaluationTime}" pattern="yyyy-MM-dd hh:mm:ss"/><a class="text-info" href="${pageContext.request.contextPath}/sub/xgk_potential_report.do">查看报告<span class="glyphicon glyphicon-chevron-right"></span></a></a>
									</div>	
								</c:if>
								<c:if test="${QNFX == null}">
									<div class="" style="display: flex;justify-content: space-between;align-items:center;">
										<a class="text-mute" >潜能分析
											<span class="glyphicon glyphicon-remove"></span>
										</a>
										<a>您还未进行潜能测评,是否去测评？<a href="${pageContext.request.contextPath}/sub/xgk_subject_score.do?test=QNFX">测评<span class="glyphicon glyphicon-chevron-right"></span></a></a>
									</div>	
								</c:if>
							</li>
						</shiro:hasPermission> 
						<!-- MBTI -->
						<shiro:hasPermission name="wdcp_mbti:query"> 						
							<li style="border-bottom: 1px solid #ddd;">
								<c:if test="${MBTI != null}">
									<div class="" style="display: flex;justify-content: space-between;align-items:center;">
										<a class="text-mute" >MBTI测评 
											<span class="glyphicon glyphicon-ok-sign text-success"></span>&nbsp;&nbsp;
										</a>
										<a>测评时间：<fmt:formatDate value="${MBTI.evaluationTime}" pattern="yyyy-MM-dd hh:mm:ss"/><a class="text-info" href="${pageContext.request.contextPath}/cp/xgk_user_report.do?cpResult=${MBTI.evaluationName}">查看报告<span class="glyphicon glyphicon-chevron-right"></span></a></a>
									</div>	
								</c:if>
								<c:if test="${MBTI == null}">
									<div class="" style="display: flex;justify-content: space-between;align-items:center;">
										<a class="text-mute" >MBTI测评
											<span class="glyphicon glyphicon-remove"></span>
										</a>
										<a>您还未进行MBTI测评,是否去测评？<a href="${pageContext.request.contextPath}/cp/xgk_answer_mbti.do">测评<span class="glyphicon glyphicon-chevron-right"></span></a></a>
									</div>	
								</c:if>
							</li>
						</shiro:hasPermission> 
						<!-- 霍兰德  -->
						<shiro:hasPermission name="wdcp_hld:query"> 						
							<li style="border-bottom: 1px solid #ddd;">
								<c:if test="${霍兰德  != null}">
									<div class="" style="display: flex;justify-content: space-between;align-items:center;">
										<!-- 跳转潜能分析测评页面  -->
										<a class="text-mute" >霍兰德测评
											<span class="glyphicon glyphicon-ok-sign text-success"></span>
										</a>
										<a>测评时间：<fmt:formatDate value="${霍兰德.evaluationTime}" pattern="yyyy-MM-dd hh:mm:ss"/><a class="text-info" href="${pageContext.request.contextPath}/cp/xgk_user_report.do?cpResult=${霍兰德.evaluationName}">查看报告<span class="glyphicon glyphicon-chevron-right"></span></a></a>
									</div>	
								</c:if>
								<c:if test="${霍兰德  == null}">
									<div class="" style="display: flex;justify-content: space-between;align-items:center;">
										<a class="text-mute" >霍兰德测评
											<span class="glyphicon glyphicon-remove"></span>
										</a>
										<a>您还未进行霍兰德测评,是否去测评？<a href="${pageContext.request.contextPath}/cp/xgk_answer_hld.do">测评<span class="glyphicon glyphicon-chevron-right"></span></a></a>
									</div>	
								</c:if>
							</li>
						</shiro:hasPermission> 
					</ul>
					<!-- <ul>
						<li>是的噶山豆根爱上公司的111</li>
					</ul> -->
					<ul>
						<li class="myXuanke">
							<div class="" onload="showModel()">
								<table class="table table-responsive">
									<tr><th>起止时间</th><th>状态</th><th>选课结果</th><th>操作</th></tr>
									<tr>
										<td><fmt:formatDate value="${resule_report.startTime}" pattern="yyyy-MM-dd hh:mm:ss"/> - <fmt:formatDate value="${resule_report.endTime}" pattern="yyyy-MM-dd hh:mm:ss"/></td>
										<c:if test="${resule_report.status != 1}">
											<td>待完成</td>
										</c:if>
										<c:if test="${resule_report.status == 1}">
											<td>已完成</td>
										</c:if>
										<c:if test="${resule_report.status == 1}">
											<td>${resule_report.result}</td>
										</c:if>
										<c:if test="${resule_report.status != 1}">
											<td>您未完成选科测评</td>
										</c:if>
										<c:if test="${resule_report.status == 1}">
											<td><a class="text-info" href="${pageContext.request.contextPath}/xk//xgk_pick_report.do?province=${resule_report.province}&specialtyId=${resule_report.specialtyId}">下载</a></td>
										</c:if>
										<c:if test="${resule_report.status != 1}">
											<td><a href="${pageContext.request.contextPath}/xk/xgk_guide_select.do" >进行选科</a></td>
										</c:if>
									</tr>
								</table>
							</div>
							<%-- <div class="" onload="showModel()">
								<div class="border-primary">
									<div class="text-center fontwei"><div class="bg-primary fontwei" style="font-size: 1.6em;padding: .6em 0;">待完成</div></div>
									<div class="">
										<div class="text-center margin_top margin_bot fontwei text-danger">管理员发布了一次选科排课的任务，快去完成吧！</div>
										<p class="text-center"><a class="btn btn-primary" onclick="getPage('${pageContext.request.contextPath}/web/userCenter/el_result.jsp')" href="javascript:void(0)">参与选科排课</a></p>
									</div>
								</div>
							</div>  --%>
						</li>
					</ul>
					<ul>
						<li>
							<div class="focusStore">
								<div class="tab_list">
									<ul class="tab_head clearfix">
										<shiro:hasPermission name="wdgz_yxsc:query"> 
											<li class="cur">院校收藏</li>
										</shiro:hasPermission> 
										<shiro:hasPermission name="wdgz_zysc:query"> 
											<li>专业收藏</li>
										</shiro:hasPermission> 
										<shiro:hasPermission name="wdgz_zysc:query"> 
											<li>职业收藏</li>
										</shiro:hasPermission> 										
									</ul>
									
									<div class="tab_body">									
										<div class="cur">
											<shiro:hasPermission name="wdgz_yxsc:query"> 
												<table class="table table-hover table-striped margin_top" cellspacing="" cellpadding="">
													<thead>
														<tr><th>学校</th><th>院校代码</th><th>院校名称</th><th colspan="2">操作</th></tr>
													</thead>
													
													<tbody id="search_result1">
														<c:forEach items="${like_university_list}" var="item">
															<tr>
																<td><a href="${pageContext.request.contextPath}/school/xgk_university_info.do?universityCode=${item.eCode}"><img src="${item.eLogo}" class="img-responsive"/></a></td>
																<td>${item.eCode}</td><td>${item.eName}</td>
																<td><a href="javascript:;" onclick="unlove(this)" id="${item.eId}"><span class="icon Hui-iconfont text-danger">&#xe648;</span></a></td>
																<td><a id="${item.eId}" href="${pageContext.request.contextPath}/school/xgk_university_info.do?universityCode=${item.eCode}"><span class="icon Hui-iconfont text-info">&#xe725;</span></a></td>
															</tr>
														</c:forEach>														
														<%-- <tr>
															<td><a href=""><img src="${pageContext.request.contextPath}/img/xgk/sch_logo.png" class="img-responsive"/></a></td>
															<td>101001</td><td>立学道大学</td>
															<td><a href="javascript:;" onclick="unlove(this)"><span class="icon Hui-iconfont text-danger">&#xe648;</span></a></td>
															<td><a href="javascript:;" onclick="javascript:;"><span class="icon Hui-iconfont text-info">&#xe725;</span></a></td>
														</tr> --%> 
													</tbody>												
												</table>
												<div class="margin_bot margin_top bg-white p-10 m-t-10 t-a-c padding-side2" style="box-shadow: 0px 0px 0px #bdb8b8;">
													<div class="holder1" style="text-align: center;"></div>
												</div>
											</shiro:hasPermission> 
										</div>
										
										<div class="">
											<shiro:hasPermission name="wdgz_zysc:query"> 
											<table class="table table-hover table-striped margin_top" cellspacing="" cellpadding="">
												<thead>
													<tr><th>序号</th><th>专业代码</th><th>专业名称</th><th colspan="2">操作</th></tr>
												</thead>
												<tbody id="search_result2">
													<c:forEach items="${like_specialty_list}" var="item" varStatus="vs">
													<tr>
														<td><a href="javascript:;"><img src="" class="img-responsive"/>${vs.count}</a></td>
														<td>${item.eCode}</td><td>${item.eName}</td>
														<td><a href="javascript:;" onclick="unlove(this)" id="${item.eId}"><span class="icon Hui-iconfont text-danger">&#xe648;</span></a></td>
														<td><a id="${item.eId}" href="${pageContext.request.contextPath}/school/xgk_specialty_detail.do?specialtyId=${item.eCode}"><span class="icon Hui-iconfont text-info">&#xe725;</span></a></td>
														<%-- <td>
															<shiro:hasPermission name="wdgz_qxsc:delete"> 
																<a id="${item.eId}"  href="javascript:;">取消关注</a>
															</shiro:hasPermission> 															
														</td> --%>
													</tr>
													</c:forEach>
													
												</tbody>
											</table>
											<div class="margin_bot margin_top bg-white p-10 m-t-10 t-a-c padding-side2" style="box-shadow: 0px 0px 0px #bdb8b8;">
												<div class="holder2" style="text-align: center;"></div>
											</div>
											</shiro:hasPermission> 
										</div>
										<div class="">
											<shiro:hasPermission name="wdgz_zysc:query"> 
											<table class="table table-hover table-striped margin_top" cellspacing="" cellpadding="">
												<thead>
													<tr><th>序号</th><th>职业代码</th><th>职业名称</th><th colspan="2">操作</th></tr>
												</thead>
												<tbody id=search_result3>
													<c:forEach items="${like_voaction_list}" var="item" varStatus="vs">
														<tr>
														<td><a href="javascript:;"><img src="" class="img-responsive"/>${vs.count}</a></td>
														<td>${item.eCode}</td><td>${item.eName}</td>
														<td><a href="javascript:;" onclick="unlove(this)" id="${item.eId}"><span class="icon Hui-iconfont text-danger">&#xe648;</span></a></td>
														<td><a id="${item.eId}" href="${pageContext.request.contextPath}/voc/xgk_voc_detail.do?vocationId=${item.eCode}"><span class="icon Hui-iconfont text-info">&#xe725;</span></a></td>
														<%-- <td>
															<shiro:hasPermission name="wdgz_qxsc:delete"> 
																<a id="${item.eId}"  href="javascript:;" onclick="unlove(this)">取消关注
															</shiro:hasPermission> 
															</a>
														</td> --%>
														</tr>
													</c:forEach>													
												</tbody>
											</table>
											<div class="margin_bot margin_top bg-white p-10 m-t-10 t-a-c padding-side2" style="box-shadow: 0px 0px 0px #bdb8b8;">
												<div class="holder3" style="text-align: center;"></div>
											</div>
											</shiro:hasPermission> 
										</div>
									</div>
								</div>
							</div>
						</li>
					</ul>
					
									
					<ul class="padding-side current">
						<shiro:hasPermission name="kstd_zsj:query"> 
							<li>
								<div class="">
									<h4 class="fontwei text-primary">找数据</h4>
									<ul class="row_list clearfix">
										<shiro:hasPermission name="zsj_zdx:query"> 
											<li><a href="${pageContext.request.contextPath}/school/xgk_school_search.do"><span class="glyphicon glyphicon-search"></span> 找大学</a></li>
										</shiro:hasPermission> 
										<shiro:hasPermission name="zsj_czy:query"> 
											<li><a href="${pageContext.request.contextPath}/school/xgk_specialty_search.do"><span class="glyphicon glyphicon-list"></span> 查专业</a></li>
										</shiro:hasPermission> 
										<shiro:hasPermission name="zsj_kzy:query"> 
											<li><a href="${pageContext.request.contextPath}/voc/xgk_job_blank.do"><span class="glyphicon glyphicon-briefcase"></span> 看职业</a></li>
										</shiro:hasPermission> 
										<shiro:hasPermission name="zsj_tqp:query"> 
											<li><a href="javascript:;"><span class="glyphicon glyphicon-log-in"></span> 提前批</a></li>
										</shiro:hasPermission> 
										<shiro:hasPermission name="zsj_fsx:query"> 
											<li><a href="javascript:;"><span class="glyphicon glyphicon-indent-left"></span> 分数线</a></li>
										</shiro:hasPermission> 
										<shiro:hasPermission name="zsj_lnbk:query"> 
											<li><a href="javascript:;"><span class="glyphicon glyphicon-eye-open"></span> 历年报考</a></li>
										</shiro:hasPermission> 										
									</ul>
								</div>
							</li>
						</shiro:hasPermission> 
						<shiro:hasPermission name="kstd_cp:query"> 
							<li>
								<div class="">
									<h4 class="fontwei text-primary">测评</h4>
									<ul class="row_list clearfix">
										<shiro:hasPermission name="cp_cjfx:query"> 
											<li><a href="${pageContext.request.contextPath}/sub/xgk_subject_score.do?test=CJFX"><span class="glyphicon glyphicon-align-right"></span> 成绩分析</a></li>
										</shiro:hasPermission> 
										<shiro:hasPermission name="cp_qncp:query"> 
											<li><a href="${pageContext.request.contextPath}/sub/xgk_subject_score.do?test=QNFX"><span class="glyphicon glyphicon-road"></span> 潜能测评</a></li>							
										</shiro:hasPermission> 
										<shiro:hasPermission name="cp_mbti:query"> 
											<li><a href="${pageContext.request.contextPath}/cp/xgk_answer_hld.do"><span class="glyphicon glyphicon-tasks"></span> 霍兰德测评</a></li>
										</shiro:hasPermission> 
										<shiro:hasPermission name="cp_hld:query"> 
											<li><a href="${pageContext.request.contextPath}/cp/xgk_answer_mbti.do"><span class="glyphicon glyphicon-cloud"></span> MBTI测评</a></li>
										</shiro:hasPermission> 										
									</ul>
								</div>
							</li>
						</shiro:hasPermission> 
						<shiro:hasPermission name="grzx_zytb:query"> 						
							<li>
								<div class="">
									<h4 class="fontwei text-primary">志愿填报</h4>
									<ul class="row_list clearfix">
										<shiro:hasPermission name="zytb_yxyx:query"> 
											<li><a href=""><span class="glyphicon glyphicon-globe"></span> 院校优先</a></li>
										</shiro:hasPermission> 
										<shiro:hasPermission name="zytb_zyyx:query"> 
											<li><a href=""><span class="glyphicon glyphicon-open"></span> 专业优先</a></li>
										</shiro:hasPermission> 									
										<shiro:hasPermission name="zytb_zzcx:query"> 
											<li><a href=""><span class="glyphicon glyphicon-zoom-in"></span> 自主择校</a></li>
										</shiro:hasPermission> 
										<shiro:hasPermission name="zytb_yjpp:query"> 										
											<li><a href=""><span class="glyphicon glyphicon-screenshot"></span> 一键匹配</a></li>
										</shiro:hasPermission> 
									</ul>
								</div>
							</li>
						</shiro:hasPermission> 
						<shiro:hasPermission name="kstd_kc:query"> 						
							<li>
								<div class="">
									<h4 class="fontwei text-primary">课程</h4>
									<ul class="row_list clearfix">
										<shiro:hasPermission name="kc_zskt:qury"> 
											<li><a href="${pageContext.request.contextPath}/online/xgk_online_index.do"><span class="glyphicon glyphicon-film"></span> 知识课堂</a></li>
										</shiro:hasPermission> 
									</ul>
								</div>
							</li>
						</shiro:hasPermission> 
					</ul>
				</div>
			</div>
		</main>
	<script type="text/javascript">
		//身份证号遮掩
		var pcNumber = '${user.pcNumber}';
		//截取字段
		var capture = pcNumber.substring(6,15);
		var pcNumber1 = pcNumber.replace(capture,"*********");
		$("#pcNumber").val(pcNumber);
		$("#pcNumber1").val(pcNumber1);
		//获得焦点事件
		function getFocus(){
			$("#pcNumber1").val($("#pcNumber").val());
		}
		//失去焦点事件
		function lostFocus(){
			var pcNumber = $("#pcNumber1").val();
			$("#pcNumber").val(pcNumber);
			var capture = pcNumber.substring(6,15);
			var pcNumber1 = pcNumber.replace(capture,"*********");
			$("#pcNumber1").val(pcNumber1);
		}
		
			/* function updatepassword(){
				var demoInput = document.getElementById("password");
				demoInput.type = "text";
			}
			$("#password").blur(function(){
				var demoInput = document.getElementById("password");
				demoInput.type = "password";
			}); */	
		 function unlove(obj){	   
   			if($(obj).attr("id") != ''){
    			$.ajax({
    				url: "${pageContext.request.contextPath}/ens/hqt_delete_enshrine.do",
    				data: "eId=" + $(obj).attr("id"),
    				type: "POST",
    				dataType:"json",
    				success:function(obj){
    					if(obj.state == 0){
    						console.log(obj.message);
    						layer.msg(obj.message,{icon:2,time:1000});
    					}else{
    						console.log(obj.message);
    						layer.msg(obj.message,{icon:6,time:1000});
    					}
    				}	
    			});
   			}
	    	$(obj).parents("tr").remove();
		} 	
		 
		 //院校分页
		 $("div.holder1").jPages({
				containerID : "search_result1",
				perPage     : 5,
				first       : "首页",
				previous    : "上一页",
				next        : "下一页",
				last        : "尾页"
			});
		 
		//专业分页
		 $("div.holder2").jPages({
				containerID : "search_result2",
				perPage     : 5,
				first       : "首页",
				previous    : "上一页",
				next        : "下一页",
				last        : "尾页"
			});
		//职业分页
		 $("div.holder3").jPages({
				containerID : "search_result3",
				perPage     : 5,
				first       : "首页",
				previous    : "上一页",
				next        : "下一页",
				last        : "尾页"
			});

			
					//修改手机号
					function updatephone(){
						var phone = $("#new_phone").val();
						var verifyCode = $("#verify_code").val();
						if(phone == ""){
							layer.msg('手机号不能为空',{icon:2,time:1000});
							return;
						}
						$.ajax({
							url: "${pageContext.request.contextPath}/user/hqt_update_phone.do",
							data:"phone=" + phone + "&verifyCode=" + verifyCode,
							type:"POST",
							dataType:"json",
							success:function(obj){
								if(obj.state == 0){
									layer.msg(obj.message,{icon:2,time:1000});
								}else{
									layer.msg(obj.message,{icon:6,time:1000});
									window.setTimeout(function() {window.location.reload(); },1000)	
								}
							}	
						});
					}
					
					var countdown=60; //60秒发送一次
					function settime(obj) { //发送验证码倒计时
					    if (countdown == 0) { 
					    	obj.attr('disabled',false); 
					    	obj.removeAttr("style","pointer-events");
						    obj.html("获取手机验证码");
						    countdown = 60; 
						    return;
						} else { 
						    obj.attr('disabled',true);
						    obj.css("pointer-events","none"); 
						    obj.html("重新获取验证码(" + countdown + ")");
						    countdown--; 
						} 
						setTimeout(function() { 
						    settime(obj) }
						    ,1000) 
						}
					function sendMobileMessage(){
						var phone = $("#new_phone").val();	
						console.log(phone);
						var obj = $("#verify_phone");
						var reg = /^[1][3,4,5,7,8][0-9]{9}$/;
						if(!reg.test(phone)) {
							layer.msg("请输入正确格式的手机号", {icon: 3, time: 1000});
							return;
						}
						settime(obj);
						$.ajax({
							url: "${pageContext.request.contextPath}/user/hqt_photoyzm.do",
							data:"phone=" + phone,
							type:"POST",
							dataType:"json",
							success:function(obj){
								if(obj.state == 0){
									layer.msg(obj.message,{icon:2,time:1000});
								}else{
									layer.msg(obj.message,{icon:6,time:1000});
								}
							}	
						});
					}
					
					function open_pws_div(){
						layer.open({
							type: 1,
							area: ['800px', '500px'],
							fix: true, //是否随跟页面滚动
							maxmin: false,
							shadeClose: true, //点击阴影开关
							shade: 0.4, //阴影透明度
							move: 'false', //默认：.layui-layer-title
							moveOut: false, //是否允许拖拽到窗口外
							title: false,
							content: $('#update_pwsd'),
							scrollbar: true
						});
					}	
					
						function update(){
							var data = "username=" + $("#username").val() + //用户名
							         //  "&password=" + $("#password").val() + //用户密码
							   		 "&pcNumber=" + $("#pcNumber").val() + //身份证号
							   		 "&studyProvinces=" + $("#studyProvinces").val() + //就读省份 
							   		 "&school=" + $("#school").val()  + //学校
							  		 "&schoolAddress=" + $("#schoolAddress").val() + //学校地址
							   		 "&educationalCircles=" + $("#educationalCircles option:selected").val() + //学届 
							   		 "&grade=" + $("#grade").val() + //年级
							   	 	 "&className=" + $("#className").val() + //班级
							   		 "&studentId=" + $("#studentId").val(); //学号
							   console.log(data);
							   $.ajax({
									type: "POST",
									url : "${pageContext.request.contextPath}/user/hqt_update_user.do",
									data: data,
									datatype:'json',
									success:function(obj){
										if (obj.state == 0) {
											layer.alert(obj.message,{icon:2,time:2000});
										}else{											
											layer.alert(obj.message,{icon:1,time:2000});
											window.setTimeout(function() {window.location.reload(); },1000)																						
										}
									}
								});
						}
					
		</script>
		<script type="text/javascript">
			var options='';
			for (var i=0;i<province.length;i++) {		
				if(province[i].name.search('${province}') != -1){
					options+='<option value="'+province[i].name+'" selected="selected">'+province[i].name+'</option>'
				}else{
					options+='<option value="'+province[i].name+'">'+province[i].name+'</option>'
				}		
			}
			$("#studyProvinces").html(options);
			$("#studyProvinces").change(function() {
				console.log($(this).val())
			})
			$(function(){
				tab_list($('.center_nav'),'click','.tab_box');
				
				/**
				 * tab选项卡
				 * @param {Object} el
				 * @param {Object} event
				 */
				function tab_list(el,event,container){
					el.find('li').on(event, function(){
						$(this).parent().find("li").removeClass("current");
						$(this).addClass("current");
						var index = $(this).index();
						$(this).parents(container).find(".center_cont").children().removeClass("current");
						$(this).parents(container).find(".center_cont").children().eq(index).addClass("current");
					})
				}

			})
			
			function getPage(imgUrl) {
				var src = imgUrl;
				$.get(src, function(data) {
					$(".myXuanke").html(data);
				})
			}
			
			//弹框
			function modelshow(title,content){
				layer.open({
					type: 1,
					area: ['500px','400px'],
					fix: true, //是否跟随页面滚动
					maxmin: true,
					shadeClose: true,//点击阴影开关
					shade:0.4,//阴影透明度
					move: 'false',//默认：.layui-layer-title
					moveOut: false,//是否允许拖拽到窗口外
					title: title,
					content:content,
					scrollbar: true
				});
			}
		</script>

		<!-- 页面底部-->
		<c:import url="../public/side_right.jsp"></c:import>	
		<!-- 页面底部-->
		<c:import url="footer.jsp"></c:import>
	</body>

</html>