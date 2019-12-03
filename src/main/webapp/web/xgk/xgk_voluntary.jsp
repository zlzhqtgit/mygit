<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=0.1,user-scalable=no" />
		<title>贵州好前途教育科技有限公司</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/index.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/sch_search.css"/>
		<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js" type="text/javascript" charset="utf-8"></script>
	</head>

	<body>
		<!-- 页面头部-->
		<c:import url="header.jsp"></c:import>

		<main class="container">
			<div class="">
				<h2 class="fontwei">如何填报高考志愿&ensp;
					<span class="inline_block text-white padding-side" style="padding: .4em 1em;background-color: #45d7e6;">高考</span>
				</h2>
				<div class="zytb_tit thumbnail flex_jc_sb row">
					<div class="col-md-9" style="">
						<img src="${pageContext.request.contextPath}/img/xgk/zytb.jpg" class="img-responsive"/>
					</div>
					<div class="col-md-3" style="">
						<div class="border-primary padding-side">
							<h3 class="text-primary">目录</h3>
						</div>
						<div class="border-primary content_list">
							<div class="padding-side">
								<h4 class="text-primary">第一章 什么是高考志愿填报</h4>
								<ul>
									<li><a href="">第一课 如何填报高考志愿</a></li>
									<li><a href="">第一课 如何如何填报高考志愿填报高考志愿</a></li>
									<li><a href="">第一课 如何填报如何填报高考志愿高考志愿</a></li>
								</ul>
							</div>
							<div class="padding-side">
								<h4 class="text-primary">第一章 什么是高考志愿填报</h4>
								<ul>
									<li><a href="">第一课 如何填报如何填报高考志愿高考志愿</a></li>
									<li><a href="">第一课 如何填报高考志愿</a></li>
									<li><a href="">第一课 如何填报高考志愿</a></li>
									<li><a href="">第一课 如何填如何填报高考志愿报高考志愿</a></li>
									<li><a href="">第一课 如何填报高考志愿</a></li>
									<li><a href="">第一课 如何填报高考志愿</a></li>
									<li><a href="">第一课 如何填报高考志愿</a></li>
									<li><a href="">第一课 如何填报高考志愿</a></li>
								</ul>
							</div>
						</div>	
					</div>
				</div>
			</div>
			<div class="">
				<div class="padding-side flex_jc_sb">
					<div class="flex_jcstart">
						<h3 class="fontwei">推荐课程</h3>
						<span class="text-muted flex_Al_c">&ensp;共xxxx个视频</span>
					</div> 
					<a class="text-primary border-primary btn" href=""><span class="glyphicon glyphicon-refresh"></span>换一组</a>
				</div>
				<ul class="clearfix course_list margin_top1">
					<li class="pull-left padding-side">
						<div class="thumbnail">
							<div class="converse_info">
								<img src="${pageContext.request.contextPath}/img/xgk//car.jpg"/>
							</div>
							<div class="caption">
								<span>语文预习</span>
								<span>高一上学期第一单元</span>
							</div>
							<p class="text-left text-left"><a class="btn btn-danger" href="">预习</a></p>
						</div>
					</li>
					<li class="pull-left padding-side">
						<div class="thumbnail">
							<div class="converse_info">
								<img src="${pageContext.request.contextPath}/img/xgk//car.jpg"/>
							</div>
							<div class="caption">
								<span>语文预习</span>
								<span>高一上学期第一单元</span>
							</div>
							<p class="text-left text-left"><a class="btn btn-warning" href="">预习</a></p>
						</div>
					</li>
					<li class="pull-left padding-side">
						<div class="thumbnail">
							<div class="converse_info">
								<img src="${pageContext.request.contextPath}/img/xgk/car.jpg"/>
							</div>
							<div class="caption">
								<span>语文预习</span>
								<span>高一上学期第一单元</span>
							</div>
							<p class="text-left text-left"><a class="btn btn-info" href="">归纳</a></p>
						</div>
					</li>
					<li class="pull-left padding-side">
						<div class="thumbnail">
							<div class="converse_info">
								<img src="${pageContext.request.contextPath}/img/xgk/car.jpg"/>
							</div>
							<div class="caption">
								<span>语文预习</span>
								<span>高一上学期第一单元</span>
							</div>
							<p class="text-left text-left"><a class="btn btn-primary" href="">预习</a></p>
						</div>
					</li>
				</ul>
			</div>
			<div class="margin_bot1">
				<div class="border-primary padding-side"><h4 class="text-muted">课程评价</h4> </div>
				<div class="flex_Al_c border-primary padding-side" style="height: 6em;">暂无相关评价 </div>
			</div>
		</main>

		<!-- 页面右侧-->
		<c:import url="../public/side_right.jsp"></c:import>
		<!-- 页面底部-->
		<c:import url="footer.jsp"></c:import>	
	</body>

</html>