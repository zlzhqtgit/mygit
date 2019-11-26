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
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>

		<script language="javascript">
			$(function() {
				$('.error').css({
					'position': 'absolute',
					'left': ($(window).width() - 490) / 2
				});
				$(window).resize(function() {
					$('.error').css({
						'position': 'absolute',
						'left': ($(window).width() - 490) / 2
					});
				})
			});
		</script>

	</head>

	<body style="background:#edf6fa;">

		<div class="place">
			<span>位置：</span>
			<ul class="placeul">
				<li>
					<a href="#">首页</a>
				</li>
				<li>
					<a href="#">404错误提示</a>
				</li>
			</ul>
		</div>

		<div class="error">

			<h2>非常遗憾，您访问的页面不存在！</h2>
			<p>看到这个提示，就自认倒霉吧!</p>
			<div class="reindex">
				<a href="main.html" target="_parent">返回首页</a>
			</div>

		</div>
	</body>

</html>