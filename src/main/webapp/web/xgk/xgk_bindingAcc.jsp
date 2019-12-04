<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width,initial-scale=0.5,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>绑定账号</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/selectFilter.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/index.css" />
		<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="${pageContext.request.contextPath}/js/web/xgk/selectFilter.js"></script>
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
			<div class="register_box margin_top border padding-side2">
				<div class="tab_box margin_bot1">
					<ul class="clearfix tab_hd width100">
						<li class="current pull-left fontwei text-center">已有账号,请绑定</li>
						<li class="pull-left fontwei text-center">没有账号,完善账号信息</li>
					</ul>
					<div class="tab_bd">
						<div class="current">
							<form class="flex_Al_c" action="" method="post" onsubmit="" style="display: flex;justify-content: center;">
								<div class="" style="width: 50%;">
									<div class="form-group margin_top">
										<label for="name"><span class="text-danger">&lowast;</span> 手&ensp;&ensp;机 </label>
										<input type="" name="tel" id="tel" value="" />
										<span class="glyphicon text-danger padding-side"> </span>
									</div>
									<div class="form-group">
										<label for="name"><span class="text-danger">&lowast;</span> 验证码 </label>
										<input type="" name="captcha0" id="captcha0" value="" />
										<a class="get_verify btn btn-default" href="javascript:void(0)">获取手机验证码</a>
									</div>
									<p class="margin_top margin_bot text-center">
										<input class="btn btn-primary fontwei" type="submit" value="提交绑定"/>
									</p>
								</div>
							</form>
						</div>
						<div class="">
							<form class="user1" action="" method="post" onsubmit="return register1()">
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
											<a  class="get_verify btn btn-default" href="javascript:viod(0)">获取手机验证码</a>
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
												<select name="filter">
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
									<input type="checkbox" name="" id="checkbox" onclick="agree('checkbox','submit1')"/>
									<span class="">我已阅读并接受<a class="text-primary" href="">《用户协议》</a>及<a class="text-primary" href="">《隐私政策》</a></span>
								</div>
								<div class="reg_submit padding-side2 margin_top1 margin_bot">
									<input class="btn btn-primary" type="submit" value="提交注册" id="submit1" disabled="true"/>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		
			<script type="text/javascript">
				//这里是选择框初始化
				$('.filter-box').selectFilter({
					callBack: function(val) {
						//返回选择的值
						//console.log(val+'-是返回的值')
					}
				});
				
				$(function() {
					tab_list($('.tab_hd'),'click','.tab_box');
					
					/**
					 * tab选项卡
					 * @param {Object} el
					 * @param {Object} event
					 */
					function tab_list(el,event,container){
						el.find('li').on(event, function(){
							$(this).parent().find("li").removeClass("current");
							$(this).addClass("current");
							var index = $(this).index();
							$(this).parents(container).find(".tab_bd").children().removeClass("current");
							$(this).parents(container).find(".tab_bd").children().eq(index).addClass("current");
						})
					}
	
				})
				
			</script>
			
			<script src="${pageContext.request.contextPath}/js/web/xgk/binding_acc.js" type="text/javascript" charset="utf-8"></script>
		</section>
		
		<!-- 页面右侧-->
		<c:import url="../public/side_right.jsp"></c:import>
		<!-- 页面底部-->
		<c:import url="footer.jsp"></c:import>	
	
	</body>
</html>
