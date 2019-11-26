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
					<a href="#">表单</a>
				</li>
			</ul>
		</div>

		<div class="formbody">

			<div class="formtitle"><span>基本信息</span></div>

			<ul class="forminfo">
				<li><label>文章标题</label><input name="" type="text" class="dfinput" /><i>标题不能超过30个字符</i></li>
				<li><label>关键字</label><input name="" type="text" class="dfinput" /><i>多个关键字用,隔开</i></li>
				<li><label>是否审核</label><cite><input name="" type="radio" value="" checked="checked" />是&nbsp;&nbsp;&nbsp;&nbsp;<input name="" type="radio" value="" />否</cite></li>
				<li><label>引用地址</label><input name="" type="text" class="dfinput" value="http://www..com/html/uidesign/" /></li>
				<li><label>文章内容</label><textarea name="" cols="" rows="" class="textinput"></textarea></li>
				<li><label>&nbsp;</label><input name="" type="button" class="btn" value="确认保存" /></li>
			</ul>

		</div>
	</body>

</html>