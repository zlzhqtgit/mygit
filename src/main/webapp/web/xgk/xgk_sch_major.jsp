<%@ page contentType="text/html; charset=utf-8"
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
		<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/layer/2.4/layer.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/H-ui.admin.js"></script>
	</head>

	<body>
		<c:import url="header.jsp"></c:import>

		<main class="">
			<section class="sch_search container">
				
				<div style="padding: 1em 100px 1em;">
				    <form class="bs-example bs-example-form" role="form">
				        <div class="input-group input-group-lg">
				            <span class="input-group-addon"><span class="glyphicon glyphicon-search text-muted"></span></span>
				            <input type="text" class="form-control" placeholder="搜索你感兴趣的专业">
				        </div>
				    </form>
				</div>

				<div class="panel panel-default">
				    <ul class="list-group slice_list">
				        <li class="list-group-item">
				        	<dl class="pull-left item_tit">
				        		<dt>专业属性</dt>
				        	</dl>
				        	<dl class="pull-left item_body">
				        		<dd class=""><a class="active" href="javascript:void(0)">全部</a></dd>
				        		<dd><a href="javascript:void(0)">本科专业</a></dd>
				        		<dd><a href="javascript:void(0)">专科专业</a></dd>
				        	</dl>
				        	<div class="clearfix"></div>
				        </li>
				        <li class="list-group-item">
				        	<dl class="pull-left item_tit">
				        		<dt>学科要求</dt>
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
				        		<dt>本科专业类别</dt>
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
				        <li class="list-group-item">
				        	<dl class="pull-left item_tit">
				        		<dt>专科专业类型</dt>
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
				<p class="text-center margin_bot margin_top"><a class="btn btn-primary fontwei begin_btn" href="">开始查询</a></p>
				
				<div class="panel panel-default">
				    <div class="tab_list padding-side2">
				    	<ul class="tab_head clearfix">
				    		<li class="cur">本科专业</li>
				    		<li>专科专业</li>
				    	</ul>
				    	<div class="tab_body">
				    		<div class="tab_b1 cur">
				    			<div class="major_info">
				    				<div class="clearfix major_info_head">
				    					<span class="pull-left"><h3>哲学(01)</h3></span>
				    					<span class="pull-right  text-muted">1个专业类>4个本科专业</span>
				    				</div>
					    			<div class="clearfix major_info_sub">
				    					<span class="pull-left"><h4>哲学类（0101）</h4></span>
				    					<span class="pull-right text-muted">4个专业</span>
					    			</div>
					    			<ul class="major_list clearfix margin_top1">
					    				<li class=""><a href="xgk_sch_major_info.jsp">哲学</a></li>
					    				<li class=""><a href="xgk_sch_major_info.jsp" onmouseover="tips($('.tipsbox').html(),this,1)">逻辑学</a></li>
					    				<li class=""><a href="xgk_sch_major_info.jsp">伦理学</a></li>
					    				<li class=""><a href="xgk_sch_major_info.jsp">宗教学</a></li>
					    			</ul>
				    			</div>
				    			<div class="major_info">
				    				<div class="clearfix major_info_head">
				    					<span class="pull-left"><h3>哲学(01)</h3></span>
				    					<span class="pull-right text-muted">1个专业类>4个本科专业</span>
				    				</div>
					    			<div class="clearfix major_info_sub">
				    					<span class="pull-left"><h4>哲学类（0101）</h4></span>
				    					<span class="pull-right text-muted">4个专业</span>
					    			</div>
					    			<ul class="major_list clearfix margin_top1">
					    				<li class=""><a href="xgk_sch_major_info.jsp" onmouseover="tips($('.tipsbox').html(),this,1)">哲学</a></li>
					    				<li class=""><a href="xgk_sch_major_info.jsp">逻辑学</a></li>
					    				<li class=""><a href="xgk_sch_major_info.jsp">伦理学</a></li>
					    				<li class=""><a href="xgk_sch_major_info.jsp">宗教学</a></li>
					    			</ul>
				    			</div>
				    		</div>
				    		<div class="tab_b2">
				    			<div class="major_info">
				    				<div class="clearfix major_info_head">
				    					<span class="pull-left"><h3>哲学(02)</h3></span>
				    					<span class="pull-right text-muted">1个专业类>4个本科专业</span>
				    				</div>
					    			<div class="clearfix major_info_sub">
				    					<span class="pull-left"><h4>哲学类（0101）</h4></span>
				    					<span class="pull-right text-muted">4个专业</span>
					    			</div>
					    			<ul class="major_list clearfix margin_top1">
					    				<li class=""><a href="sch_major_info.html" class="tooltip-test">哲学</a></li>
					    				<li class=""><a href="sch_major_info.html">逻辑学</a></li>
					    				<li class=""><a href="sch_major_info.html">伦理学</a></li>
					    				<li class=""><a href="sch_major_info.html">宗教学</a></li>
					    			</ul>
				    			</div>
				    		</div>
				    	</div>
				    </div>
				    
				    <!--tips-->
				    <div class="tipsbox" style="display: none;">
				    	<h4 style="color: #333;">可从事的职业</h4>
				    	<div style="color: #333;"> 销售、编辑、文案、秘书、销售、编辑、文案、秘书、销售、编辑、文案、秘书、销售、编辑、文案、秘书、 </div>
				    </div>
				    <!--/tips-->
				    
				    <script src="js/layer/2.4/layer.js" type="text/javascript" charset="utf-8"></script>
				    <script type="text/javascript">
				    	//弹框
						function tips(content,el,director){
							layer.tips(content, el, {
							  tips: [director, '#fff'],
							  time: 2500,
							});
						}
				    	
						//点击筛选样式
						$(".item_body dd a").click(function() {
							$(this).parents("dl").children().find("a").removeClass("active");
							$(this).addClass("active");
						})
				    	
				    	$(document).ready(function() {
//				    		$('.tab_body .tab_b2').hide();
				    		$('.tab_head li').click(function(){
				    			$(this).parent().children().removeClass('cur');
				    			$(this).addClass('cur');
				    			var index=$(this).index();
				    			$(this).parents('.tab_list').find('.tab_body').children().removeClass('cur');
				    			$(this).parents('.tab_list').find('.tab_body').children().eq(index).addClass('cur');
				    		})
				    	})
				    	$(function () { $("[data-toggle='tooltip']").tooltip(); });
				    </script>
				    
				</div>
				
			
		</main>

		<!-- 右侧边栏-->
	<c:import url="../public/side_right.jsp"></c:import>
	<!-- 页面底部-->
	<c:import url="footer.jsp"></c:import>

	</body>

</html>