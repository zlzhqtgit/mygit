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
		<div class="">
			<div class="mycourse p_relative margin_top1">
				<div class="line"></div>
				<div class="pot">
					<div class=""></div><div class=""></div><div class=""></div><div class=""></div>
				</div>
			</div>
			<div class="">
				<div class="flex_Al_c">
					<img class="" src="${pageContext.request.contextPath}/img/xgk/37.png" style="width: 280px;"/>
				</div>
				<p class="text-center"><a class="btn btn-primary" onclick="getPage('${pageContext.request.contextPath}/web/userCenter/myCourse1.jsp')" href="javascript:void(0)">查看课表</a></p>
			</div>
		</div>
	</body>
</html>
