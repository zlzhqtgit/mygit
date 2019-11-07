<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=utf-8>
<title>好前途后台登录页</title>
<meta name="viewport" content="width=device-width, initial-scale=0.1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/animate.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/index.css" />
<script src="${pageContext.request.contextPath}/js/web/xgk/jquery-1.11.0.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/js/web/xgk/wow.min.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/web/xgk/jquery.countup.min.js"></script>
<script src="${pageContext.request.contextPath}/js/web/xgk/jquery.waypoints.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/H-ui.admin.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/js/layer/2.4/layer.js"></script>
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
						<li class="pull-left current">注册信息</li>
						<li class="pull-left">注册账号</li>
					</ul>
				</div>				
				<div class="status margin_bot">				
					<div class="page_step step2 margin_top">						
						<form class="" action="" method="post" id="reg_form">
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
										<input id="username" name="username" type="text" placeholder="请填写您的真实姓名"/>
										<span class="text-muted padding-side">请填写考生真实姓名，保存后不可修改</span>
									</div>
									<div class="">
										<label for="mobile">手机号码：</label>
										<input id="phone" name="phone" type="text" placeholder="请填写11位手机号码"/>
										<span class="glyphicon glyphicon-remove-sign text-danger padding-side"> 手机号格式错误</span>
									</div>									
									<div class="">
										<label for="verify_code">验&nbsp;&nbsp;证&nbsp;&nbsp;码：</label>
										<input id="verify_code" type="text" placeholder="请填写验证码"/>									
										<input class="btn btn-default" id="phonttime" type="button" value="获取手机验证码"/>
									</div>
									<div class="">
										<label for="password">密&emsp;&emsp;码：</label>
										<input id="password" name="password" type="text" placeholder="请填写6-16位数字、字母或符号作为密码"/>
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
										<input id="school" name="school" type="text" placeholder="请填写你的学校名称"/>
									</div>
									<div class="">
										<label for="schoolAddress">学校地址：</label>
										<input id="schoolAddress" name="schoolAddress" type="text" placeholder="请填写你的学校名称"/>
									</div>
									<div class="">
										<label for="families">科&emsp;&emsp;类：</label>
										<input id="families" name="families" type="text" placeholder=""/>
									</div>
									<div class="">
										<label for="fraction">分&emsp;&emsp;数：</label>
										<input id="fraction" name="fraction" type="text" placeholder=""/>
									</div>
									<div class="">
										<label for="ceeYear">高考年度：</label>
										<input id="ceeYear" name="ceeYear" type="text" placeholder=""/>
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
								<input onclick="register(this)" class="btn btn-default" type="button" value="注册"/>
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
		</section>		
		<c:import url="../xgk/footer.jsp"></c:import>	
	</body>
<script type="text/javascript">
var waitTime = 60;
document.getElementById("phonttime").onclick = function() {
	var data="phone="+$("#phone").val();
	var reg = /^[1][3,4,5,7,8][0-9]{9}$/;
	if(!reg.test($("#phone").val())){	
		layer.msg("请输入正确格式的手机号",{icon:2,time:1000});
	}else{
		$.ajax({
			url: "../user/hqt_photoyzm.do",
	        type: "POST", 
	        data:data,
	        dataType: "JSON", 
	        success: function(obj) {
	             if (obj.state == 0) {	            	 	            	
	            	 layer.msg(obj.message,{icon:2,time:2000});	
	            	 return;
	             }
	         }
	    });
		 time(this);
	}    
}
function time(ele) {
    if (waitTime == 0) {
        ele.disabled=false;
        ele.value = "重新发送";
        waitTime = 60;// 恢复计时
    } else {
        ele.disabled=true;
        ele.value = waitTime + "秒后重新发送";
        waitTime--;
        setTimeout(function() {
            time(ele)// 关键处-定时循环调用
        }, 1000)
    }
}
	function next_step(e){
			var step=$('.reg_process ul li');
			step.removeClass('current');
			var index=$(e).parents('.page_step').index();
			step.eq(index+1).addClass('current');
			$(e).parents('.page_step').addClass('hide');
			var status=$(e).attr("id");
			if (status=='class1') {
				$(e).parents('.page_step').next().find("form").eq(0).removeClass("hide");
				$(e).parents('.page_step').next().find("form").eq(0).siblings().addClass("hide");
			} else if(status=='class2'){
				$(e).parents('.page_step').next().find("form").eq(1).removeClass("hide");
				$(e).parents('.page_step').next().find("form").eq(1).siblings().addClass("hide");
			}
			$(e).parents('.page_step').next().removeClass('hide');
	}
	function register(e){	
		var photeyzm="${code}";
		var phone="${phone}";	
		alert(photeyzm);
		if(photeyzm==$("#verify_code").val() && phone==$("#phone").val()){
			var url = "../user/hqt_registeradd.do";
			var data = $("#reg_form").serialize();	
			$.ajax({
				"url" : url,
				"data" : data,
				"type" : "POST",
				"dataType" : "json",
				"success" : function(obj) {
					if (obj.state == 0) {
						layer.msg(obj.message,{icon:2,time:1000});
						return;
					}else{
						layer.msg(obj.message,{icon:1,time:1000},function(){ next_step(e);});								
					}				
				}
			}); 		
		}else if(photeyzm != $("#verify_code").val() && phone==$("#phone").val()){
			layer.msg("验证码输入错误",{icon:2,time:1000});
		}else{
			layer.msg("验证码和手机号不匹配",{icon:2,time:1000});
		}		
	}
	
</script>		
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
</html>

