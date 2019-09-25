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
			<div class="">
				<div class="head-top row">
					<div class="pull-left logo">
						<img src="${pageContext.request.contextPath}/img/xgk/logo.jpg" alt="贵州好前途教育科技有限公司">
					</div>
					<div class="pull-left user">
						<img src="${pageContext.request.contextPath}/img/xgk/user.png">
						<a href="">登陆</a> /
						<a href="">注册</a>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="head-bottom row">
					<nav id="navdh" class="">
						<a id="1" href="${pageContext.request.contextPath}/cp/xgk_index.do">首页</a>
						<a id="2" href="${pageContext.request.contextPath}/cp/xgk_choice.do">认知测评</a>
						<a id="3" href="${pageContext.request.contextPath}/xk/xgk_guide_select.do">选科指导</a>
						<a id="4" href="">职业库</a>
						<a id="5" href="">高校专业</a>
						<a id="6" href="">学科推荐</a>
						<a id="7" href="">升学规划</a>
						<a id="8" href="">志愿填报</a>
						<div class="search">
							<div class="input_box pull-left">
								<span class="search_mark"><img src="${pageContext.request.contextPath}/img/xgk/search.png"></span>
								<input type="search" name="" id="" value="" placeholder="院校/专业/职业/学科" />
							</div>
							<div class="pull-left search_img">
								<img src="${pageContext.request.contextPath}/img/xgk/resizeApi.png">
							</div>
							<div class="clearfix"></div>
						</div>
					</nav>
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