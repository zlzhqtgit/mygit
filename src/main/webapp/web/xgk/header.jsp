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
			<div class="nav_wrap">
				<div class="padding-side">
					<a href="${pageContext.request.contextPath}/cp/xgk_index.do"><img src="${pageContext.request.contextPath}/img/xgk/logo.png" style="width: 8em;"/></a>
				</div>
				<nav id="navdh" class="clearfix">
					<ul class="clearfix margin0" style="width: 49em;">
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
								<li><a id="xgk9" name="dh" href="${pageContext.request.contextPath}/web/hqt_newbie_index.do">新手教程</a></li>
								<li><a id="xgk10" name="dh" href="#">商务合作</a></li>
								<li class="">
									<a href="javascript:void(0)">立学道社群</a>
									<div class="community wow bounceInRight">
										<div class="text-right text-white padding-side fontwei ctit" style="padding:.4em 1em">立学道社群</div>
										<div class="cont_wrap">
											<div class="clearfix">
												<div class="pull-left">
													<div class="padding-side"><h5 class="fontwei">官方微信</h5></div>
													<div class="">
														<img src="${pageContext.request.contextPath}/img/xgk/1568099441.jpg" class="img-responsive"/>
													</div>
												</div>
												<div class="pull-left">
													<div class="padding-side"><h5 class="fontwei">志愿填报群</h5></div>
													<div class="text-left">
														<p class="">QQ群1：6424323</p>
														<p class="">QQ群2：5453433</p>
														<p class="">QQ群3：2456354(已满)</p>
														<p class="">QQ群4：3321354(已满)</p>
													</div>
												</div>
											</div>
										</div>
									</div>
								</li>
							</ul>
						</li>
					</ul>
				</nav>
			</div>
				
			<div class="user padding-side">
				<span class="nav_search">
					<a href="${pageContext.request.contextPath}/web/hqt_search.do"><img src="${pageContext.request.contextPath}/img/xgk/search.png"/></a>
					<div class="search_slideDown">
						<div style="padding: 1em 18em 1em;">
							<p class="padding-side2"> <a class="padding-side" href="">高校</a> <a class="padding-side" href="">职业</a> <a class="padding-side" href="">专业</a> <a class="padding-side" href="">测评</a> </p>
						   <!--  <form class="bs-example bs-example-form" role="form">
						    </form> -->
						        <div class="input-group input-group-lg">
						            <span class="input-group-addon" style="cursor: pointer;" onclick="search_content()"><span class="glyphicon glyphicon-search text-muted"></span></span>
						            <input type="text" class="form-control" placeholder="请输入您要查找的内容" id="search_content">						        </div>
						    	   
						    <p class="margin_top1"> 
						    	<span class="">热门搜索：</span> 
						    	<a class="label label-info" href="">北京大学</a>
						    	<a class="label label-info" href="">会计学</a>
						    	<a class="label label-info" href="">秘书</a> 
						    </p>
						</div>
					</div>
				</span>
				<div class="">
					<label class="padding-side" for="province">
						<span class="">省份：</span><select name="" id="province"></select>
					</label>
					
					<shiro:guest>
						<span class=""><a href="javascript:;"><img src="${pageContext.request.contextPath}/img/xgk/user.png" /></a></span>
						<span class=""><a href="javascript:;" onclick="xgkLogin()">登陆</a> / <a href="javascript:;" onclick="xgkRegister()">注册</a></span>
					</shiro:guest>
					
					<shiro:user>  
						<a href="${pageContext.request.contextPath}/user/hqt_user_info.do">
							<c:if test="${headImg != null && headImg != ''}">
								<img src="${headImg}" style="border-radius: 50%; overflow: hidden; width: 100%; height: 100%" />
							</c:if>
							<c:if test="${headImg == null || headImg == ''}">
								<img src="${pageContext.request.contextPath}/img/xgk/user.png" />
							</c:if>
						</a>
						<span class="padding-side"><a href="${pageContext.request.contextPath}/web/xgk/center_user.jsp">${username}</a> / <a href="javascript:;" onclick="loginOut()">退出</a></span>
					</shiro:user> 
				</div>
			</div>
		</header>
</body>
<script src="${pageContext.request.contextPath}/js/province.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	$('.nav_search').mouseenter(function() {
		var w=$(window).width();
		$('.search_slideDown').width(w)
		var offsetLeft=$(this).offset().left
		$('.search_slideDown').css("left",-offsetLeft)
		
	})
	var options='';
	for (var i=0;i<chinaDatas.length;i++) {		
		if(chinaDatas[i][0].name.search('${province}') != -1){
			options+='<option value="'+chinaDatas[i][0].name+'" selected="selected">'+chinaDatas[i][0].name+'</option>'
		}else{
			options+='<option value="'+chinaDatas[i][0].name+'">'+chinaDatas[i][0].name+'</option>'
		}		
	}
	$("#province").html(options);
	$("#province").change(function() {
	})
	
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

	//搜索
	$('#search_content').bind('keypress',function(event){
		if(event.keyCode == "13"){
			search_content();
		}
	});
	function search_content(){
		location.href = "${pageContext.request.contextPath}/web/hqt_search.do?content=" + $("#search_content").val();
	}

</script>
</html>