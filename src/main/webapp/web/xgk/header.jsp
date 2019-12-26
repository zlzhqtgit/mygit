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
		<header>
			<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/pick-pcc.min.1.0.1.css"/>
			<script src="${pageContext.request.contextPath}/js/pick-pcc.min.1.0.1.js" type="text/javascript" charset="utf-8"></script>
			<div class="nav_wrap">
				<div class="padding-side">
					<a href="${pageContext.request.contextPath}/cp/xgk_index.do"><img src="${pageContext.request.contextPath}/img/xgk/logo.png" style="width: 8em;"/></a>
				</div>
				<nav id="navdh" class="clearfix">
					<ul class="clearfix margin0">
						<li class=""><a id="xgk1" name="dh" href="${pageContext.request.contextPath}/cp/xgk_index.do">首页</a></li>
						<li class=""><a id="xgk2" name="dh" href="${pageContext.request.contextPath}/sub/xgk_subject_score.do">学科探索</a></li>
						<li class=""><a id="xgk3" name="dh" href="${pageContext.request.contextPath}/cp/xgk_choice.do">认知测评</a></li>
						<li class=""><a id="xgk4" name="dh" href="${pageContext.request.contextPath}/xk/xgk_guide_select.do">选科指导</a></li>
						<li class=""><a id="xgk5" name="dh" href="${pageContext.request.contextPath}/voc/xgk_job_blank.do">职业库</a></li>
						<li class="">
							<a id="xgk6" name="dh" href="javascript:void(0)">高校专业&ensp;<span class="glyphicon glyphicon-chevron-down"></span></a>
							<ul class="list-unstyled">
								<li><a href="${pageContext.request.contextPath}/school/xgk_school_search.do">院校查询</a></li>
								<li><a href="${pageContext.request.contextPath}/school/xgk_specialty_search.do">专业查询</a></li>
							</ul>
						</li>
						<li class="">
							<a id="xgk8" name="dh" href="#">更多&ensp;<span class="glyphicon glyphicon-chevron-down"></span></a>
							<ul class="list-unstyled">
								<li><a id="xgk9" name="dh" href="${pageContext.request.contextPath}/web/xgk/xgk_noviceMaterial.jsp">新手教程</a></li>
								<li><a id="xgk10" name="dh" href="#">商务合作</a></li>
								<li><a id="xgk11" name="dh" href="#">官方微信</a></li>
								<li><a id="xgk12" name="dh" href="#">志愿填报群</a></li>
							</ul>
						</li>
					</ul>
				</nav>
			</div>
			<div>
				<shiro:guest>
					<div class="user">
						<a class="padding-side border_primary text-center" href="javascript:void(0)"><span class="glyphicon glyphicon-map-marker padding-side"></span><div class="pick-area pick_province"></div></a>
						<img src="${pageContext.request.contextPath}/img/xgk/user.png" />
						<span class="padding-side"><a href="javascript:;" onclick="xgkLogin()">登陆</a> / <a href="javascript:;" onclick="xgkRegister()">注册</a></span>
					</div>
				</shiro:guest>
				<shiro:user>  
				   <div class="user">
				   		<a class="padding-side border_primary" href="javascript:void(0)"><span class="glyphicon glyphicon-map-marker padding-side"></span><div class="pick-area pick_province"></div></a>
						<a href="${pageContext.request.contextPath}/user/hqt_user_info.do">
							<c:if test="${headImg != null && headImg != ''}">
								<img src="${headImg}" style="border-radius: 50%; overflow: hidden; width: 100%; height: 100%" />
							</c:if>
							<c:if test="${headImg == null || headImg == ''}">
								<img src="${pageContext.request.contextPath}/img/xgk/user.png" />
							</c:if>
						</a>
						<span class="padding-side"><a href="${pageContext.request.contextPath}/web/xgk/center_user.jsp">${username}</a> / <a href="javascript:;" onclick="loginOut()">退出</a></span>
					</div>
				</shiro:user> 
			</div>
		</header>
		
</body>
<script type="text/javascript">
	
	//pick_province
	$(".pick_province").pickArea({
		"format": "贵州省", //格式
		"width": "170",
		"borderColor": "#3b8bec", //文本边框的色值
		"arrowColor": "#3b8bec", //箭头颜色
		"listBdColor": "#51AFC9", //下拉框父元素ul的border色值
		"color": "#555", //字体颜色
		"fontSize": "16px", //字体大小
		"hoverColor": "",
		"paddingLeft": "10px",
		"arrowRight": "10px",
		"maxHeight": "600",
		"preSet":'${province}',
		"getVal": function() {
			//console.log($(".pick-area-hidden").val())
			//console.log($(".pick-area-dom").val())
						//var thisdom = $("." + $(".pick-area-dom").val());
			//console.log(thisdom.next().val($(".pick-area-hidden").val()));
		}
	});
	
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
		/* $( "#"+sessionData).addClass( "active" ); */
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