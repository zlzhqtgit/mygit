<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset=utf-8>
<title>Insert title here</title>
</head>
<body>
		<header class="padding-side">
			<div class="row">
				
				<div class="head-bottom col-md-8">
					<div class="logo">
						<img src="${pageContext.request.contextPath}/img/xgk/logo.jpg" alt="贵州好前途教育科技有限公司">
					</div>
					<nav class="">
						<a href="index.html">首页</a>
						<a href="test_choice.html">认知测评</a>
						<a href="guide_select.html">选科指导</a>
						<a href="">职业库</a>
						<a href="">高校专业</a>
						<a href="">学科推荐</a>
						<a href="">升学规划</a>
						<a href="">志愿填报</a>

						
					</nav>
				</div>
				<div class="head-top col-md-4 margin_top margin_bot1">
					<div class="user">
						<img src="${pageContext.request.contextPath}/img/xgk/user.png">
						<span class="padding-side"><a href="">登陆</a> / <a href="">注册</a></span>
					</div>
					<div class="search margin_top1">
						<div class="pull-left input_box">
							<span class="search_mark"><img src="${pageContext.request.contextPath}/img/xgk/search.png"></span>
							<input type="search" name="" id="" value="" placeholder="院校/专业/职业/学科" />
						</div>
						<div class="pull-left search_img">
							<img src="${pageContext.request.contextPath}/img/xgk/resizeApi.png">
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				
			</div>
		</header>

</body>
<script type="text/javascript">
$("#navdh a").click(function(){	
	sessionStorage.setItem('xgkid',this.id); //设置数据	
});
var sessionData = sessionStorage.getItem('xgkid'); //取出数据
$( "#"+sessionData).addClass( "active" );
</script>
</html>