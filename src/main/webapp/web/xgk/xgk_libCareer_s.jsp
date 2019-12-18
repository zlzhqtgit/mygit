<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="" />
		<title>贵州好前途教育科技有限公司</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/index.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/sch_search.css"/>
		<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="${pageContext.request.contextPath}/js/layer/2.4/layer.js"></script>
		<script src="${pageContext.request.contextPath}/js/jPages.js"></script>
	</head>

	<body>
		<!-- 页面头部-->
		<c:import url="header.jsp"></c:import>

		<main class="sch_search">
			<section class="sch_search container">
				
				<div style="padding: 1em 100px 1em;">
				    <form class="bs-example bs-example-form" role="form">
				        <div class="input-group input-group-lg">
				            <span class="input-group-addon"><span class="glyphicon glyphicon-search text-muted"></span></span>
				            <input type="text" class="form-control" placeholder="搜索你感兴趣的职业">
				        </div>
				    </form>
				</div>

				<div class="flex_jc_sb">
					<div class="panel panel-default col-md-9 col-lg-9 col-sm-9">
					    <ul class="list-group slice_list">
					        <li class="list-group-item">
					        	<dl class="pull-left item_tit">
					        		<dt>职业分类</dt>
					        	</dl>
					        	<dl class="pull-left item_body" id="industry_list">
					        		<dd><a class="active" href="javascript:;">全部</a></dd>
					        		<dd><a href="javascript:void(0)">互联网</a></dd>
					        		<dd><a href="javascript:void(0)">师贸易</a></dd>
					        		<dd><a href="javascript:void(0)">交通</a></dd>
					        		<dd><a href="javascript:void(0)">制造业</a></dd>
					        		<dd><a href="javascript:void(0)">电子</a></dd>
					        		<dd><a href="javascript:void(0)">IT计算机</a></dd>
					        		<dd><a href="javascript:void(0)">进出口</a></dd>
					        		<dd><a href="javascript:void(0)">零售批发</a></dd>
					        		<dd><a href="javascript:void(0)">运输类</a></dd>
					        		<dd><a href="javascript:void(0)">物流类</a></dd>
					        		<dd><a href="javascript:void(0)">军事类</a></dd>
					        		<dd><a href="javascript:void(0)">理工类</a></dd>
					        		<dd><a href="javascript:void(0)">微电子</a></dd>
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
					        		<dt>学历要求</dt>
					        	</dl>
					        	<dl class="pull-left item_body" id="education">
					        		<dd class=""><a class="active" href="javascript:void(0)">全部</a></dd>
					        		<dd><a href="javascript:void(0)">大专</a></dd>
					        		<dd><a href="javascript:void(0)">本科</a></dd>
					        		<dd><a href="javascript:void(0)">硕士</a></dd>
					        		<dd><a href="javascript:void(0)">博士</a></dd>
					        	</dl>
					        	<div class="clearfix"></div>
					        </li>
					    </ul>
						<p class="text-center margin_bot1 margin_top1"><a class="btn btn-primary fontwei begin_btn" href="javascript:;" onclick="vocationSearch()">开始查询</a></p>
					</div>
					
				
					<div class="panel panel-default col-md-3 col-lg-3 col-sm-3">
						<div class="padding-side rank">
							<h4 class="fontwei border_bot">热门薪酬排行榜<span class="text-danger">TOP10</span></h4>
							<div class="rank_h margin_top1 border_bot fontwei flex_jc_sb">
								职业分类<span class="">年薪</span>
							</div>
							<ul class="padding-side" style="list-style: symbols;">
								<li><a class="text-danger" href="">互联网<span class="">80-100w</span></a></li>
								<li><a class="text-warning" href="">互联网<span class="">80-100w</span></a></li>
								<li><a class="text-primary" href="">互联网<span class="">80-100w</span></a></li>
								<li><a href="">互联网<span class="">80-100w</span></a></li>
								<li><a href="">互联网<span class="">80-100w</span></a></li>
							</ul>
							<div class="text-right">
								<span class="text-danger">持续更新……</span>
							</div>
						</div>
					</div>
				</div>
					
				<div class="panel panel-default margin_top1">
					
					<div class="padding-side">
						<h4 class="fontwei">共找到<b id="search_count">2</b>条结果</h4>
					</div>
				    <ul class="list-group search_result list_career" id="search_result">
				        <li class="list-group-item width100">
				        	<a class="width100" href="${pageContext.request.contextPath}/web/xgk/xgk_libCareer_d.jsp">
				        		<h4 class="fontwei">银行清算员<span class="text-muted padding-side">金融/银行/金融业务</span></h4>
				        		<div class="text-muted o_row_brif width100">
				        			利用资金清算网络业务利用资金清算网络业务利用资金清算网络业务利用资金清算网络业务
				        		</div>
				        	</a>
				        	<div class="text-center like">
				        		<a class="" onclick="like(this)" href="${pageContext.request.contextPath}/web/xgk/xgk_libCareer_d.jsp">
				        			<img src="${pageContext.request.contextPath}/img/xgk/unlike.png"/>
				        			<span class="">喜欢</span>
				        		</a>
				        	</div>
				        </li>
				        <li class="list-group-item width100">
				        	<a class="width100" href="${pageContext.request.contextPath}/web/xgk/xgk_libCareer_d.jsp">
				        		<h4 class="fontwei">银行清算员<span class="text-muted padding-side">金融/银行/金融业务</span></h4>
				        		<div class="text-muted o_row_brif width100">
				        			利用资金清算网络业务利用资金清算网络业务利用资金清算网络业务利用资金清算网络业务
				        		</div>
				        	</a>
				        	<div class="text-center like">
				        		<a class="" onclick="like(this)" href="javascript:;">
				        			<img src="${pageContext.request.contextPath}/img/xgk/unlike.png"/>
				        			<span class="">喜欢</span>
				        		</a>
				        	</div>
				        </li>
				    </ul>
				    <script type="text/javascript">
								
					        	</script>
				    <!--分页-->
				    <div class="col-xs-12 bg-white p-10 m-t-10 t-a-c" style="box-shadow: 0px 0px 0px #bdb8b8;">
						<div class="holder" style="text-align: center;"></div>
						</div>
				    <!-- <div class="text-center">
				    	<ul class="pagination">
							<li><a href="#">&laquo;</a></li>
							<li class="active"><a href="#">1</a></li>
							<li class="disabled"><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#">&raquo;</a></li>
						</ul>
				    </div> -->
				    <!--/分页-->
				</div>
				
			</section>
			
	<script type="text/javascript">
		//职业信息查询
    		function vocationSearch(){
    			var industry = $("#industry_list dd a[class=active]").html();
    			var education = $("#education dd a[class=active]").html();
    			industry = industry == "全部" ? "" : industry;
    			education = education == "全部" ? "" : education;
    			var data = "industry=" + industry + "&education=" + education;
    			$.ajax({
					url: "${pageContext.request.contextPath}/voc/xgk_voc_query.do",
					data: data,
					type: "POST",
					dataType: "json",
					success: function (obj) {
						//console.log(obj.data);
						var data = obj.data;
						var vocationList = "";
						for(var i=0; i<data.length; i++){
							vocationList += '<li class="list-group-item width100">';
							vocationList += '<a class="width100" href="javascript:;"  onclick="search_detail(this)" id="' + data[i].vocationId + '">';
							vocationList += '<h4 class="fontwei">' + data[i].vocationName + '<span class="text-muted padding-side">' + data[i].industryName + '</span></h4>';
							vocationList += '<div class="text-muted o_row_brif width100">' + data[i].vocationBrief + '</div></a>';
							vocationList += '<div class="text-center like">';
							vocationList += '<a class="" onclick="like(this)" href="javascript:">';
							vocationList += '<img src="${pageContext.request.contextPath}/img/xgk/unlike.png"/>';
							vocationList += '<span class="">喜欢</span></a></div></li>';		
						}
						$("#search_count").html(data.length);
						$("#search_result").html(vocationList);
						$("div.holder").jPages({
							containerID : "search_result",
							perPage     : 5,
							first       : "首页",
							previous    : "上一页",
							next        : "下一页",
							last        : "尾页"
						});
					}
    			});
    			
    		}
		
		//查询职业详情	
    		function search_detail(e){
    			 var vocationId = $(e).attr('id');
    			 location.href = "${pageContext.request.contextPath}/voc/xgk_voc_detail.do?vocationId=" + vocationId;
    		}
		
    		//职业列表初始化
    		var industry_name =  JSON.parse('${industry_name}');
    		var industry_list = '<dd><a class="active" href="javascript:;">全部</a></dd>';
		for(var i=0; i<industry_name.length; i++){
			industry_list += '<dd><a href="javascript:;">' + industry_name[i] + '</a></dd>';
		}
		$("#industry_list").html(industry_list);
		
		
		//点赞
		function like(obj) {
			var y;
			var o = $(obj).find('img').attr('src');
			switch(o) {
			    	case '${pageContext.request.contextPath}/img/xgk/like.png':
			    		y = '${pageContext.request.contextPath}/img/xgk/unlike.png';
			    		$(obj).find('span').text('喜欢');
			    		break;
			    	case '${pageContext.request.contextPath}/img/xgk/unlike.png':
			    		y = '${pageContext.request.contextPath}/img/xgk/like.png';
			    		$(obj).find('span').text('取消喜欢');
			    		break;
			    	default:
			    		y = '${pageContext.request.contextPath}/img/xgk/unlike.png';
			    		$(obj).find('span').text('喜欢');
			    		break;
			}
			$(obj).find('img').attr('src', y);
		}
				
		//点击筛选样式
		$(".item_body dd a").click(function() {
			$(this).parents("dl").children().find("a").removeClass("active");
			$(this).addClass("active");
		})
	</script>
		</main>

		<!-- 页面右侧-->
		<c:import url="../public/side_right.jsp"></c:import>	
		<!-- 页面底部-->
		<c:import url="footer.jsp"></c:import>	

	</body>

</html>