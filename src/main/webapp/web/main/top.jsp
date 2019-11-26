<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>无标题文档</title>
		<link href="${pageContext.request.contextPath}/css/main/style.css" rel="stylesheet" type="text/css" />
		<script language="JavaScript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
		<script type="text/javascript">
			$(function() {
				//顶部导航切换
				$(".nav li a").click(function() {
					$(".nav li a.selected").removeClass("selected")
					$(this).addClass("selected");
				})
			})
		</script>

	</head>

	<body style="background:url(../../images/topbg.gif) repeat-x;">

		<div class="topleft">
			<a href="${pageContext.request.contextPath}/web/main/main.jsp" target="_parent"><img src="${pageContext.request.contextPath}/images/logo.png" title="系统首页" /></a>
		</div>

		<ul class="nav">
			<li>
				<a href="${pageContext.request.contextPath}/web/main/default.jsp" target="rightFrame" class="selected"><img src="${pageContext.request.contextPath}/images/icon01.png" title="工作台" />
					<h2>工作台</h2></a>
			</li>
			<li>
				<a href="${pageContext.request.contextPath}/web/main/imgtable.jsp" target="rightFrame"><img src="${pageContext.request.contextPath}/images/icon02.png" title="模型管理" />
					<h2>模型管理</h2></a>
			</li>
			<li>
				<a href="${pageContext.request.contextPath}/web/main/imglist.jsp" target="rightFrame"><img src="${pageContext.request.contextPath}/images/icon03.png" title="模块设计" />
					<h2>模块设计</h2></a>
			</li>
			<li>
				<a href="${pageContext.request.contextPath}/web/main/tools.jsp" target="rightFrame"><img src="${pageContext.request.contextPath}/images/icon04.png" title="常用工具" />
					<h2>常用工具</h2></a>
			</li>
			<li>
				<a href="${pageContext.request.contextPath}/web/main/error.jsp" target="rightFrame"><img src="${pageContext.request.contextPath}/images/icon06.png" title="系统设置" />
					<h2>系统设置</h2></a>
			</li>
		</ul>

		<div class="topright">
			<ul>
				<li><span><img src="${pageContext.request.contextPath}/images/help.png" title="帮助"  class="helpimg"/></span>
					<a href="#">帮助</a>
				</li>
				<li>
					<a href="#">关于</a>
				</li>
				<li>
					<a href="${pageContext.request.contextPath}/web/main/login.jsp" target="_parent">退出</a>
				</li>
			</ul>

			<div class="user">
				<span>admin</span>
				<i>消息</i>
				<b>5</b>
			</div>

		</div>
	</body>

</html>