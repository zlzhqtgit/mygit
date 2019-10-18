<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset=utf-8>
<title>Insert title here</title>
<script type="text/javascript">
function chat2() {	
	window.open ('${pageContext.request.contextPath}/web/hqt_chat.do','好前途在线咨询平台', 'height=605, width=800, top=200px, left=520px, toolbar=no, menubar=no, scrollbars=no, resizable=no,location=no, status=no') 
}
</script>
</head>
<body>
		<div class="side-right">
			<div class="text-center mark-box" href="">
				<span class="btn-mark">
					<img src="${pageContext.request.contextPath}/img/xgk/rside3.png" >
				</span>
				<div class="">
				<a href="javascript:;"  onclick="chat2()">在线客服</a>
				</div>
			</div>
			<div class="text-center mark-box">
				<span class="btn-mark">
					<img src="${pageContext.request.contextPath}/img/xgk/rside1.png" >
				</span>				
				<div class="">
					<a href="">线上课程</a>
				</div>
			</div>
			<div class="text-center mark-box">
				<span class="btn-mark">
					<img src="${pageContext.request.contextPath}/img/xgk/rside2.png" >
				</span>
				<div class="">
					<a href="">VIP</a>
				</div>
			</div>
			<div class="text-center mark-box" href="">
				<span class="btn-mark">
					<img src="${pageContext.request.contextPath}/img/xgk/rside3.png" >
				</span>
				<div class="">
					<a href="tencent://message/?Site=baidu.com&uin=3303174399&Menu=yes">电话咨询</a>
				</div>
			</div>
			<div class="text-center mark-box" href="">
				<span class="btn-mark">
					<img src="${pageContext.request.contextPath}/img/xgk/rside3.png" >
				</span>
				<div class="">
					<a href="tencent://message/?Site=baidu.com&uin=3303174399&Menu=yes">QQ客服</a>
				</div>
			</div>
			<div class="text-center mark-box backtop">
				<span class="btn-mark">
					<img src="${pageContext.request.contextPath}/img/xgk/rside4.png" >
				</span>
				<div class="">
					<a href="">回到顶部</a>
				</div>
			</div>
		</div>
</body>
</html>