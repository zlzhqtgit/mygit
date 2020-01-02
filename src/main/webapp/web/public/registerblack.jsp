<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=utf-8>
<title>好前途后台登录页</title>
<meta name="viewport" content="width=device-width, initial-scale=0.3">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/animate.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/index.css" />
<%-- <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script> --%>
<script src="${pageContext.request.contextPath}/js/web/xgk/jquery-1.11.0.js" type="text/javascript" charset="utf-8"></script>
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
		
		<section class="container">
			<div class="register_box margin_top">
				
				<div class="reg_process">
					<ul class="clearfix">
						<li class="pull-left current">选择身份</li>
						<li class="pull-left">注册信息</li>
						<li class="pull-left">注册账号</li>
					</ul>
				</div>
				
				<div class="status margin_bot">
					<ul class="page_step step1 margin_bot margin_top">
						<li><a id="class1" href="javascript:void(0)" class="active wow bounceInLeft" onclick="next_step(this)">个人用户</a></li>
						<li class="margin_top"><a id="class2" href="javascript:void(0)" onclick="next_step(this)" class=" wow bounceInRight">我是咨询师</a></li>
					</ul>
					
					<div class="page_step step2 margin_top hide">
						
						<form class="" action="" method="post">
							<fieldset id="">
								<legend class="">
									<h3 class="text-primary margin_bot1">注册新用户
										<span class="small text-muted padding-side">为使您享受更优质的服务体验，请确保各项信息的准确性</span>
									</h3>
								</legend>
								<h3 class="text-primary">填写注册信息</h3>
								<div class="padding-side2 margin_bot margin_top1">
									<div class="">
										<label for="username">真实姓名：</label>
										<input id="username" type="text" placeholder="请填写您的真实姓名"/>
										<span class="text-muted padding-side">请填写考生真实姓名，保存后不可修改</span>
									</div>
									<div class="">
										<label for="mobile">手机号码：</label>
										<input id="mobile" type="text" placeholder="请填写11位手机号码"/>
										<span class="glyphicon glyphicon-remove-sign text-danger padding-side"> 手机号格式错误</span>
									</div>
									<div class="">
										<label for="verify_code">验&nbsp;&nbsp;证&nbsp;&nbsp;码：</label>
										<input id="verify_code" type="text" placeholder="请填写验证码"/>
										<a  class="btn btn-default" href="">获取手机验证码</a>
									</div>
									<div class="">
										<label for="password">密&emsp;&emsp;码：</label>
										<input id="password" type="text" placeholder="请填写6-16位数字、字母或符号作为密码"/>
										<span class="glyphicon glyphicon-ok-sign text-success padding-side"> 密码强度：弱</span>
									</div>
									<div class="">
										<label for="confirm">确认密码：</label>
										<input id="confirm" type="text" placeholder="请再次输入密码"/>
										<span class="glyphicon glyphicon-remove-sign text-danger padding-side"> 两次输入的密码不相同</span>
									</div>
								</div>
								
								<h3 class="text-primary">完善学生信息
									<span class="small text-muted padding-side">为使您享受更优质的服务体验，请确保各项信息的准确性</span>
								</h3>
								<div class="padding-side2 margin_top1 margin_bot" style="position: relative;">
									<div class="">
										<label for="school">就读学校：</label>
										<input id="school" type="text" placeholder="请填写你的学校名称"/>
									</div>
									<div class="">
										<label for="object">科&emsp;&emsp;类：</label>
										<input id="object" type="text" placeholder=""/>
									</div>
									<div class="">
										<label for="score">分&emsp;&emsp;数：</label>
										<input id="score" type="text" placeholder=""/>
									</div>
									<div class="">
										<label for="year">高考年度：</label>
										<input id="year" type="text" placeholder=""/>
										<span class="glyphicon glyphicon-remove-sign text-danger padding-side"> 请填写高考年度</span>
									</div>
									
									<div class="reg_tip">
										<h3 class="text-danger">温馨提示：</h3>
										<div class="padding-side2">
											本栏中的和官方的说法的呵呵和人合伙二号合法的和任何人还不如新色版额
										</div>
									</div>
								</div>
							</fieldset>
							<div class="padding-side2">
								<input type="checkbox" name="" id="" value="" />
								<span class="">我已阅读并接受<a class="text-primary" href="">《用户协议》</a>及<a class="text-primary" href="">《隐私政策》</a></span>
							</div>
							<div class="text-center margin_top1 margin_bot">
								<input onclick="next_step(this)" class="btn btn-default disabled" type="button" value="注册"/>
							</div>
						</form>
						
						<form class="" action="" method="post">
							<fieldset id="">
								<legend class="">
									<h3 class="text-primary margin_bot1">注册新用户
										<span class="small text-muted padding-side">为使您享受更优质的服务体验，请确保各项信息的准确性</span>
									</h3>
								</legend>
								<h3 class="text-primary">填写注册信息</h3>
								<div class="padding-side2 margin_bot margin_top1" style="position: relative;">
									<div class="">
										<label for="username">真实姓名：</label>
										<input id="username" type="text" placeholder="请填写您的真实姓名"/>
										<span class="text-muted padding-side">请填写考生真实姓名，保存后不可修改</span>
									</div>
									<div class="">
										<label for="mobile">手机号码：</label>
										<input id="mobile" type="text" placeholder="请填写11位手机号码"/>
										<span class="glyphicon glyphicon-remove-sign text-danger padding-side"> 手机号格式错误</span>
									</div>
									<div class="">
										<label for="verify_code">验&nbsp;&nbsp;证&nbsp;&nbsp;码：</label>
										<input id="verify_code" type="text" placeholder="请填写验证码"/>
										<a  class="btn btn-default" href="javascript:void(0)">获取手机验证码</a>
									</div>
									<div class="">
										<label for="password">密&emsp;&emsp;码：</label>
										<input id="password" type="text" placeholder="请填写6-16位数字、字母或符号作为密码"/>
										<span class="glyphicon glyphicon-ok-sign text-success padding-side"> 密码强度：弱</span>
									</div>
									<div class="">
										<label for="confirm">确认密码：</label>
										<input id="confirm" type="text" placeholder="请再次输入密码"/>
										<span class="glyphicon glyphicon-remove-sign text-danger padding-side"> 两次输入的密码不相同</span>
									</div>
									<div class="">
										<label for="confirm">从事职业：</label>
										<input id="confirm" type="text" placeholder="请输入您的职业名"/>
									</div>
									
									<div class="reg_tip" >
										<h3 class="text-danger">温馨提示：</h3>
										<div class="padding-side2">
											本栏中的和官方的说法的呵呵和人合伙二号合法的和任何人还不如新色版额
										</div>
									</div>
								</div>
								
							</fieldset>
							<div class="padding-side2">
								<input type="checkbox" name="" id="" value="" />
								<span class="">我已阅读并接受<a class="text-primary" href="">《用户协议》</a>及<a class="text-primary" href="">《隐私政策》</a></span>
							</div>
							<div class="text-center margin_top1 margin_bot">
								<input onclick="next_step(this)" class="btn btn-default disabled" type="button" value="注册"/>
							</div>
						</form>
					</div>
					
					<div class="page_step step3 hide">
						<div class="margin_top margin_bot">
							<p class="">您的账号<label class="text-success">注册已完成 <span class="glyphicon glyphicon-ok-sign text-success"></span></label>，账号名称为您的手机号。</p>
							<p class="text-center margin_top"><a class="btn btn-primary" href="">返回登录</a></p>
						</div>

						
					</div>
					
				</div>
			</div>
			
			<script type="text/javascript">
					var step=$('.reg_process ul li');
					function next_step(obj){
						step.removeClass('current');
						var index=$(obj).parents('.page_step').index();
						step.eq(index+1).addClass('current');
						$(obj).parents('.page_step').addClass('hide');
						var status=$(obj).attr("id");
						if (status=='class1') {
							$(obj).parents('.page_step').next().find("form").eq(0).removeClass("hide");
							$(obj).parents('.page_step').next().find("form").eq(0).siblings().addClass("hide");
						} else if(status=='class2'){
							$(obj).parents('.page_step').next().find("form").eq(1).removeClass("hide");
							$(obj).parents('.page_step').next().find("form").eq(1).siblings().addClass("hide");
						}
						$(obj).parents('.page_step').next().removeClass('hide');
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
		
		<c:import url="../xgk/footer.jsp"></c:import>	
	</body>
</html>

