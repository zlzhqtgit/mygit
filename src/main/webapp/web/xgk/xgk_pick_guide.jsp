<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<meta http-equiv="x-ua-compatible" content="ie=edge">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>贵州好前途教育科技有限公司</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/animate.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/index.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/sch_search.css"/>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/web/xgk/wow.min.js" type="text/javascript" charset="utf-8"></script>
	</head>

	<body>
		<c:import url="header.jsp"></c:import>

		<main class="container">
			<section class="row">
				<h2 class="text-primary fontwei">选科报告</h2>
				<div class="panel panel-default border-radius box-shadow">
					<div class="panel-body padding-side2">
						<div class="margin_top">
							<h3 class="text-muted fontwei">测评报告</h3>
							<div class="">请完成相关测评后，根据测评结果及各项评分为您选科的优势及劣势。</div>
							<div class="margin_top1" style="padding: 0 6em;height: 200px;">
								<div class="done_situation">
									<div class="p_relative step_wrap">
										<div class="doneStep bg-danger" style="border-top-left-radius: 1em; border-bottom-left-radius: 1em;"></div>
										<div class="s_pot bg-primary"></div>
										<div class="done_item wow swing">
											<div class="flex_Al_c yline_wrap p_relative">
												<div class="yline"></div>
											</div>
											<div class="flex_Al_c">
												<div class="circle bg-primary" style="display: flex;align-items: center;">
													<div class="">
														<p class="fontwei">成绩分析</p>
														<span class="glyphicon glyphicon-ok"></span>
													</div>
												</div>
											</div>
											<p class="text-center" style="display: none;"><a class="btn btn-primary" href="" style="margin: 0;">去测评</a></p>
										</div>
									</div>
									<div class="p_relative step_wrap">
										<div class="doneStep bg-info"></div>
										<div class="s_pot bg-warning"></div>
										<div class="done_item wow swing">
											<div class="flex_Al_c yline_wrap">
												<div class="yline"></div>
											</div>
											<div class="flex_Al_c">
												<div class="circle bg-warning" style="display: flex;align-items: center;">
													<div class="">
														<p class="fontwei">学科潜能</p>
														<span class="glyphicon glyphicon-ok"></span>
													</div>
												</div>
											</div>
											<p class="text-center" style="display: none;"><a class="btn btn-primary" href="" style="margin: 0;">去测评</a></p>
										</div>
									</div>
									<div class="p_relative step_wrap">
										<div class="doneStep bg-primary"></div>
										<div class="s_pot bg-danger"></div>
										<div class="done_item wow swing">
											<div class="flex_Al_c yline_wrap">
												<div class="yline"></div>
											</div>
											<div class="flex_Al_c">
												<div class="circle bg-danger" style="display: flex;align-items: center;">
													<div class="">
														<p class="fontwei">认知测评</p>
														<span class="glyphicon glyphicon-remove"></span>
													</div>
												</div>
											</div>
											<p class="text-center" style="display: none;"><a class="btn btn-primary" href="" style="margin: 0;">去测评</a></p>
										</div>
									</div>
									<div class="p_relative">
										<div class="doneStep bg-warning" style="border-top-right-radius: 1em; border-bottom-right-radius: 1em;"></div>
									</div>
								</div>
								<script type="text/javascript">
									new WOW().init(); 
									var wow = new WOW({  
									    boxClass: 'wow', //需要执行动画的class 
									    animateClass: 'animated',  //animate.css的class
									    offset: 0,  //距可视区域多少开始执行动画
									    mobile: true,  //是否在移动设备上执行动画
									    live: true  //一部加载的内容是否有效
									});
									
									//去测评按钮控制
									var step_wrap=$(".step_wrap .circle .glyphicon");
									var btn=$(".step_wrap .done_item>p");
									for (var i=0;i<step_wrap.length;i++){
										console.log(step_wrap[i].getAttribute("class"))
										if (step_wrap[i].getAttribute("class")=="glyphicon glyphicon-remove") {
											btn[i].style.display="block";
										} else{
											btn[i].style.display=="none";
										}
									}
									
								</script>
							</div>
						</div>
						<div class="margin_top">
							<h3 class="text-muted fontwei">理想职业</h3>
							<div class="">请在下列表格中选择一种您心仪的职业</div>
							<div class="margin_top1">
								<select name="">
									<option value="">请选择一种心仪 的职业大类</option>
									<option value="">工程师</option>
									<option value="">设计师</option>
								</select>
							</div>
							<table class="table-bordered margin_top1 width100" style="text-align: center;">
								<tr><th>职业名称</th><th>职业名称</th><th>职业名称</th><th>职业名称</th><th>职业名称</th></tr>
								<tr><td>职业名称</td><td>职业名称</td><td>职业名称</td><td>职业名称</td><td>职业名称</td></tr>
							</table>
						</div>
						<div class="margin_top">
							<h3 class="text-muted fontwei">理想专业</h3>
							<div class="">根据您选择的职业，我们为您推荐了以下专业，请从中选择一种您心仪的专业。</div>
							<div class="text-center margin_top1">
								<select name="">
									<option value="">国际经济与政治</option>
									<option value="">汉语言文学</option>
								</select>
							</div>
						</div>
					</div>
					<p class="text-center margin_top"><a class="btn btn-default cancel margin0" href="${pageContext.request.contextPath}/web/xgk/xgk_pick_report.jsp">生成报告</a></p>
				</div>
			</section>
		</main>

		<!-- 右侧边栏-->
		<c:import url="../public/side_right.jsp"></c:import>
		<!-- 页面底部-->
		<c:import url="footer.jsp"></c:import>	

	</body>

</html>