<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=utf-8>
<title>好前途后台登录页</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/index.css" />		
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/web/xgk/echarts.min.js" type="text/javascript" charset="utf-8"></script>
</head>

<body>
<!-- 页面顶部-->
<c:import url="header.jsp"></c:import>			

		
		<main class="container">
			<section class="row">
				<p class="text-right">
					<a href="javascript:history.go(-1)" class="btn btn-primary">返回</a>
				</p>
				<div class="panel panel-default">
					<div class="panel-body">
						<h1 class="text-primary fontwei">选科指导</h1>
						<div class="padding-side2">
							<div class="">
								<h3 class="margin_top1">学科推荐</h3>
								<p class="padding-side2 margin_bot margin_top1">根据以下三项标准进行判定最后的选择结果,进入界面后所有相关信息请如实填写,避免因必要信息填写不实,而影响到最后的推荐结果。</p>
								<div class="row padding-side">
									<div class="col-sm-4">
										<div class="panel panel-default padding-side">
											<div class="text-center margin_bot1 margin_top1">
												<a class="btn btn-success" href="">学科能力</a>
											</div>
											<p class="margin_bot margin_top">功能区域描述功能区域描述功能区域描述功能区域描述功能区域描述功能区域描述功能区域描述功能区域描述功能区域描述功能区域描述功能区域描述功能区域描述功能区域描述功能区域描述</p>
											<div class="text-center margin_bot">
												<a class="btn btn-primary fontwei" href="${pageContext.request.contextPath}/web/xgk/xgk_learn_ability.jsp">开始测试</a>
											</div>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="panel panel-default padding-side">
											<div class="text-center margin_bot1 margin_top1">
												<a class="btn btn-primary" href="">职业认知</a>
											</div>
											<p class="margin_bot margin_top">功能区域描述功能区域描述功能区域描述功能区域描述功能区域描述功能区域描述功能区域描述功能区域描述功能区域描述功能区域描述功能区域描述功能区域描述功能区域描述功能区域描述</p>
											<div class="text-center margin_bot">
												<a class="btn btn-primary fontwei" href="">开始测试</a>
											</div>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="panel panel-default padding-side">
											<div class="text-center margin_bot1 margin_top1">
												<a class="btn btn-warning" href="">限报先考</a>
											</div>
											<p class="margin_bot margin_top">功能区域描述功能区域描述功能区域描述功能区域描述功能区域描述功能区域描述功能区域描述功能区域描述功能区域描述功能区域描述功能区域描述功能区域描述功能区域描述功能区域描述</p>
											<div class="text-center margin_bot">
												<a class="btn btn-primary fontwei" href="">开始测试</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="margin_top">
								<h3 class="">选科报告</h3>
								<div class="padding-side">
									<div class="panel panel-default margin_top1">
										<p class="padding-side2 margin_bot text-center margin_top">
											<a class="btn btn-primary" href="">获取选科报告</a>
											<div class="hide">
												还没有相关数据哦,请完成相关数据的填写和测评再试试~~
											</div>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</section>

		</main>
				
		
<!-- 页面底部-->
<c:import url="../public/side_right.jsp"></c:import>	
<!-- 页面底部-->
<c:import url="footer.jsp"></c:import>	
</body>
<script type="text/javascript">
var id="${id}";
$( "#xgk"+id).addClass( "active" );
</script>
</html>
