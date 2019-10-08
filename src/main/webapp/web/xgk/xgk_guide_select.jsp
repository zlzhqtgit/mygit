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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/index.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/guide_select.css" />		
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
</head>
<body>
<!-- 页面顶部-->
<c:import url="header.jsp"></c:import>	
	<main class="container margin_top">
			<section class="row">
				<div class="margin_top">
					<div class="thumbnail">
						<div class="caption answer_temp">
							<div class="user_say">
								<span class="glyphicon glyphicon-user text-muted"  style="font-size: 2em;margin-right:10px;line-height: 2em;"></span><span class="text-muted fontwei">您好！请选择你的选课方式</span>
							</div>
							<div class="" id="Modal" style="">
								<div class="bg-model"></div>
								<div class="Modal_box">
									<h2 class="text-center">选择职业</h2>
									<div class="padding-side choose_items" style="height: 16em;width: auto;overflow: auto;">
										<div class="padding-side">
											<input type="checkbox" name="teacher" id="teacher" value="" /><label for="teacher">教育行业</label>
											<ul>
												<li>教师</li>
											</ul>
										</div>
										<div class="padding-side">
											<input type="checkbox" name="doctor" id="doctor" value="" /><label for="doctor">医疗业</label>
											<ul>
												<li>医生</li>
											</ul>
										</div>
										<div class="padding-side">
											<input type="checkbox" name="empl" id="empl" value="" /><label for="empl">汽车制造</label>
											<ul>
												<li>工程师</li>
												<li>汽车设计师</li>
											</ul>
										</div>
										<div class="padding-side">
											<input type="checkbox" name="it" id="it" value="" /><label for="it">互联网</label>
											<ul>
												<li>工程师</li>
												<li>汽车设计师</li>
											</ul>
										</div>
										<div class="padding-side">
											<input type="checkbox" name="building" id="building" value="" /><label for="building">建筑业</label>
											<ul>
												<li>工程师</li>
												<li>汽车设计师</li>
											</ul>
										</div>
										<div class="padding-side">
											<input type="checkbox" name="finance" id="finance" value="" /><label for="finance">金融业</label>
											<ul>
												<li>工程师</li>
												<li>汽车设计师</li>
											</ul>
										</div>
									</div>
							        <p class="modal-footer">
							        	<a href="" class="btn btn-primary" data-dismiss="modal">取消</a><a onclick='usercp()' class="btn btn-primary">确定</a>
							        </p>
								</div>
							</div>
							<div class="select_options">
								<a href="${pageContext.request.contextPath}/xk/xgk_customise.do" class="">
									<div class="select_l">
										<h2 class="fontwei text-center">自定义选科</h2>
										<p class="tindent">已经有确定的学科选择，想进一步了解专业、职业与学科之间的匹配程度。</p>
									</div>
								</a>
								<!-- <a href="" onclick="usercp()" class=""> -->
								<a onclick="show_model()" class="">
									<div class="select_r">
										<h2 class="fontwei text-center">测评分析选科</h2>
										<p class="tindent">没有确定的学科选择，想通过测评分析推测出适合的学科、专业和职业。</p>
									</div>
								</a>
							</div>
							<script type="text/javascript">
								function show_model() {
									$('#Modal').show();
								}
							</script>
						</div>
					</div>
				</div>
			</section>
		</main>
<!-- 页面底部-->
<c:import url="side_right.jsp"></c:import>	
<!-- 页面底部-->
<c:import url="footer.jsp"></c:import>	
</body>
<script type="text/javascript">
var id="${id}";
$( "#xgk"+id).addClass( "active" );
function usercp(){
	var url = "../xk/xgk_cpxk.do";
	var data = "";
	$.ajax({
		"url": url,
		"data": data,
		"type": "POST",
		"dataType": "json",
		"success": function(obj) {
			if(obj.state == 0) {
				alert(obj.message);
				return;
			}			
			location.href = "../xk/xgk_cpfxselectreport.do?personalityCode="+obj.message;
		}
	});
}
</script>
</html>
