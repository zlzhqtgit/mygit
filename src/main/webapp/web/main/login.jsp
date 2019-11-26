﻿<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>欢迎登录好前途后台管理系统</title>
		<link href="${pageContext.request.contextPath}/css/main/style.css" rel="stylesheet" type="text/css" />
		<script language="JavaScript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
		<script src="${pageContext.request.contextPath}/js/cloud.js" type="text/javascript"></script>

		<script language="javascript">
			$(function() {
				$('.loginbox').css({
					'position': 'absolute',
					'left': ($(window).width() - 692) / 2
				});
				$(window).resize(function() {
					$('.loginbox').css({
						'position': 'absolute',
						'left': ($(window).width() - 692) / 2
					});
				})
			});
		</script>

	</head>

	<body style="background-color:#1c77ac; background-image:url(../../images/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;">

		<div id="mainBody">
			<div id="cloud1" class="cloud"></div>
			<div id="cloud2" class="cloud"></div>
		</div>

		<div class="logintop">
			<span>欢迎登录后台管理界面平台</span>
			<ul>
				<li>
					<a href="#">回首页</a>
				</li>
				<li>
					<a href="#">帮助</a>
				</li>
				<li>
					<a href="#">关于</a>
				</li>
			</ul>
		</div>

		<div class="loginbody">

			<span class="systemlogo"></span>

			<div class="loginbox">

				<ul>
					<li><input name="" type="text" class="loginuser" value="admin" onclick="JavaScript:this.value=''" /></li>
					<li><input name="" type="text" class="loginpwd" value="密码" onclick="JavaScript:this.value=''" /></li>
					<li><input name="" type="button" class="loginbtn" value="登录" onclick="javascript:window.location='main.html'" /><label><input name="" type="checkbox" value="" checked="checked" />记住密码</label><label><a href="#">忘记密码？</a></label></li>
				</ul>

			</div>

		</div>

		<div class="loginbm">版权所有 2013 .com 仅供学习交流，勿用于任何商业用途</div>
	</body>

</html>