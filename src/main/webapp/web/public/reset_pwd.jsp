<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/web/xgk/wow.min.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/js/layer/2.4/layer.js"></script>
<style type="text/css">
	
</style>
</head>
<body>
		<header class="padding-side login_head">
			<nav class="">
				<ul class="margin_top1">
					<li><a href="${pageContext.request.contextPath}/web/hqt_newbie_index.do">新手教程</a></li>
					<li><a href="">志愿填报QQ群</a></li>
					<li><a href="">官方微信</a></li>
					<li><a href="${pageContext.request.contextPath}/web/hqt_vip_index.do">开通/激活VIP</a></li>
					<li><a href="${pageContext.request.contextPath}/web//hqt_business_cooperation.do">商务合作</a></li>
				</ul>
			</nav>
		</header>
		
		<section>
			<div style="height:33.2em;display:flex;justify-content: center;align-items: center;">
				<div class="reset_pwd_box margin_top">
					<ul class="step clearfix" style="overflow: hidden;">
						<li class="pull-left current">身份验证</li>
						<li class="pull-left">重置密码</li>
					</ul>
					<div class="step_body">
						<form class="verify">
								<div class="" style="display: flex;justify-content: center;">
									<div class="input_group">
										<div class="" style="">
											<div class="">
												<lable class="" for="phone">手机号码：</lable>
												<input type="" name="" id="phone" value="" placeholder="请填写11位手机号码" onBlur="onchang()" />
												<span class="tip padding-side " id="explain"></span>
											</div>
										</div>	
										<div class="margin_top1">
											<lable class="" for="verifyCode">验&nbsp;&nbsp;证&nbsp;&nbsp;码：</lable>
											<input type="" name="" id="verifyCode" value="" placeholder="请填写验证码"/>
											<label class="padding-side"><a class="btn btn-primary" href="javascript:;" onclick="sendMessages()" id="get_verify">获取手机验证码</a></label>
										</div>
									</div>
								</div>
								<div class="margin_top1 text-center">
									<a class="btn btn-primary" href="javascript:history.go(-1)">返回</a>
									<a class="btn btn-primary" href="javascript:void(0)" onclick="next_step(this)">下一步</a>
								</div>
						</form>
						<form class="reset_pwd hide">
								<div class="" style="display: flex;justify-content: center;">
									<div class="input_group">
										<div class="">
											<lable class="" for="password">密&ensp;&ensp;&ensp;&ensp;码：</lable>
											<input type="password" name="" id="password" value="" placeholder="请填写6-16位数字、字母或符号作为密码"/>
											<span class="glyphicon glyphicon-ok-sign text-success"></span>
										</div>
										<div class="margin_top1">
											<lable class="" for="confirm">确认密码：</lable>
											<input type="password" name="" id="confirm" value="" placeholder="请再次输入密码"/>
											<span class="glyphicon glyphicon-remove-sign text-danger"></span>
										</div>
									</div>
								</div>
								<div class="margin_top1 text-center">
									<a class="btn btn-primary" href="javascript:void(0)" onclick="prev_step(this)">上一步</a>
									<input class="btn btn-primary" type="button" name="" id="" value="保存" onclick="update_password()"/>
								</div>
						</form>
					</div>
				</div>
			</div>	
			<script type="text/javascript">
			//验证密码正确性
			function checkpwd(obj) {
				//密码包含 数字,英文,字符中的两种以上，长度6-20
				reg_pwd = /^(?![0-9]+$)(?![a-z]+$)(?![A-Z]+$)(?!([^(0-9a-zA-Z)])+$).{6,16}$/;
				if(obj.val() == '') {
					errorport(obj, ' 密码不能为空，请重新输入');
					obj.focus();
					return false;
				} else {
					var strongRegex = new RegExp("^(?=.{8,})(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*\\W).*$", "g");
					var mediumRegex = new RegExp("^(?=.{7,})(((?=.*[A-Z])(?=.*[a-z]))|((?=.*[A-Z])(?=.*[0-9]))|((?=.*[a-z])(?=.*[0-9]))).*$", "g");
					var enoughRegex = new RegExp("(?=.{6,}).*", "g");
					if(false == enoughRegex.test(obj.val())) {
						errorport(obj, ' 密码强度不符合安全要求，请重新输入');
						obj.focus();
						return false;;
						//密码小于六位的时候，密码强度图片都为灰色 
					} else if(strongRegex.test(obj.val())) {
						success_input(obj, ' <span class="text-success">密码强度：强</span>');
						return true;
						//密码为八位及以上并且字母(大小写)、数字、特殊字符三项都包括,强度强 
					} else if(mediumRegex.test(obj.val())) {
						success_input(obj, ' <span class="text-primary">密码强度：中等</span>');
						return true;
						//密码为七位及以上并且字母、数字、特殊字符三项中有两项，强度是中等 
					} else {
						//pwd.parent().children().last().html(' 真实姓名不能为空');
						success_input(obj, ' <span class="text-danger">密码强度：弱</span>');
						return true;
						//如果密码为6位及以下，就算字母、数字、特殊字符三项都包括，强度也是弱的 
					}
				}
			}
			//比对两次输入密码
			function confirm_pwd(obj, pre) {
				var confirm = obj;
				var pwd = pre;
				if(confirm.val() == '') {
					errorport(confirm, ' 请再次输入密码');
					confirm.focus();
					return false;
				} else if(confirm.val() == pwd.val()) {
					success_input(confirm, '');
					return true;
				} else {
					errorport(confirm, ' 两次密码输入不一致');
					confirm.focus();
					return false;
				}
			}
			//成功样式
			function success_input(obj, con) {
				obj.parent().children().last().removeClass('glyphicon-remove-sign text-danger');
				obj.parent().children().last().addClass('glyphicon-ok-sign text-success');
				obj.parent().children().last().html(con);
			}

			//不成功样式
			function errorport(obj, con) {
				obj.parent().children().last().removeClass('glyphicon-ok-sign text-success');
				obj.parent().children().last().addClass('glyphicon-remove-sign text-danger');
				obj.parent().children().last().html(con);
			}
			//修改密码
			function update_password(){				
				var url = "${pageContext.request.contextPath}/hqt_update_password.do";
				var phone = $("#phone").val();
				var password = $("#password").val();
				var data = "phone=" + phone + "&password=" + password;
				var reg = /^[1][3,4,5,7,8][0-9]{9}$/;
				if(!reg.test(phone)) {
					layer.msg("请输入正确格式的手机号", {icon: 3, time: 1000});
					return;
				}
				if(!checkpwd($("#password")) || !confirm_pwd($('#confirm'), $('#password'))){
					return;
				}
				$.ajax({
					url: url,
					type: "POST",
					data: data,
					dataType: "JSON",
					success: function(obj) {
						if(obj.state == 0){
							layer.msg(obj.message,{icon:3,time:2000});
						} else {																	
							layer.msg(obj.message,{icon:6,time:2000});
							setTimeout(function(){
								//window.location.reload();
								location.href = "${pageContext.request.contextPath}/cp/xgk_index.do";
							},2000);
						}
					}
				});
			}
			//判断手机号是否输入正确
			function onchang(){
				var reg = /^[1][3,4,5,7,8][0-9]{9}$/;
				if(!reg.test($("#phone").val())){	
					$("#explain").html(" 手机格式错误").removeClass("text-success").addClass("text-danger");
				}else{
					$("#explain").html(" 手机格式正确").removeClass("text-danger").addClass("text-success");
				}
			}
			//完善注册信息发送短信
			function sendMessages() {
				var url = "${pageContext.request.contextPath}/user/send_message.do";
				var phone = $("#phone").val();
				var reg = /^[1][3,4,5,7,8][0-9]{9}$/;
				if(!reg.test(phone)) {
					layer.msg("请输入正确格式的手机号", {icon: 3, time: 1000});
					return;
				}
				settime($("#get_verify"));													
				$.ajax({
					url: url,
					type: "POST",
					data: "phone=" + phone,
					dataType: "JSON",
					success: function(obj) {
						if(obj.state == 0){
							layer.msg(obj.message,{icon:3,time:2000});
						} else {																	
							layer.msg(obj.message,{icon:6,time:2000});
							/* location.href = "${pageContext.request.contextPath}/cp/xgk_index.do";
							 */
						}
					}
				});
			}													
			//发送验证码倒计时
			var countdown = 60;
			function settime(obj) { 
			    if (countdown == 0) { 
			    		obj.attr('disabled',false); 
			    		obj.removeAttr("style","pointer-events");
				    	obj.html("获取手机验证码");
				    	countdown = 60; 
				    	return;
				} else { 
				    	obj.attr('disabled',true);
				    	obj.css("pointer-events","none"); 
				    	obj.html("重新获取验证码(" + countdown + ")");
				    	countdown--; 
				} 
				setTimeout(function() { 
				    settime(obj) }
				    ,1000) 
				}
			
			
				var step=$(".step li");
				function next_step(obj) {
					if($("#verifyCode").val() == ""){
						layer.msg("请输入验证码！",{icon:2,time:2000});
						return;
					}
					if($("#phone").val() == ""){
						layer.msg("请输入手机号！",{icon:2,time:2000});
						return;
					}
					var isOk = false;
					$.ajax({
						url: "${pageContext.request.contextPath}/hqt_verify_phone.do",
						type: "POST",
						data: "phone=" + $("#phone").val() + "&verifyCode=" + $("#verifyCode").val(),
						dataType: "JSON",
						success: function(ob) {
							if(ob.state == 0){
								layer.msg(ob.message,{icon:3,time:2000});
							}else{
								index=$(obj).parents("form").index();
								step.removeClass("current");
								step.eq(index+1).addClass("current");
								$(obj).parents("form").addClass("hide");
								$(obj).parents("form").next().removeClass("hide");
							}
						}
					});						
				}
				
				function prev_step(obj){
					index=$(obj).parents("form").index();
					step.removeClass("current");
					step.eq(index-1).addClass("current");
					$(obj).parents("form").addClass("hide");
					$(obj).parents("form").prev().removeClass("hide");
				}
				
				new WOW().init(); 
				var wow = new WOW({  
				    boxClass: 'wow',
				    animateClass: 'animated',
				    offset: 0,
				    mobile: true, 
				    live: true
				}); 
				
			</script>
		</section>
		<c:import url="../xgk/footer.jsp"></c:import>
	</body>

</html>

