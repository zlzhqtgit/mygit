<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>贵州好前途教育科技有限公司</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/index.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/sch_search.css"/>
		<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js" type="text/javascript" charset="utf-8"></script>
	</head>

	<body>
		<!-- 页面头部-->
		<c:import url="header.jsp"></c:import>
		<div class="p_relative">
			<div class=""><img src="${pageContext.request.contextPath}/img/xgk/bannerBg.png"/></div>
			<div class="user_info">
				<div class="text-center cenUser_head" style="width: 6em;">
					<img src="${pageContext.request.contextPath}/img/xgk/user.png" style="width: 100%;"/>
					<h3 class="fontwei">用户昵称</h3>
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
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript">
			$(function() {
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
		</script>
		<main class="container">
			<div class="flex_jc_sb border_major margin_bot1 tab_box">
				<ul class="center_nav padding-side">
					<li><a href="javascript:void(0)"><span class="glyphicon glyphicon-align-left"></span> 我的资料</a></li>
					<li><a href="javascript:void(0)"><span class="glyphicon glyphicon-list-alt"></span> 我的测评</a></li>
					<li><a href="javascript:void(0)"><span class="glyphicon glyphicon-th-large"></span> 我的学科</a></li>
					<li><a href="javascript:void(0)"><span class="glyphicon glyphicon-check"></span> 我的选科</a></li>
					<li>
						<a href="javascript:void(0)"><span class="glyphicon glyphicon-record"></span> 
							我的关注<span class="badge pull-right text-danger">3</span>
						</a>
					</li>
					<li class="current"><a href="javascript:void(0)"><span class="glyphicon glyphicon-road"></span> 快速通道</a></li>
				</ul>
				
				<div class="center_cont">
					
					<ul>
						<li>是的噶山豆根爱上公司的</li>
					</ul>
					<ul>
						<li>萨嘎的撒和大家和环境</li>
					</ul>
					<ul>
						<li>是的噶山豆根爱上公司的111</li>
					</ul>
					<ul>
						<li>萨嘎的撒和大家和环境22222</li>
					</ul>
					<ul>
						<li>萨嘎的撒和大家和环境33333</li>
					</ul>
					<ul class="padding-side current">
						<li>
							<div class="">
								<h4 class="fontwei text-primary">找数据</h4>
								<ul class="row_list clearfix">
									<li><a href=""><span class="glyphicon glyphicon-search"></span> 找大学</a></li>
									<li><a href=""><span class="glyphicon glyphicon-list"></span> 查专业</a></li>
									<li><a href=""><span class="glyphicon glyphicon-briefcase"></span> 看职业</a></li>
									<li><a href=""><span class="glyphicon glyphicon-log-in"></span> 提前批</a></li>
									<li><a href=""><span class="glyphicon glyphicon-indent-left"></span> 分数线</a></li>
									<li><a href=""><span class="glyphicon glyphicon-eye-open"></span> 历年报考</a></li>
								</ul>
							</div>
						</li>
						<li>
							<div class="">
								<h4 class="fontwei text-primary">测评</h4>
								<ul class="row_list clearfix">
									<li><a href=""><span class="glyphicon glyphicon-align-right"></span> 测评</a></li>
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

		<!-- 页面底部-->
		<c:import url="../public/side_right.jsp"></c:import>	
		<!-- 页面底部-->
		<c:import url="footer.jsp"></c:import>

	</body>

</html>