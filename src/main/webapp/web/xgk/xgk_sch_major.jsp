<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=0.3">
		<title>贵州好前途教育科技有限公司</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/index.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/sch_search.css"/>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js" charset="utf-8"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/layer/2.4/layer.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/H-ui.admin.js"></script>
		<script src="${pageContext.request.contextPath}/js/jPages.js"></script>
	</head>

	<body>
		<c:import url="header.jsp"></c:import>

		<main class="">
			<section class="sch_search container">
				
				<div style="padding: 1em 100px 1em;">
				    <form class="bs-example bs-example-form" role="form">
				        <div class="input-group input-group-lg">
				            <span class="input-group-addon"  onclick="querySpecialty(1)" ><span class="glyphicon glyphicon-search text-muted"></span></span>
				            	<input type="text" class="form-control" placeholder="搜索你感兴趣的专业" id="search_content">		            
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
				        		<dd><a href="javascript:void(0)" >本科专业</a></dd>
				        		<dd><a href="javascript:void(0)" >专科专业</a></dd>
				        	</dl>
				        	<div class="clearfix"></div>
				        </li>
				       <!--  <li class="list-group-item">
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
				        </li> -->
				        <li class="list-group-item">
				        	<dl class="pull-left item_tit">
				        		<dt>本科专业类别</dt>
				        	</dl>
				        	<dl class="pull-left item_body">
				        		<dd class=""><a class="active" href="javascript:void(0)">全部</a></dd>
				        		<c:forEach items="${specialtyClassList}" var="item">
					    	   		<c:if test="${item.specialtyEducation == '本科'}">
					    	   			<dd><a href="javascript:void(0)">${item.specialtyMajorName}</a></dd>
					    	   		</c:if>
				    	   		</c:forEach>
				        	</dl>
				        </li>
				        <li class="list-group-item">
				        	<dl class="pull-left item_tit">
				        		<dt>专科专业类型</dt>
				        	</dl>
				        	<dl class="pull-left item_body">
				        		<dd class=""><a class="active" href="javascript:void(0)">全部</a></dd>
				        		<c:forEach items="${specialtyClassList}" var="item">
					    	   		<c:if test="${item.specialtyEducation == '专科'}">
					    	   			<dd><a href="javascript:void(0)">${item.specialtyMajorName}</a></dd>
					    	   		</c:if>
				    	   		</c:forEach>
				        	</dl>
				        </li>
				    </ul>
				    
				</div>
					<p class="text-center margin_bot margin_top"><a class="btn btn-primary fontwei begin_btn" href="javascript:void(0)" onclick="querySpecialty(2)">开始查询</a></p>
				<script type="text/javascript">
					function querySpecialty(e){
						var c = $("li dd a.active");
						var where = "";
						if( e == 2){
							var specialty_education = c[0].text.replace("专业","");
							var specialty_major_name1 = c[1].text;
							var specialty_major_name2 = c[2].text;
							var flag = false;
							if(specialty_education != "全部"){
								where += " b.specialty_education='" + specialty_education + "' ";
								flag = true;
							}
							if(specialty_major_name1 != "全部" && specialty_major_name2 != "全部"){
								if(flag){	 
									where += " AND (LOCATE('" + specialty_major_name1  +"',b.specialty_major_name) OR LOCATE('" + specialty_major_name2 + "',b.specialty_major_name))";
								} else {
									where += " LOCATE('" + specialty_major_name1  +"',b.specialty_major_name) OR LOCATE('" + specialty_major_name2 + "',b.specialty_major_name)";
								}
								
							}
							if(specialty_major_name1 != "全部" && specialty_major_name2 == "全部"){
								if(flag){	 
									where += " AND LOCATE('" + specialty_major_name1  +"',b.specialty_major_name)";
								} else {
									where += " LOCATE('" + specialty_major_name1  +"',b.specialty_major_name)";
								}
								
							}
							if(specialty_major_name1 == "全部" && specialty_major_name2 != "全部"){
								if(flag){	 
									where += " AND LOCATE('" + specialty_major_name2  +"',b.specialty_major_name)";
								} else {
									where += " LOCATE('" + specialty_major_name2  +"',b.specialty_major_name)";
								}
								
							}
						}else{
							var search_content = $("#search_content").val();
							if(search_content != ""){
								where += " LOCATE('" + search_content  + "',b.specialty_name) OR LOCATE('" + search_content + "',b.specialty_major_name) OR LOCATE('" + search_content + "', b.specialty_disciplines)";
							}
						}
						console.log(where);
						$.ajax({
							url: "${pageContext.request.contextPath}/school/xgk_specialty_query.do",
							type: "POST",
							data: "where=" + where,
							dataType: "JSON",
							success: function(obj) {
								
								if(obj.state == 1){
									var bk = obj.data.bk;
									var bkList = obj.data.bkList;
									var zk = obj.data.zk;
									var zkList = obj.data.zkList;
									var bkdata = "";
									for(var i=0; i<bkList.length; i++){
										var sp = bk[bkList[i]];
										bkdata += '<div class="major_info">';
										bkdata += '<div class="clearfix major_info_head">';
										bkdata += '<span class="pull-left"><h3 class="fontwei">' + sp.specialtyMajorName + '</h3></span>';
										bkdata += '<span class="pull-right  text-muted">1个专业类>' + sp.count + '个本科专业</span>';
										bkdata += '</div>';
										bkdata += '<div class="clearfix major_info_sub">';
										bkdata += '<span class="pull-left"><h4 class="fontwei">' + sp.specialtyDisciplines + '</h4></span>';
										bkdata += '<span class="pull-right" style="color:#4b9f64;">' + sp.count + '个专业</span>';
										bkdata += '</div>';
										bkdata += '<ul class="major_list clearfix margin_top1" id="bk' + i + '">';
										for(var j=0; j<sp.specialtyList.length; j++){
											bkdata += '<li class=""><a id="" href="${pageContext.request.contextPath}/school/xgk_specialty_detail.do?specialtyId=' + sp.specialtyList[j].specialtyId + '">' + sp.specialtyList[j].specialtyName + '</a></li>';
										}
										bkdata += '</ul>';
										bkdata += '</div>';
									}
									bkdata += '<div class="" style="box-shadow: 0px 0px 0px #bdb8b8;display:block;">'
									bkdata += '<div class="holder1" style="text-align: center;"></div>';
									bkdata += '</div>';
									$("#bklist").html(bkdata);//本科列表数据
									
									var zkdata = "";
									for(var i=0; i<zkList.length; i++){
										var sp = zk[zkList[i]];
										zkdata += '<div class="major_info">';
										zkdata += '<div class="clearfix major_info_head">';
										zkdata += '<span class="pull-left"><h3 class="fontwei">' + sp.specialtyMajorName + '</h3></span>';
										zkdata += '<span class="pull-right  text-muted">1个专业类>' + sp.count + '个专科专业</span>';
										zkdata += '</div>';
										zkdata += '<div class="clearfix major_info_sub">';
										zkdata += '<span class="pull-left"><h4 class="fontwei">' + sp.specialtyDisciplines + '</h4></span>';
										zkdata += '<span class="pull-right" style="color:#4b9f64;">' + sp.count + '个专业</span>';
										zkdata += '</div>';
										zkdata += '<ul class="major_list clearfix margin_top1" id="bk' + i + '">';
										for(var j=0; j<sp.specialtyList.length; j++){
											zkdata += '<li class=""><a id="" href="${pageContext.request.contextPath}/school/xgk_specialty_detail.do?specialtyId=' + sp.specialtyList[j].specialtyId + '">' + sp.specialtyList[j].specialtyName + '</a></li>';
										}
										zkdata += "</ul>"
										zkdata += "</div>"
									}
									zkdata += '<div class="bg-white p-10 m-t-10 t-a-c"style="box-shadow: 0px 0px 0px #bdb8b8;">'
									zkdata += '<div class="holder2" style="text-align: center;"></div>';
									zkdata += '</div>';
									$("#zklist").html(zkdata);//专科列表数据
									
									$("div.holder1").jPages({
					    			       containerID : "bklist",
					    			       perPage     : 3,
					    			       first       : "首页",
					    			       previous    : "上一页",
					    			       next        : "下一页",
					    			       last        : "尾页"
					    				 });
						    			$("div.holder2").jPages({
						    			       containerID : "zklist",
						    			       perPage     : 3,
						    			       first       : "首页",
						    			       previous    : "上一页",
						    			       next        : "下一页",
						    			       last        : "尾页"
						    			 });
								} 
							}
						}); 
						
						//点击1秒收显示分页
						 setTimeout(function(){
							$(".holder1").parent().show();
						},1000);
					}
				</script>
				<div class="panel panel-default">
				    <div class="tab_list padding-side2">
				    	<ul class="tab_head clearfix">
				    			<li class="cur">本科专业</li>
				    			<li>专科专业</li>				    		
				    	</ul>
				    	<div class="tab_body">
				    		<div class="tab_b1 cur">
				    			<div class="major_info" id="bklist">
				    				<!-- <div class="clearfix major_info_head">
				    					<span class="pull-left"><h3>哲学(01)</h3></span>
				    					<span class="pull-right  text-muted">1个专业类>4个本科专业</span>
				    				</div>
					    			<div class="clearfix major_info_sub">
				    					<span class="pull-left"><h4 class="fontwei">哲学类（0101）</h4></span>
				    					<span class="pull-right" style="color:#4b9f64;">4个专业</span>
					    			</div>
					    			<ul class="major_list clearfix margin_top1">
					    				<li class=""><a>哲学</a></li>
					    				<li class=""><a onmouseover="tips($('.tipsbox').html(),this,1)">逻辑学</a></li>
					    				<li class=""><a >伦理学</a></li>
					    				<li class=""><a >宗教学</a></li>
					    			</ul> -->
				    			</div>
				    		</div>	
				    		<div class="tab_b2">
				    			<div class="major_info" id="zklist">
				    				<!-- <div class="clearfix major_info_head" >
				    					<span class="pull-left"><h3>哲学(02)</h3></span>
				    					<span class="pull-right text-muted">1个专业类>4个本科专业</span>
				    				</div>
					    			<div class="clearfix major_info_sub">
				    					<span class="pull-left"><h4 class="fontwei">哲学类（0101）</h4></span>
				    					<span class="pull-right" style="color:#4b9f64;">4个专业</span>
					    			</div>
					    			<ul class="major_list clearfix margin_top1">
					    				<li class=""><a href="sch_major_info.html" class="tooltip-test">哲学</a></li>
					    				<li class=""><a href="sch_major_info.html">逻辑学</a></li>
					    				<li class=""><a href="sch_major_info.html">伦理学</a></li>
					    				<li class=""><a href="sch_major_info.html">宗教学</a></li>
					    			</ul> -->
				    			</div>
				    		</div>
				    	</div>
				    	
				    <!--tips-->
				    <div class="tipsbox" style="display: none;">
				    	<h4 style="color: #333;">可从事的职业</h4>
				    	<div style="color: #333;"> 销售、编辑、文案、秘书、销售、编辑、文案、秘书、销售、编辑、文案、秘书、销售、编辑、文案、秘书、 </div>
				    </div>
				    <!--/tips-->
				    
	
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
				    </script>
				    
				</div>
				
			<!-- -->
		</main>

		<!-- 右侧边栏-->
	<c:import url="../public/side_right.jsp"></c:import>
	<!-- 页面底部-->
	<c:import url="footer.jsp"></c:import>

	</body>

</html>