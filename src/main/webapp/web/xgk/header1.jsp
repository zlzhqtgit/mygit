<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>  
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
						<a href="${pageContext.request.contextPath}/cp/xgk_index.do"><img src="${pageContext.request.contextPath}/img/xgk/logo.jpg" alt="贵州好前途教育科技有限公司"></a>
					</div>
					<nav id="navdh" class="">
						<ul>
							<li><a id="xgk1" name="dh" href="${pageContext.request.contextPath}/cp/xgk_index.do">首页</a></li>
							<li><a id="xgk2" name="dh" href="${pageContext.request.contextPath}/sub/xgk_subject_score.do">学科探索</a></li>
							<li><a id="xgk3" name="dh" href="${pageContext.request.contextPath}/cp/xgk_choice.do">认知测评</a></li>
							<li><a id="xgk5" name="dh" href="${pageContext.request.contextPath}/web/xgk/xgk_pick_guide.jsp">选科指导</a></li>
							<%-- <li><a id="xgk4" name="dh" href="${pageContext.request.contextPath}/xk/xgk_guide_select.do">选科指导</a></li> --%>
							<li><a id="xgk5" name="dh" href="${pageContext.request.contextPath}/web/xgk/xgk_libCareer_s.jsp">职业库</a></li>
							<li>
								<a id="xgk6" name="dh" href="${pageContext.request.contextPath}/school/xgk_school_search.do">高校专业</a>
								<ul class="child">
									<li><a href="${pageContext.request.contextPath}/school/xgk_school_search.do">院校查询</a></li>
									<li><a href="${pageContext.request.contextPath}/school/xgk_specialty_search.do">专业查询</a></li>
								</ul>
							</li>
							<li><a id="xgk7" name="dh" href="#">学科推荐</a></li>
							<li><a id="xgk8" name="dh" href="#">升学规划</a></li>
							<li><a id="xgk9" name="dh" href="#">志愿填报</a></li>
						</ul>
					</nav>
				</div>
				<div class="head-top col-md-4 margin_top margin_bot1">
					<shiro:guest>
						<div class="user">
							<img src="${pageContext.request.contextPath}/img/xgk/user.png" >
							<span class="padding-side"><a href="javascript:;" onclick="xgkLogin()">登陆</a> / <a href="javascript:;" onclick="xgkRegister()">注册</a></span>
						</div>
					</shiro:guest>
					<%-- <c:if test="${username==null}">
						<div class="user">
							<img src="${pageContext.request.contextPath}/img/xgk/user.png" >
							<span class="padding-side"><a href="javascript:;" onclick="xgkLogin()">登陆</a> / <a href="javascript:;" onclick="xgkRegister()">注册</a></span>
						</div>
					</c:if> --%>
					<shiro:user>  
					   <div class="user">
							<img src="${headImg}" style="border-radius: 50%; overflow: hidden; width: 100%; height: 100%">
							<span class="padding-side"><a href="javascript:;">${username}</a> / <a href="javascript:;" onclick="loginOut()">退出</a></span>
						</div>
					</shiro:user> 
					
					<%-- <c:if test="${username!=null}">
						<div class="user">
							<img src="${headImg}" style="border-radius: 50%; overflow: hidden; width: 100%; height: 100%">
							<span class="padding-side"><a href="javascript:;">${username}</a> / <a href="javascript:;" onclick="loginOut()">退出</a></span>
						</div>
					</c:if>
					 --%>
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
if(sessionData==null){
	$( "#xgk1").addClass( "active" );
}else{
	var sdf=document.getElementsByName("dh");
	var dahref=window.location.href;
	for(var i=0;i<sdf.length;i++){		
		 if(sdf[i].href==dahref){			
			sessionStorage.setItem('xgkid',sdf[i].id);	
			sessionData = sessionStorage.getItem('xgkid');
		}		
	}
	$( "#"+sessionData).addClass( "active" );
}
function xgkLogin(){
	var nowUrl=window.location.href;	
	location.href = "${pageContext.request.contextPath}/user/xgk_login.do?nowUrl="+nowUrl;
}
function xgkRegister() {
	var nowUrl=window.location.href;
	location.href = "${pageContext.request.contextPath}/user/register.do?nowUrl="+nowUrl;
}
function loginOut() {
	var nowUrl=window.location.href;
	location.href = "${pageContext.request.contextPath}/login_out.do?nowUrl="+nowUrl;
}

</script>
</html>