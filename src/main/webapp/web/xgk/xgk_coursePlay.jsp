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
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
	</head>

	<body>
		<!-- 页面顶部-->
		<c:import url="header.jsp"></c:import>	

		<main class="container">
			<div class="">
				<div class="flex_jc_sb">
					<h2 class="fontwei">如何填报高考志愿&ensp;
						<span class="inline_block text-white padding-side" style="padding: .4em 1em;background-color: #45d7e6;">高考</span>
					</h2>
					<div class="flex_Al_c">
						<span class=""><i class="text-danger">xx人</i>已学习</span>&ensp;
						<input type="text" name="" id="" value="" placeholder="输入课程名称自动搜索"/>
					</div>
				</div>
				<div class="zytb_tit thumbnail flex_jc_sb row">
					<div class="col-md-9" style="">
						<video height="100%" controls preload="auto" style="object-fit:fill;">
							<source src="${pageContext.request.contextPath}/img/xgk/video/GQ55LLI4.mp4" type="video/mp4"></source>
							<source src="myvideo.ogv" type="video/ogg"></source>
							<source src="myvideo.webm" type="video/webm"></source>
							<object width="" height="" type="application/x-shockwave-flash" data="myvideo.swf">
								<param name="movie" value="myvideo.swf" />
								<param name="flashvars" value="autostart=true&amp;file=myvideo.swf" />
							</object>
							当前浏览器不支持 video直接播放，点击这里下载视频： <a href="myvideo.webm">下载视频</a>
						</video>
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
									<li><a href="">第一课 如何填报高考志愿</a></li>
									<li><a href="">第一课 如何填报高考志愿</a></li>
								</ul>
							</div>
							<div class="padding-side">
								<h4 class="text-primary">第一章 什么是高考志愿填报</h4>
								<ul>
									<li><a href="">第一课 如何填报高考志如何填报高考志愿愿</a></li>
									<li><a href="">第一课 如何填报高考志愿</a></li>
									<li><a href="">第一课 如何填报高考志愿</a></li>
									<li><a href="">第一课 如何填报高考志愿</a></li>
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
			<div class="recom_course">
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
							<a href="coursePlay.html" class="converse_info">
								<img src="${pageContext.request.contextPath}/img/xgk/car.jpg"/>
							</a>
							<a href="coursePlay.html" class="caption flex_jc_sb">
								<span>语文预习</span>
								<span>高一上学期第一单元</span>
							</a>
							<p class="text-left text-left"><span class="label label-info" href="">预习</span></p>
						</div>
					</li>
					<li class="pull-left padding-side">
						<div class="thumbnail">
							<a href="coursePlay.html" class="converse_info">
								<img src="${pageContext.request.contextPath}/img/xgk/car.jpg"/>
							</a>
							<a href="coursePlay.html" class="caption flex_jc_sb">
								<span>语文预习</span>
								<span>高一上学期第一单元</span>
							</a>
							<p class="text-left text-left"><span class="label label-warning" href="">预习</span></p>
						</div>
					</li>
					<li class="pull-left padding-side">
						<div class="thumbnail">
							<a href="coursePlay.html" class="converse_info">
								<img src="${pageContext.request.contextPath}/img/xgk/car.jpg"/>
							</a>
							<a href="" class="caption flex_jc_sb">
								<span>语文预习</span>
								<span>高一上学期第一单元</span>
							</a>
							<p class="text-left text-left"><span class="label label-danger" href="">预习</span></p>
						</div>
					</li>
					<li class="pull-left padding-side">
						<div class="thumbnail">
							<a href="coursePlay.html" class="converse_info">
								<img src="${pageContext.request.contextPath}/img/xgk/car.jpg"/>
							</a>
							<a href="coursePlay.html" class="caption flex_jc_sb">
								<span>语文预习</span>
								<span>高一上学期第一单元</span>
							</a>
							<p class="text-left text-left"><span class="label label-success" href="">预习</span></p>
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