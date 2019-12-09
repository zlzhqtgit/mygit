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
			<table class="table table-responsive">
				<tr><th>起止时间</th><th>状态</th><th>选课结果</th><th>操作</th></tr>
				<tr><td>2020年度高一上学期</td><td>已结束</td><td>物理+化学+生物</td><td><a class="fontwei text-primary" onclick="getPage('${pageContext.request.contextPath}/web/userCenter/courseTable.jsp')" href="javascript:void(0)">查看课表</a></td></tr>
			</table>
		</div>
	</body>
</html>
