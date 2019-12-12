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
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/H-ui.admin.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/layer/2.4/layer.js"></script>
</head>

<body>
	<!-- 页面顶部-->
	<c:import url="header.jsp"></c:import>	
		<main class="container margin_top margin_bot">
			<div class="test_instruction margin_top">
				<section class="row">
					<!-- thumbnail -->
					<div class="col-md-6 leftLoop" style="padding:0">
						<img style="width: 100%;" src="${pageContext.request.contextPath}/img/xgk/car.jpg" >
						<div class="caption">
							<h3 class="text-center fontwei margin_top1">霍兰德职业兴趣测评</h3>
							<p class="margin_top1 texts_hide">在行色匆匆的世界里，懂得如何从容；面对莫测的变化和以外，总能有所预测；任凭外界喧嚣浮华，始终坚守本心。人生的每一步，张弛有度，且游刃有余。</p>
							<p class="text-right margin_top margin_bot"><a href="javascript:;" onclick="login('hld')" class="btn btn-primary" role="button">开始测试 >></a></p>
						</div>
					</div>
					<div class="col-md-6 rightLoop" style="padding:0">
						<img style="width: 100%;" src="${pageContext.request.contextPath}/img/xgk/car.jpg" >
						<div class="caption">
							<h3 class="text-center fontwei margin_top1">MBTI职业性格测评</h3>
							<p class="margin_top1 texts_hide">在行色匆匆的世界里，懂得如何从容；面对莫测的变化和以外，总能有所预测；任凭外界喧嚣浮华，始终坚守本心。人生的每一步，张弛有度，且游刃有余。</p>
							<p class="text-right margin_top margin_bot"><a href="javascript:;" onclick="login('mbti')" class="btn btn-primary" role="button">开始测试 >></a></p>
						</div>
					</div>					
				</section>
			</div>
		</main>
	<!-- 右侧边栏-->
	<c:import url="../public/side_right.jsp"></c:import>
	<!-- 页面底部-->
	<c:import url="footer.jsp"></c:import>	
</body>
<script type="text/javascript">
var uid="${uid}";
function login(e){
	if(uid==null || uid==""){		
		layer.confirm('未登陆状态，请先进行登陆？ 确定登陆',{icon: 1, btn: ['确定登陆', '取消']},function(index){
			location.href ="../user/xgk_login.do?nowUrl="+window.location.href;
		}); 	
	}else{
		var url = "/cp/xgk_cognition_evaluation.do";
		var  data = "uid=" + uid + "&type=" + e;
		$.ajax({
			"url":url,
			"data":data,
			"type":"POST",
			"dataType":"json",
			"success":function(obj){
				if(obj.state == 0){
					//未做过认知测评
					if(e=="hld"){
						location.href ="../cp/xgk_answer_hld.do";
					}else{
						location.href ="../cp/xgk_answer_mbti.do";
					}
				} else {
					//已做过认知测评 弹出选项提示
					layer.confirm('您已做过认知测评，是否继续？', {
						icon : 3,
						btn : [ '确定', '取消' ]
					}, function(index) {
						if(e=="hld"){
							location.href ="../cp/xgk_answer_hld.do";
						}else{
							location.href ="../cp/xgk_answer_mbti.do";
						}
						layer.close(index);
					});
				}
			}
		});
	}
}
</script>
</html>
