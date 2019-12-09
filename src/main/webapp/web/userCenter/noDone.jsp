<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<!--<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="../css/index.css" />
		<link rel="stylesheet" type="text/css" href="../css/sch_search.css"/>
		<script src="../js/jquery-1.11.0.js" type="text/javascript" charset="utf-8"></script>
		<script src="../js/layer/2.4/layer.js" type="text/javascript" charset="utf-8"></script>-->
	</head>
	<body>
		<div class="" onload="showModel()">
			<div class="border-primary">
				<div class="text-center fontwei"><div class="bg-primary fontwei" style="font-size: 1.6em;padding: .6em 0;">待完成</div></div>
				<div class="">
					<div class="text-center margin_top margin_bot">
						管理员发布了一次选科排课的任务，快去完成吧！
					</div>
					<p class="text-center"><a class="btn btn-primary" onclick="getPage('${pageContext.request.contextPath}/web/userCenter/el_result.jsp')" href="javascript:void(0)">参与选科排课</a></p>
				</div>
			</div>
			<div class="tip_el" style="display: none;">
				<div class="">
					<img class="width100" src="img/bg-banner-1.jpg"/>
				</div>
				<div class="text-center">
					<p class="margin_top">您还没有参与过相关测评，还不能进行选科排课，</p>
					<p class="">快去测评吧！</p>
					<p class="margin_top">
						<a class="btn btn-primary" href="">继续排课</a>
						<a class="btn btn-primary" href="">去测评</a>
					</p>
				</div>
			</div>
		</div>
	</body>
</html>
