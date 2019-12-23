<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/selectFilter.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/index.css" />
<script src="${pageContext.request.contextPath}/js/web/xgk/jquery-1.11.0.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/js/web/xgk/wow.min.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/web/xgk/jquery.countup.min.js"></script>
<script src="${pageContext.request.contextPath}/js/web/xgk/jquery.waypoints.min.js"></script>
<script src="${pageContext.request.contextPath}/js/web/xgk/selectFilter.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/H-ui.admin.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/layer/2.4/layer.js"></script>
<script src="${pageContext.request.contextPath}/js/web/xgk/register.js" type="text/javascript" charset="utf-8"></script>
</head>
<body>
		<header class="padding-side login_head">
			<nav class="">
				<ul class="margin_top1">
					<li><a href="${pageContext.request.contextPath}/cp/xgk_index.do">官方首页</a></li>
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
						<li class="pull-left current fontwei">选择身份</li>
						<li class="pull-left fontwei">注册信息</li>
						<li class="pull-left fontwei">注册账号</li>
					</ul>
				</div>

				<div class="status margin_bot">
					<ul class="page_step step1 margin_bot margin_top">
						<li><a class="active wow bounceInLeft" id="class1" href="javascript:void(0)" onclick="next_step(this)">个人用户</a></li>
						<li class="margin_top"><a class="wow bounceInRight" id="class2" href="javascript:void(0)" onclick="next_step(this)">我是咨询师</a></li>
					</ul>

					<div class="page_step step2 margin_top hide padding-side2" style="width: 100%;">
						<form class="user1" action=""<!--  method="post" onsubmit="return " -->>
							<fieldset id="">
								<legend class="">
									<h4 class="text-primary margin_bot1 fontwei">注册新用户
										<span class="small text-muted padding-side">为使您享受更优质的服务体验，请确保各项信息的准确性</span>
									</h4>
								</legend>
								<h4 class="text-primary fontwei">填写注册信息</h4>
								<div class="padding-side2 margin_bot margin_top1">
									<div class="form-group">
										<label for="username"><span class="text-danger">&lowast;</span> 真实姓名：</label>
										<input id="username" type="text" placeholder="请填写您的真实姓名"/>
										<span class="padding-side glyphicon text-muted"> 你的真实姓名，保存后不可修改</span>
									</div>
									<div class="form-group">
										<label for="mobile"><span class="text-danger">&lowast;</span> 手机号码：</label>
										<input id="mobile" type="text" placeholder="请填写11位手机号码"/>
										<span class="padding-side glyphicon"></span>
									</div>
									<div class="form-group">
										<label for="captcha"><span class="text-danger">&lowast;</span> 验&nbsp;&nbsp;证&nbsp;&nbsp;码：</label>
										<input id="captcha" type="text" placeholder="请填写验证码"/>
										<a  class="get_verify btn btn-default" id="get_verify" onclick="sendMobileMessage(0)" href="javascript:;" >获取手机验证码</a>
									</div>
									<div class="form-group">
										<label for="password"><span class="text-danger">&lowast;</span> 密&emsp;&emsp;码：</label>
										<input id="password" type="password" title="请填写6-16位数字、字母或符号作为密码" placeholder="请填写6-16位数字、字母或符号作为密码"/>
										<span class="glyphicon padding-side"> </span>
									</div>
									<div class="form-group">
										<label for="confirm"><span class="text-danger">&lowast;</span> 确认密码：</label>
										<input id="confirm" type="password" placeholder="请再次输入密码"/>
										<span class="glyphicon padding-side"> </span>
									</div>
								</div>

								<h4 class="text-primary fontwei">完善学生信息
									<span class="small text-muted padding-side">为使您享受更优质的服务体验，请确保各项信息的准确性</span>
								</h4>
								<div class="padding-side2 margin_top1 margin_bot" style="position: relative;">
									<div class="form-group">
										<label for="school">&emsp;就读学校：</label>
										<input id="school" type="text" placeholder="请填写你的学校名称"/>
									</div>
									<div class="form-group">
										<label for="object">&emsp;科&emsp;&emsp;类：</label>
										<input id="object" type="text" placeholder=""/>
									</div>
									<div class="form-group">
										<label for="score">&emsp;分&emsp;&emsp;数：</label>
										<input id="score" type="text" placeholder=""/>
									</div>
									<div class="form-group">
										<label for="year"><span class="text-danger">&lowast;</span> 高考年度：</label>
										<!--<input id="year" type="text" placeholder=""/>-->
										<div class="filter-box inline_block" style="width: 200px;display: inline-block;">
											<div class="filter-text" style="overflow: hidden;overflow: inherit;background-color: transparent;">
												<input class="filter-title" type="text" readonly placeholder="pleace select"  style="background-color: transparent;border-radius: 0;box-shadow: 0 0 0;"/>
												<i class="icon icon-filter-arrow"></i>
											</div>
											<select name="filter" id="cee_year">
												<option value="请选择高考年度" selected>请选择高考年度</option>
												<option value="2020" >2020年</option>
												<option value="2019">2019年</option>
												<option value="2018">2018年</option>
												<option value="2017">2017年</option>
												<option value="2016">2016年</option>
												<option value="2015">2015年</option>
											</select>
										</div>
										<span class="glyphicon padding-side"> </span>
									</div>

									<div class="reg_tip">
										<h4 class="text-danger fontwei">温馨提示：</h4>
										<div class="padding-side2">
											本栏中的和官方的说法的呵呵和人合伙二号合法的和任何人还不如新色版额
										</div>
									</div>
								</div>
							</fieldset>
							<div class="padding-side2">
								<input type="checkbox" name="" id="checkbox" onclick="agree('checkbox','submit')"/>
								<span class="">我已阅读并接受<a class="text-primary" href="">《用户协议》</a>及<a class="text-primary" href="">《隐私政策》</a></span>
							</div>
							<div class="reg_submit padding-side2 margin_top1 margin_bot">
								<input class="btn btn-default" type="button" onclick="register(0)" value="注册" id="submit" disabled="true"/>
							</div>
						</form>

						<form class="user2" action="" <!-- method="post" onsubmit="return " -->>
							<fieldset id="">
								<legend class="">
									<h3 class="text-primary margin_bot1">注册新用户
										<span class="small text-muted padding-side">为使您享受更优质的服务体验，请确保各项信息的准确性</span>
									</h3>
								</legend>
								<h3 class="text-primary">填写注册信息</h3>
								<div class="padding-side2 margin_bot margin_top1" style="position: relative;">
									<div class="form-group">
										<label for="username1"><span class="text-danger">&lowast;</span> 真实姓名：</label>
										<input id="username1" type="text" placeholder="请填写您的真实姓名"/>
										<span class="glyphicon text-muted padding-side">请填写考生真实姓名，保存后不可修改</span>
									</div>
									<div class="form-group">
										<label for="mobile1"><span class="text-danger">&lowast;</span> 手机号码：</label>
										<input id="mobile1" type="text" placeholder="请填写11位手机号码"/>
										<span class="glyphicon text-danger padding-side"> </span>
									</div>
									<div class="form-group">
										<label for="captcha1"><span class="text-danger">&lowast;</span> 验&nbsp;&nbsp;证&nbsp;&nbsp;码：</label>
										<input id="captcha1" type="text" placeholder="请填写验证码"/>
										<a class="get_verify btn btn-default" id="get_verify1" onclick="sendMobileMessage(1)" href="javascript:void(0)">获取手机验证码</a>
									</div>
									<div class="form-group">
										<label for="password1"><span class="text-danger">&lowast;</span> 密&emsp;&emsp;码：</label>
										<input id="password1" type="password" onblur="checkpwd($(this))" placeholder="请填写6-16位数字、字母或符号作为密码"/>
										<span class="glyphicon text-success padding-side"> </span>
									</div>
									<div class="form-group">
										<label for="confirm1"><span class="text-danger">&lowast;</span> 确认密码：</label>
										<input id="confirm1" type="password" placeholder="请再次输入密码"/>
										<span class="glyphicon text-danger padding-side"> </span>
									</div>
									<div class="form-group">
										<label for="vocation1">&nbsp;&nbsp;&nbsp;从事职业：</label>
										<input id="vocation1" type="text" placeholder="请输入您的职业名"/>
									</div>

									<div class="reg_tip hidden-xs" >
										<h4 class="text-danger fontwei">温馨提示：</h4>
										<div class="padding-side2">
											本栏中的和官方的说法的呵呵和人合伙二号合法的和任何人还不如新色版额
										</div>
									</div>
								</div>

							</fieldset>
							<div class="padding-side2">
								<input type="checkbox" name="" id="checkbox1" onclick="agree('checkbox1','submit1')"/>
								<span class="">我已阅读并接受<a class="text-primary" href="">《用户协议》</a>及<a class="text-primary" href="">《隐私政策》</a></span>
							</div>
							<div class="reg_submit padding-side2 margin_top1 margin_bot">
								<input class="btn btn-default" onclick="register(1)" type="button" value="注册" id="submit1" disabled="true"/>
							</div>
						</form>
					</div>

					<div class="page_step step3 hide">
						<div class="margin_top margin_bot">
							<p class="">您的账号<label class="text-success">注册已完成 <span class="glyphicon glyphicon-ok-sign text-success"></span></label>，账号名称为您的手机号。</p>
							<p class="text-center margin_top"><a class="btn btn-primary" href="../user/xgk_login.do">返回登录</a></p>
						</div>
					</div>

				</div>
			</div>
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
			
			//这里是选择框初始化
			$('.filter-box').selectFilter({
				callBack: function(val) {
					//返回选择的值
					//						console.log(val+'-是返回的值')
				}
			});
		</script>
		<c:import url="../xgk/footer.jsp"></c:import>
	</body>

</html>

