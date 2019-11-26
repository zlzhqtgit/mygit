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
	</head>

	<body>

		<div class="place">
			<span>位置：</span>
			<ul class="placeul">
				<li>
					<a href="#">首页</a>
				</li>
				<li>
					<a href="#">工具箱</a>
				</li>
			</ul>
		</div>

		<div class="formbody">

			<div class="formtitle"><span>常用功能</span></div>

			<div class="toolsli">
				<ul class="toollist">
					<li>
						<a href="#"><img src="${pageContext.request.contextPath}/images/i01.png" /></a>
						<h2>文档打印</h2></li>
					<li>
						<a href="#"><img src="${pageContext.request.contextPath}/images/i02.png" /></a>
						<h2>订单</h2></li>
					<li>
						<a href="#"><img src="${pageContext.request.contextPath}/images/i03.png" /></a>
						<h2>安全管理</h2></li>
					<li>
						<a href="#"><img src="${pageContext.request.contextPath}/images/i04.png" /></a>
						<h2>购物清单</h2></li>
					<li>
						<a href="#"><img src="${pageContext.request.contextPath}/images/i05.png" /></a>
						<h2>信息统计</h2></li>
				</ul>
				<span class="tooladd"><img src="${pageContext.request.contextPath}/images/add.png" title="添加" /></span>
			</div>

			<div class="formtitle"><span>数据分析</span></div>

			<div class="toolsli">
				<ul class="toollist">
					<li>
						<a href="#"><img src="${pageContext.request.contextPath}/images/i06.png" /></a>
						<h2>费用汇总</h2></li>
					<li>
						<a href="#"><img src="${pageContext.request.contextPath}/images/i07.png" /></a>
						<h2>合同利润</h2></li>
					<li>
						<a href="#"><img src="${pageContext.request.contextPath}/images/i08.png" /></a>
						<h2>收支明细</h2></li>
					<li>
						<a href="#"><img src="${pageContext.request.contextPath}/images/i09.png" /></a>
						<h2>通知公告</h2></li>
				</ul>
				<span class="tooladd"><img src="${pageContext.request.contextPath}/images/add.png" title="添加" /></span>
			</div>

		</div>
	</body>

</html>