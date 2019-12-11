<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<title>贵州好前途教育科技有限公司</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/index.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/sch_search.css"/>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/web/common.js" type="text/javascript" charset="utf-8"></script>
	</head>

	<body>
		<!-- 页面顶部-->
		<c:import url="header.jsp"></c:import>

		<main class="sch_search">
			<section class="sch_search container">
				
				<div style="padding: 1em 100px 1em;">
				    <form class="bs-example bs-example-form" role="form">
				        <div class="input-group input-group-lg">
				            <span class="input-group-addon"><span class="glyphicon glyphicon-search text-muted"></span></span>
				            <input type="text" class="form-control" placeholder="搜索你感兴趣的课程">
				        </div>
				    </form>
				</div>

				<div class="panel panel-default">
				    <ul class="list-group slice_list">
				        <li class="list-group-item">
				        	<dl class="pull-left item_tit">
				        		<dt>院校属性</dt>
				        	</dl>
				        	<dl class="pull-left item_body">
				        		<dd class=""><a class="active" href="javascript:void(0)">全部</a></dd>
				        		<dd><a href="javascript:void(0)">985</a></dd>
				        		<dd><a href="javascript:void(0)">211</a></dd>
				        		<dd><a href="javascript:void(0)">双一流</a></dd>
				        		<dd><a href="javascript:void(0)">行业领军</a></dd>
				        		<dd><a href="javascript:void(0)">研究生院</a></dd>
				        	</dl>
				        	<div class="clearfix"></div>
				        </li>
				        <li class="list-group-item">
				        	<dl class="pull-left item_tit">
				        		<dt>院校类型</dt>
				        	</dl>
				        	<dl class="pull-left item_body">
				        		<dd><a class="active" href="javascript:void(0)">综合类</a></dd>
				        		<dd><a href="javascript:void(0)">理工类</a></dd>
				        		<dd><a href="javascript:void(0)">师范类</a></dd>
				        		<dd><a href="javascript:void(0)">农林类</a></dd>
				        		<dd><a href="javascript:void(0)">政法类</a></dd>
				        		<dd><a href="javascript:void(0)">医药类</a></dd>
				        		<dd><a href="javascript:void(0)">财经类</a></dd>
				        		<dd><a href="javascript:void(0)">民族类</a></dd>
				        		<dd><a href="javascript:void(0)">语言类</a></dd>
				        		<dd><a href="javascript:void(0)">旅游类</a></dd>
				        		<dd><a href="javascript:void(0)">体育类</a></dd>
				        		<dd><a href="javascript:void(0)">艺术类</a></dd>
				        		<dd><a href="javascript:void(0)">军事类</a></dd>
				        	</dl>
				        </li>
				        <li class="list-group-item">
				        	<dl class="pull-left item_tit">
				        		<dt>院校省份</dt>
				        	</dl>
				        	<dl class="pull-left item_body">
				        		<dd class=""><a class="active" href="javascript:void(0)">全部</a></dd>
				        		<dd><a href="javascript:void(0)">985</a></dd>
				        		<dd><a href="javascript:void(0)">211</a></dd>
				        		<dd><a href="javascript:void(0)">双一流</a></dd>
				        		<dd><a href="javascript:void(0)">行业领军</a></dd>
				        		<dd><a href="javascript:void(0)">研究生院</a></dd>
				        	</dl>
				        </li>
				    </ul>
				   
				</div>
			<script type="text/javascript">
		    	//点击筛选样式
				$(".item_body dd a").click(function() {
					$(this).parents("dl").children().find("a").removeClass("active");
					$(this).addClass("active");
				})
		    	
		    </script>
			<div class="" id="">
				<ul class="clearfix course_list margin_top1">
					<li class="pull-left padding-side">
						<div class="thumbnail">
							<a href="${pageContext.request.contextPath}/web/xgk/xgk_coursePlay.jsp" class="converse_info">
								<img src="${pageContext.request.contextPath}/img/xgk/car.jpg"/>
							</a>
							<a href="${pageContext.request.contextPath}/web/xgk/xgk_coursePlay.jsp" class="caption flex_jc_sb">
								<span>语文预习</span>
								<span>高一上学期第一单元</span>
							</a>
							<p class="text-left text-left"><span class="label label-info" href="">预习</span></p>
						</div>
					</li>
					<li class="pull-left padding-side">
						<div class="thumbnail">
							<a href="${pageContext.request.contextPath}/web/xgk/xgk_coursePlay.jsp" class="converse_info">
								<img src="${pageContext.request.contextPath}/img/xgk/car.jpg"/>
							</a>
							<a href="${pageContext.request.contextPath}/web/xgk/xgk_coursePlay.jsp" class="caption flex_jc_sb">
								<span>语文预习</span>
								<span>高一上学期第一单元</span>
							</a>
							<p class="text-left text-left"><span class="label label-warning" href="">预习</span></p>
						</div>
					</li>
					<li class="pull-left padding-side">
						<div class="thumbnail">
							<a href="${pageContext.request.contextPath}/web/xgk/xgk_coursePlay.jsp" class="converse_info">
								<img src="${pageContext.request.contextPath}/img/xgk/car.jpg"/>
							</a>
							<a href="${pageContext.request.contextPath}/web/xgk/xgk_coursePlay.jsp" class="caption flex_jc_sb">
								<span>语文预习</span>
								<span>高一上学期第一单元</span>
							</a>
							<p class="text-left text-left"><span class="label label-danger" href="">预习</span></p>
						</div>
					</li>
					<li class="pull-left padding-side">
						<div class="thumbnail">
							<a href="${pageContext.request.contextPath}/web/xgk/xgk_coursePlay.jsp" class="converse_info">
								<img src="${pageContext.request.contextPath}/img/xgk/car.jpg"/>
							</a>
							<a href="${pageContext.request.contextPath}/web/xgk/xgk_coursePlay.jsp" class="caption flex_jc_sb">
								<span>语文预习</span>
								<span>高一上学期第一单元</span>
							</a>
							<p class="text-left text-left"><span class="label label-success" href="">预习</span></p>
						</div>
					</li>
				</ul>
				<!--分页-->
			    <div class="text-center">
			    	<ul class="pagination margin_bot1 margin_top1">
						<li><a href="#">&laquo;</a></li>
						<li class="active"><a href="#">1</a></li>
						<li class="disabled"><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#">&raquo;</a></li>
					</ul>
			    </div>
			    <!--/分页-->
			</div>
			</section>
		</main>

	<!-- 页面右侧-->
	<c:import url="../public/side_right.jsp"></c:import>	
	<!-- 页面底部-->
	<c:import url="footer.jsp"></c:import>

	</body>

</html>