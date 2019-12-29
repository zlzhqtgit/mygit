<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>贵州好前途教育科技有限公司</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/js/layui-v2.5.5/layui/css/layui.css"  media="all">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/index.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/sch_search.css"/>
		<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="${pageContext.request.contextPath}/js/layer/2.4/layer.js"></script>
		<script src="${pageContext.request.contextPath}/js/layui-v2.5.5/layui/layui.js" charset="utf-8"></script>
		<script src="${pageContext.request.contextPath}/js/common.js"></script>
	</head>

	<body>
		<!-- 页面头部-->
		<c:import url="header.jsp"></c:import>
		<div class="p_relative">
			<div class=""><img src="${pageContext.request.contextPath}/img/xgk/bannerBg.png"/></div>
			<div class="user_info">
				<div class="text-center cenUser_head" style="width: 6em;">
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
							<h4 class="fontwei">88</h4>
							<div class="text-muted">关注院校 </div>
						</div>
						<div class="text-center pull-left padding-side margin_bot1 margin_top">
							<h4 class="fontwei">178</h4>
							<div class="text-muted">关注的课程</div>
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
									fulfil_task(){
										
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
														<td><a>去完成</a></td>
													</c:if>
													<c:if test="${item.dStatus == 1}">
														<td>${item.dResult}</td>
														<td>进行中</td>
														<td><a>去完成</a></td>
													</c:if>
													<c:if test="${item.dStatus == 2}">
														<td>${item.dResult}</td>
														<td>已结束</td>
														<td><a>查看</a></td>
													</c:if>													
												</c:if>
												<c:if test="${item.status == 1}">
													<td>${item.dResult}</td>
													<td>已结束</td>
													<td><a>查看</a></td>
												</c:if>
												
												
												</tr>
											</c:forEach>
										</c:if>										
									</table> 
								</div>
							</h4>
							<div class="text-muted" >
								<c:if test="${hqt_user == 0}">
									<a href="javascript:;" onclick="open_task()">我的任务<span class="layui-badge">${task_cout}</span><!-- <span class="layui-badge-dot"></span> --></a>
								</c:if>
								<c:if test="${hqt_user == 1}">
									<a href="javascript:;">我的任务<span class="layui-badge-dot"></span></a>
								</c:if>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<main class="container">
			<div class="flex_jc_sb border_major margin_bot1 tab_box">
				<ul class="center_nav padding-side">
					<li><a href="javascript:void(0)"><span class="glyphicon glyphicon-align-left"></span> 我的资料</a></li>
					<li><a href="javascript:void(0)"><span class="glyphicon glyphicon-list-alt"></span> 我的测评</a></li>
					<li><a href="javascript:void(0)"><span class="glyphicon glyphicon-th-large"></span> 我的学科</a></li>
					<li class="p_relative">
						<a href="javascript:void(0)"><span class="glyphicon glyphicon-check"></span> 
							我的选科<!-- <span class="badge pull-right text-danger">3</span> -->
						</a>
						<ul class="sublist">
							<%-- <li class=""><a onclick="getPage('${pageContext.request.contextPath}/web/userCenter/noDone.jsp')" href="javascript:void(0)">待完成</a></li> 
							<li class="cur"><a onclick="getPage('${pageContext.request.contextPath}/web/userCenter/done.jsp')" href="javascript:void(0)">已完成</a></li> 
							<%-- <li class=""><a onclick="getPage('${pageContext.request.contextPath}/web/userCenter/myCourse.jsp')" href="javascript:void(0)">我的课表</a></li> --%>
						</ul>
					</li>
					<li><a href="javascript:void(0)"><span class="glyphicon glyphicon-record"></span> 我的关注 </a> </li>
					<li><liclass="current"><a href="javascript:void(0)"><span class="glyphicon glyphicon-road"></span> 快速通道</a></li>
				</ul>
				
				<div class="center_cont">
					<ul id="user_info">
						<li><span>用户ID: </span><span>${user.id}</span></li>
						<%-- <li><span>头像: </span><span>${user.headImg}</span></li> --%>
						<li><span>用户名称: </span><span>${user.username}</span></li>
						<li><span>手机号: </span><span>${user.phone}</span></li>
						<li><span>身份证号: </span><span>${user.pcNumber}</span></li>
						<li><span>学号: </span><span>${user.studentId}</span></li>
					  	<li><span>就读学校: </span><span>${user.school}</span></li>
					  	<li><span>就读学校地址: </span><span>${user.schoolAddress}</span></li>
					  	<li><span>就读省份: </span><span>${user.studyProvinces}</span></li>
					 	<li><span>学届: </span><span>${user.educationalCircles}</span></li>
					 	<li><span>年级: </span><span>${user.grade}</span></li>
						<li><span>班级: </span><span>${user.className}</span></li>
						<li><span>创建时间: </span><span><fmt:formatDate value="${user.creatTime}" pattern="yyyy-MM-dd hh:mm:ss"/></span></li>
					</ul>
					<!-- 成绩分析  -->
					<ul id="user_evaluation">
						<li style="border-bottom: 1px solid #ddd;">
							<c:if test="${CJFX != null}">
								<div class="" style="display: flex;justify-content: space-between;align-items:center;">
									<a class="text-mute" >成绩分析
										<span class="glyphicon glyphicon-ok-sign"></span>&nbsp;&nbsp;&nbsp;&nbsp;
									</a>
									<a>测评时间：<fmt:formatDate value="${CJFX.evaluationTime}" pattern="yyyy-MM-dd hh:mm:ss"/><a href="${pageContext.request.contextPath}/sub/xgk_subject_score.do?look=CJFX">查看报告<span class="glyphicon glyphicon-chevron-right"></span></a></a>
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
								
						<!-- 潜能分析  -->
						<li style="border-bottom: 1px solid #ddd;">
							<c:if test="${QNFX != null}">
								<div class="" style="display: flex;justify-content: space-between;align-items:center;">
									<!-- 跳转潜能分析测评页面  -->
									<a class="text-mute" >潜能分析
										<span class="glyphicon glyphicon-ok-sign"></span>&nbsp;&nbsp;&nbsp;&nbsp;
									</a>
									<a>测评时间：<fmt:formatDate value="${QNFX.evaluationTime}" pattern="yyyy-MM-dd hh:mm:ss"/><a href="${pageContext.request.contextPath}/sub/xgk_potential_report.do">查看报告<span class="glyphicon glyphicon-chevron-right"></span></a></a>
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
						
						<!-- MBTI -->
						<li style="border-bottom: 1px solid #ddd;">
							<c:if test="${MBTI != null}">
								<div class="" style="display: flex;justify-content: space-between;align-items:center;">
									<a class="text-mute" >MBTI测评 
										<span class="glyphicon glyphicon-ok-sign"></span>&nbsp;&nbsp;
									</a>
									<a>测评时间：<fmt:formatDate value="${MBTI.evaluationTime}" pattern="yyyy-MM-dd hh:mm:ss"/><a href="${pageContext.request.contextPath}/cp/xgk_user_report.do?cpResult=${MBTI.evaluationName}">查看报告<span class="glyphicon glyphicon-chevron-right"></span></a></a>
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
						
						<!-- 霍兰德  -->
						<li style="border-bottom: 1px solid #ddd;">
							<c:if test="${霍兰德  != null}">
								<div class="" style="display: flex;justify-content: space-between;align-items:center;">
									<!-- 跳转潜能分析测评页面  -->
									<a class="text-mute" >霍兰德测评
										<span class="glyphicon glyphicon-ok-sign"></span>
									</a>
									<a>测评时间：<fmt:formatDate value="${霍兰德.evaluationTime}" pattern="yyyy-MM-dd hh:mm:ss"/><a href="${pageContext.request.contextPath}/cp/xgk_user_report.do?cpResult=${霍兰德.evaluationName}">查看报告<span class="glyphicon glyphicon-chevron-right"></span></a></a>
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
					</ul>
					<ul>
						<li>是的噶山豆根爱上公司的111</li>
					</ul>
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
											<td><a href="javascript:;">下载</a></td>
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
							</div> --%>
						</li>
					</ul>
					<ul>
						<li>萨嘎的撒和大家和环境33333</li>
					</ul>
					<ul class="padding-side current">
						<li>
							<div class="">
								<h4 class="fontwei text-primary">找数据</h4>
								<ul class="row_list clearfix">
									<li><a href="${pageContext.request.contextPath}/school/xgk_school_search.do"><span class="glyphicon glyphicon-search"></span> 找大学</a></li>
									<li><a href="${pageContext.request.contextPath}/school/xgk_specialty_search.do"><span class="glyphicon glyphicon-list"></span> 查专业</a></li>
									<li><a href="${pageContext.request.contextPath}/voc/xgk_job_blank.do"><span class="glyphicon glyphicon-briefcase"></span> 看职业</a></li>
									<li><a href="javascript:;"><span class="glyphicon glyphicon-log-in"></span> 提前批</a></li>
									<li><a href="javascript:;"><span class="glyphicon glyphicon-indent-left"></span> 分数线</a></li>
									<li><a href="javascript:;"><span class="glyphicon glyphicon-eye-open"></span> 历年报考</a></li>
								</ul>
							</div>
						</li>
						<li>
							<div class="">
								<h4 class="fontwei text-primary">测评</h4>
								<ul class="row_list clearfix">
									<li><a href="${pageContext.request.contextPath}/sub/xgk_subject_score.do?test=CJFX"><span class="glyphicon glyphicon-align-right"></span> 成绩分析</a></li>
									<li><a href="${pageContext.request.contextPath}/sub/xgk_subject_score.do?test=QNFX"><span class="glyphicon glyphicon-road"></span> 潜能测评</a></li>
									<li><a href="${pageContext.request.contextPath}/cp/xgk_answer_hld.do"><span class="glyphicon glyphicon-tasks"></span> 霍兰德测评</a></li>
									<li><a href="${pageContext.request.contextPath}/cp/xgk_answer_mbti.do"><span class="glyphicon glyphicon-cloud"></span> MBTI测评</a></li>
								</ul>
							</div>
						</li>
						<li>
							<div class="">
								<h4 class="fontwei text-primary">志愿填报</h4>
								<ul class="row_list clearfix">
									<li><a href=""><span class="glyphicon glyphicon-globe"></span> 院校优先</a></li>
									<li><a href=""><span class="glyphicon glyphicon-open"></span> 专业优先</a></li>
									<li><a href=""><span class="glyphicon glyphicon-zoom-in"></span> 自主择校</a></li>
									<li><a href=""><span class="glyphicon glyphicon-screenshot"></span> 一件匹配</a></li>
								</ul>
							</div>
						</li>
						<li>
							<div class="">
								<h4 class="fontwei text-primary">课程</h4>
								<ul class="row_list clearfix">
									<li><a href=""><span class="glyphicon glyphicon-film"></span> 知识课堂</a></li>
								</ul>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</main>
		
		<script type="text/javascript">
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