<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=utf-8>
<title>好前途后台登录页</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/animate.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/index.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/web/xgk/wow.min.js" type="text/javascript" charset="utf-8"></script>

</head>
<body>
		<header class="padding-side login_head">
			<nav class="">
				<ul class="margin_top1">
					<li><a href="">新手教程</a></li>
					<li><a href="">志愿填报QQ群</a></li>
					<li><a href="">官方微信</a></li>
					<li><a href="">开通/激活VIP</a></li>
					<li><a href="">商务合作</a></li>
				</ul>
			</nav>
		</header>
		
		<section class="reset_pwd_box margin_top">
			<ul class="step clearfix">
				<li class="pull-left current">身份验证</li>
				<li class="pull-left">重置密码</li>
			</ul>
			<div class="step_body">
				<form class="verify">
						<div class="">
							<lable class="" for="">手机号码：</lable>
							<input type="" name="" id="" value="" placeholder="请填写11位手机号码"/>
							<span class="tip text-danger padding-side">手机号码错误</span>
						</div>
						<div class="margin_top1">
							<lable class="" for="">验&nbsp;&nbsp;证&nbsp;&nbsp;码：</lable>
							<input type="" name="" id="" value="" placeholder="请填写验证码"/>
							<a class="btn btn-primary" href="">获取手机验证码</a>
						</div>
						<div class="margin_top1 text-center">
							<a class="btn btn-primary" href="javascript:history.go(-1)">返回</a>
							<a class="btn btn-primary" href="javascript:void(0)" onclick="next_step(this)">下一步</a>
						</div>
				</form>
				<form class="reset_pwd hide">
						<div class="">
							<lable class="" for="">密&ensp;&ensp;&ensp;&ensp;码：</lable>
							<input type="" name="" id="" value="" placeholder="请填写6-16位数字、字母或符号作为密码"/>
							<span class="glyphicon glyphicon-ok-sign text-success"> 密码强度：弱</span>
						</div>
						<div class="margin_top1">
							<lable class="" for="">确认密码：</lable>
							<input type="" name="" id="" value="" placeholder="请再次输入密码"/>
							<span class="glyphicon glyphicon-remove-sign text-danger"> 两次输入的密码不一致</span>
						</div>
						<div class="margin_top1 text-center">
							<a class="btn btn-primary" href="javascript:void(0)" onclick="prev_step(this)">上一步</a>
							<input class="btn btn-primary" type="submit" name="" id="" value="重置" />
						</div>
				</form>
			</div>
			<script type="text/javascript">
				var step=$(".step li");
				function next_step(obj) {
					index=$(obj).parents("form").index();
					step.removeClass("current");
					step.eq(index+1).addClass("current");
					$(obj).parents("form").addClass("hide");
					$(obj).parents("form").next().removeClass("hide");
				}
				
				function prev_step(obj){
					index=$(obj).parents("form").index();
					step.removeClass("current");
					step.eq(index-1).addClass("current");
					$(obj).parents("form").addClass("hide");
					$(obj).parents("form").prev().removeClass("hide");
				}
				
			</script>
		</section>
		
		<script type="text/javascript">
			new WOW().init(); 
			var wow = new WOW({  
			    boxClass: 'wow', //需要执行动画的class 
			    animateClass: 'animated',  //animate.css的class
			    offset: 0,  //距可视区域多少开始执行动画
			    mobile: true,  //是否在移动设备上执行动画
			    live: true  //一部加载的内容是否有效
			}); 
			
			$('.counter').countUp();
		</script>
		
		<c:import url="footer.jsp"></c:import>	
	</body>

</html>

