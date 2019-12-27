<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=0.1">
		<title>贵州好前途教育科技有限公司</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />	
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/animate.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/index.css" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/web/xgk/wow.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="${pageContext.request.contextPath}/js/layer/2.4/layer.js"></script>
		<script src="http://res.wx.qq.com/connect/zh_CN/htmledition/js/wxLogin.js"></script>
	</head>
	<body>
		<!-- 页面顶部-->
		<c:import url="header.jsp"></c:import>
		<div class="padding-side2 course_navlist_wrap" style="height: 26em;">
			<h3 class="text-primary container">新手教程</h3>
			<ul class="course_navlist list-unstyled clearfix">
				<li>
					<div class="">
						<a href="${pageContext.request.contextPath}/cp/xgk_index.do">首页</a>
					</div>
				</li>
				<li>
					<div class="">
						<a href="${pageContext.request.contextPath}/sub/xgk_subject_score.do">学科探索</a>
						<div class="sub_nav">
							<div class="single_line">
								<label></label>
							</div>
							<div class="single_item">
								<a href="${pageContext.request.contextPath}/sub/xgk_subject_score.do"><div class=""><span class="">学科潜能分析</span></div></a>
								<p class="text-primary wow heartBeat">帮助你更好的了解及发掘自身潜能</p>
							</div>
						</div>
					</div>
				</li>
				<li>
					<div class="">
						<a href="${pageContext.request.contextPath}/cp/xgk_choice.do">认知测评</a>
						<div class="sub_nav">
							<div class="apart_line"><img src="${pageContext.request.contextPath}/img/xgk/apart.png" class="img-responsive"/></div>
							<div class="third_apart">
								<div class="lc">
									<a href="${pageContext.request.contextPath}/cp/xgk_answer_mbti.do"><div class=""><span class="">MBTI职业性格测评</span></div></a>
									<p class="text-primary wow heartBeat">帮助你更好的了解及发掘自身潜能</p>
								</div>
								<div class="rc">
									<a href="${pageContext.request.contextPath}/cp/xgk_answer_hld.do">
										<div class="">
											<span class="" style="font-size: 11.8px;line-height: 1.2em;">霍兰德职业兴趣测评</span>
										</div>
									</a>
									<p class="text-primary wow heartBeat">帮助你更好的了解及发掘自身潜能</p>
								</div>
							</div>
						</div>
					</div>
				</li>
				<li>
					<div class="">
						<a href="${pageContext.request.contextPath}/xk/xgk_guide_select.do">选科指导</a>
						<div class="sub_nav">
							<div class="single_line">
								<label></label>
							</div>
							<div class="single_item">
								<a href="${pageContext.request.contextPath}/xk/xgk_guide_select.do"><div class=""><span class="">选科指导</span></div></a>
								<p class="text-primary wow heartBeat">帮助你更好的了解及发掘自身潜能</p>
							</div>
						</div>
					</div>
				</li>
				<li>
					<div class="">
						<a href="">职业库</a>
						<div class="sub_nav">
							<div class="single_line">
								<label></label>
							</div>
							<div class="single_item">
								<a href="${pageContext.request.contextPath}/voc/xgk_job_blank.do"><div class=""><span class="">职业查询</span></div></a>
								<p class="text-primary wow heartBeat">帮助你更好的了解及发掘自身潜能</p>
							</div>
						</div>
					</div>
				</li>
				<li>
					<div class="">
						<a href="${pageContext.request.contextPath}/school/xgk_school_search.do">高校专业</a>
						<div class="sub_nav">
							<div class="apart_line"><img src="${pageContext.request.contextPath}/img/xgk/apart1.png" class="img-responsive"/></div>
							<div class="third_apart">
								<div class="lc">
									<a href="${pageContext.request.contextPath}/school/xgk_school_search.do"><div class=""><span class="">高校查询</span></div></a>
									<p class="text-primary wow heartBeat">帮助你更好的了解及发掘自身潜能</p>
								</div>
								<div class="rc">
									<a href="${pageContext.request.contextPath}/school/xgk_specialty_search.do"><div class=""><span class="">专业查询</span></div></a>
									<p class="text-primary wow heartBeat">帮助你更好的了解及发掘自身潜能</p>
								</div>
							</div>
						</div>
					</div>
				</li>
			</ul>
		</div>
		<script type="text/javascript">
			new WOW().init(); 
			var wow = new WOW({  
			    boxClass: 'wow',
			    animateClass: 'animated', 
			    offset: 0,
			    mobile: true, 
			    live: true
			}); 
			$(".counter").countUp();
		</script>
		<!-- 页面右侧-->
		<c:import url="../public/side_right.jsp"></c:import>
		<c:import url="../xgk/footer.jsp"></c:import>
	</body>
</html>
