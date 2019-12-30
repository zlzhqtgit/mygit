<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

	<head>
		<title>贵州好前途教育科技有限公司</title>
		<meta charset="utf-8">
 		<link rel="stylesheet" href="${pageContext.request.contextPath}/js/layui-v2.5.5/layui/css/layui.css"  media="all">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/index.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/jPages.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/sch_search.css"/>
		<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="${pageContext.request.contextPath}/js/layer/2.4/layer.js"></script>
		<script src="${pageContext.request.contextPath}/js/web/xgk/area_json.js"></script> 
		<script src="${pageContext.request.contextPath}/js/layui-v2.5.5/layui/layui.js" charset="utf-8"></script>
		
	</head>

	<body>
		<c:import url="header.jsp"></c:import>
		<main class="sch_search">
			<section class="sch_search container">
				<div style="padding: 1em 100px 1em;">
				    <form class="bs-example bs-example-form" role="form" id="universities_name">
				        <div class="input-group input-group-lg">
				            <span class="input-group-addon" style="cursor: pointer;" onclick="schoolSearch(1)"><span class="glyphicon glyphicon-search text-muted"></span></span>
				            <input type="text" class="form-control" placeholder="搜索你感兴趣的学校" >
				        </div>
				    </form>
				</div>

				<div class="panel panel-default">
				    <ul class="list-group slice_list" id="search-ui">
				        <li class="list-group-item" id="universities_attributes">
				        	<dl class="pull-left item_tit">
				        		<dt>院校属性</dt>
				        	</dl>
				        	<dl class="pull-left item_body">
				        		<dd class=""><a class="active" href="javascript:void(0)"  name="universities_attributes">全部</a></dd>
				        		<dd><a href="javascript:void(0)" name="universities_attributes">985</a></dd>
				        		<dd><a href="javascript:void(0)"  name="universities_attributes">211</a></dd>
				        		<dd><a href="javascript:void(0)"  name="universities_attributes">双一流</a></dd>
				        		<dd><a href="javascript:void(0)"  name="universities_attributes">行业领军</a></dd>
				        		<dd><a href="javascript:void(0)"  name="universities_attributes">研究生院</a></dd>
				        	</dl>
				        	<div class="clearfix"></div>
				        </li>
				        <li class="list-group-item" id="universities_type">
				        	<dl class="pull-left item_tit">
				        		<dt>院校类型</dt>
				        	</dl>
				        	<dl class="pull-left item_body" >
				        		<dd><a class="active" href="javascript:void(0)"  name="universities_type">全部</a></dd>
				        		<dd><a href="javascript:void(0)"  name="universities_type">理工类</a></dd>
				        		<dd><a href="javascript:void(0)"  name="universities_type">师范类</a></dd>
				        		<dd><a href="javascript:void(0)"  name="universities_type">农林类</a></dd>
				        		<dd><a href="javascript:void(0)"  name="universities_type">政法类</a></dd>
				        		<dd><a href="javascript:void(0)"  name="universities_type">医药类</a></dd>
				        		<dd><a href="javascript:void(0)"  name="universities_type">财经类</a></dd>
				        		<dd><a href="javascript:void(0)"  name="universities_type">民族类</a></dd>
				        		<dd><a href="javascript:void(0)"  name="universities_type">语言类</a></dd>
				        		<dd><a href="javascript:void(0)"  name="universities_type">旅游类</a></dd>
				        		<dd><a href="javascript:void(0)"  name="universities_type">体育类</a></dd>
				        		<dd><a href="javascript:void(0)"  name="universities_type">艺术类</a></dd>
				        		<dd><a href="javascript:void(0)"  name="universities_type">军事类</a></dd>
				        	</dl>
				        </li>
				        <li class="list-group-item" id="province">
				        	<dl class="pull-left item_tit">
				        		<dt>院校省份</dt>
				        	</dl>
				        	<dl class="pull-left item_body" >
				        		<dd class=""><a class="active" href="javascript:void(0)"  name="province">全部</a></dd>
				        		<c:forEach items="${university_province_list}" var="item">
				        			<dd class=""><a href="javascript:void(0)"  name="province">${item}</a></dd>
				        		</c:forEach>
				        	</dl> 
				        </li>
				        <li class="list-group-item"  id="city">
				        	<dl class="pull-left item_tit" >
				        		<dt>热门城市</dt>
				        	</dl>
				        	<dl class="pull-left item_body">
				        		<dd class=""><a class="active a" href="javascript:void(0)"  name="city">全部</a></dd>
				        		<dd><a href="javascript:void(0)"  name="city">北京</a></dd>
				        		<dd><a href="javascript:void(0)"  name="city">上海</a></dd>
				        		<dd><a href="javascript:void(0)"  name="city">武汉</a></dd>
				        		<dd><a href="javascript:void(0)"  name="city">杭州</a></dd>
				        		<dd><a href="javascript:void(0)"  name="city">广州</a></dd>
				        		<dd><a href="javascript:void(0)"  name="city">深圳</a></dd>
				        		<dd><a href="javascript:void(0)"  name="city">成都</a></dd>
				        		<dd><a href="javascript:void(0)"  name="city">重庆</a></dd>
				        		<dd><a href="javascript:void(0)"  name="city">西安</a></dd>
				        		<dd><a href="javascript:void(0)"  name="city">南京</a></dd>
				        		<dd><a href="javascript:void(0)"  name="city">长沙</a></dd>
				        		<dd><a href="javascript:void(0)"  name="city">苏州</a></dd>
				        		<dd><a href="javascript:void(0)"  name="city">天津</a></dd>
				        		<dd><a href="javascript:void(0)"  name="city">沈阳</a></dd>
				        		<dd><a href="javascript:void(0)"  name="city">青岛</a></dd>
				        	</dl>
				        </li>
				        <li class="list-group-item"  id="universities_nature">
				        	<dl class="pull-left item_tit">
				        		<dt>办学性质</dt>
				        	</dl>
				        	<dl class="pull-left item_body">
				        		<dd class=""><a class="active" href="javascript:void(0)"  name="universities_nature">全部</a></dd>
				        		<dd><a href="javascript:void(0)"  name="universities_nature">公办</a></dd>
				        		<dd><a href="javascript:void(0)"  name="universities_nature">民办</a></dd>
				        		<dd><a href="javascript:void(0)"  name="universities_nature">独立院校</a></dd>
				        		<dd><a href="javascript:void(0)"  name="universities_nature">中外合作办学</a></dd>
				        	</dl>
				        </li>
				        <li class="list-group-item"  id="admission_lot" >
				        	<dl class="pull-left item_tit">
				        		<dt>录取批次</dt>
				        	</dl>
				        	<dl class="pull-left item_body">
				        		<dd class=""><a class="active" href="javascript:void(0)"  name="admission_lot">全部</a></dd>
				        		<dd><a href="javascript:void(0)"  name="admission_lot">本科一批</a></dd>
				        		<dd><a href="javascript:void(0)"  name="admission_lot">本科二批</a></dd>
				        		<dd><a href="javascript:void(0)"  name="admission_lot">高职高专</a></dd>
				        	</dl>
				        </li>
				        <li class="list-group-item"  id="teaching_research">
				        	<dl class="pull-left item_tit">
				        		<dt>科研教学</dt>
				        	</dl>
				        	<dl class="pull-left item_body">
				        		<dd class=""><a class="active" href="javascript:void(0)"  name="teaching_research">全部</a></dd>
				        		<dd><a href="javascript:void(0)"  name="teaching_research">硕士点</a></dd>
				        		<dd><a href="javascript:void(0)"  name="teaching_research">博士点</a></dd>
				        		<dd><a href="javascript:void(0)"  name="teaching_research">重点专业</a></dd>
				        		<dd><a href="javascript:void(0)"  name="teaching_research">重点实验室</a></dd>
				        	</dl>
				        </li>
				    </ul>
				    
				</div>
				<p class="text-center margin_bot margin_top">
					<input class="btn btn-primary fontwei begin_btn disabled" type="button" value="开始查询" id="sch_query_select">
				</p>
				<div class="panel panel-default" style="display: none" id="result_count">
					<div class="panel_head padding-side2" id="page"><h4 class="fontwei">共找到<a>'+list.length+'</a>条结果</h4></div>
					<!-- 查询结果 -->
					<div id="search_result">
						
					</div>
					<!-- 分页 -->
					<div id="search_page"></div>
					</section>
				</div>
			<div class="contrast panel" id="contrast" >
				<div class="text-right text-primary padding-side2">
					<label class="slide_down">
						隐藏<span class="glyphicon glyphicon-chevron-down"></span>
					</label>
				</div>
				<div class="contrast_tools">
				 	<ul class="contrast_list clearfix"></ul>
					<div class="btn_group">
				 		<span class="padding-side">
				 			<p class="text-center"><a href="javascript:void(0)" onclick="modelshow($('#Modal .modal_tit').html(),$('#Modal .modal_content').html())" class="btn btn-primary">院校基本情况对比</a></p>
					 		<p class="text-center"><a href="javascript:void(0)" onclick="modelshow($('#Modal1 .modal_tit').html(),$('#Modal1 .modal_content').html())" class="btn btn-primary">院校录取分数对比</a></p>
					 		<p class="text-center"><a href="javascript:void(0)" onclick="clear_contrast(this)" class="btn btn-primary">清空对比</a></p>
				 		</span>
				 	</div>
				</div>
			</div>
			<script src="${pageContext.request.contextPath}/js/layer/2.4/layer.js" type="text/javascript" charset="utf-8"></script>
			<!--模态框-->
			<div class="tip_box" id="Modal">
				<div class="bg-model"></div>
				<div class="Modal_box padding-side2">
					<a  class="glyphicon glyphicon-remove text-muted" href="javascript:void(0)" onclick="close_model(this)"></a>
					<h2 class="modal_tit text-left margin_top1 fontwei">院校基本情况对比</h2>
					<div class="modal_content margin_top margin_bot padding-side2">
						<table class="table table-bordered table-bordered marginauto">
							<thead>
								<tr><th style="vertical-align: middle;">院校</th>
									<th><img src="${pageContext.request.contextPath}/img/xgk/sch_logo.png"/><div>上海外国语大学</div></th>
									<th><img src="${pageContext.request.contextPath}/img/xgk/sch_logo.png"/><div>上海外国语大学</div></th>
									<th><img src="${pageContext.request.contextPath}/img/xgk/sch_logo.png"/><div>上海外国语大学</div></th>
									<th><img src="${pageContext.request.contextPath}/img/xgk/sch_logo.png"/><div>上海外国语大学</div></th>
									<th><img src="${pageContext.request.contextPath}/img/xgk/sch_logo.png"/><div>上海外国语大学</div></th>
								</tr>
							</thead>
							<tbody>
								<tr><td>录取批次</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td></tr>
								<tr><td>标签属性</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td></tr>
								<tr><td>综合排名</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td></tr>
								<tr><td>学校类型</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td></tr>
								<tr><td>硕士点个数</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td></tr>
								<tr><td>博士点个数</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td></tr>
								<tr><td>一流学科个数</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td></tr>
								<tr><td>一流学科</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td></tr>
								
							</tbody>
						</table>
					</div>
				</div>
			</div>
			
			<div class="tip_box" id="Modal1" style="display: none;">
				<div class="bg-model"></div>
				<div class="Modal_box padding-side2">
					<a  class="glyphicon glyphicon-remove text-muted" href="javascript:void(0)" onclick="close_model(this)"></a>
					<h2 class="modal_tit text-left margin_top1 fontwei">院校录取分数对比</h2>
					<div class="modal_content margin_top margin_bot padding-side2">
						<table class="table table-hover table-bordered marginauto">
							<tr><td rowspan="7" style="width: 10em;"><img src="${pageContext.request.contextPath}/img/xgk/sch_logo.png"/></td><td rowspan="2">年份</td><td colspan="6">录取分数</td><td colspan="2">计划招生</td></tr>
							<tr><td>最低分</td><td>平均分</td><td>最高分</td><td>投档线</td><td>线差</td><td>今年</td><td>往年</td></tr>
							<tr><td>2019</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td></tr>
							<tr><td>2018</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td></tr>
							<tr><td>2017</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td></tr>
							<tr><td>2016</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td></tr>
							<tr><td>平均分</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td></tr>
						</table>
					</div>
				</div>
			</div>
			<!--/模态框-->
			<script type="text/javascript">
				//弹框
				function modelshow(title,content){
					layer.open({
						type: 1,
						area: ['960px','560px'],
						fix: true, //是否跟随页面滚动
						maxmin: true,
						shadeClose: true,//点击阴影开关
						shade:0.4,//阴影透明度
						move: 'false',//默认：.layui-layer-title
						moveOut: false,//是否允许拖拽到窗口外
						title: title,
						content:content,
						scrollbar: true
					});
				}
				
				//点击筛选样式
				$(".item_body dd a").click(function() {
					$(this).parents("dl").children().find("a").removeClass("active");
					$(this).addClass("active");

				})
				
				//关闭模态框
				function close_model(obj) {
					$(obj).parents('#Modal').hide();
				}
				
				$(".slide_down").click(function(){
			    	$('.contrast_tools').slideToggle('100',change_chara);
			  	})
				
				//文字改变
				function change_chara(){
		    		if ($(this).prev().find('label').text()=="显示") {
		    			$(".slide_down").html('隐藏<span class="glyphicon glyphicon-chevron-down"></span>');
		    		}else{
		    			$(".slide_down").html('显示<span class="glyphicon glyphicon-chevron-up"></span>');
		    		}
		    	}
				
				/**
				 * 收藏学校
				 * @param {Object} obj
				 */
				function store(obj) {
					var rowName=$(obj).parents('li').attr('pname');
					if ($(obj).find('input').is(":checked")) {
						$(obj).removeClass("btn-primary");
						$(obj).addClass("cancel");
						$(obj).find('span').text("取消收藏");
						return;
					}else{
						$(obj).removeClass("cancel");
						$(obj).addClass("btn-primary");
						$(obj).find('span').text("收藏学校");
					}
				}
				 /* $('.contrast').show(); */
				var flag=false;
				//结果列表的加入对比
				function btn_check(obj){
					var rowId=$(obj).parents('li').attr('id');
					//var rowName=$(obj).parents('li').attr('pname');
					var imgUrl=$(obj).parents('li').find(".sh_logo img").attr("src");
					console.log($(obj).parents('li').find(".sch_slice").html());
					console.log(imgUrl);
					if(flag==false){
						$('.contrast').show();
					}
					add_contrast(rowId,imgUrl);
					if ($('.contrast_list li').length==0) {
						close_conbox();
					}
				}

				//加入对比
				function add_contrast(row_id,itemImg){
					if ($("#btnid"+row_id).is(":checked")) {
						$("#btnid"+row_id).parent().removeClass("btn-primary")
						$("#btnid"+row_id).parent().addClass("cancel text-white");
						$("#btnid"+row_id).parent().find('span').text("取消对比")
						
						if ($('.contrast_list li').length>4) {
							alert("最多只能添加5个学校进行对比");
							return false;
						}
						$('.contrast_list').append('<li id="comp'+row_id+'"><a href="javascript:void(0)"><img src="'+itemImg+'"/></a><p class="text-center margin_top1"><a href="javascript:void(0)" onclick="del_compare(this)" class="btn btn-primary">取消对比</a></p></li>');
					} else{
						$("#btnid"+row_id).parent().removeClass("cancel text-white");
						$("#btnid"+row_id).parent().addClass("btn-primary");
						$("#btnid"+row_id).parent().find('span').text("加入对比");
						//移除当前对比中的元素
						$("#comp"+row_id).remove();
					}
				}
				
				//取消对比
				function del_compare(obj) {
					var thisli=$(obj).parents("li");
					var cur_id= $(obj).parents("li").attr('id');
					thisli.parent().find("#"+cur_id).remove();
					var rowId=cur_id.substr(4,cur_id.length);
					$("#btnid"+rowId).parent().removeClass("cancel text-white");
					$("#btnid"+rowId).parent().addClass("btn-primary");
					$("#btnid"+rowId).parent().find('span').text("加入对比");
					document.getElementById("btnid"+rowId).checked=false;
					
					
					if ($(".contrast_list li").length==0) {
						 close_conbox();
					}
				}
				
				//清空对比
				function clear_contrast(obj){
					var all_check=$('.add_contrast>input[type="checkbox"]');
					$('.add_contrast>input[type="checkbox"]').parent().removeClass("cancel text-white");
					$('.add_contrast>input[type="checkbox"]').parent().addClass("btn-primary");
					$('.add_contrast>input[type="checkbox"]').parent().find('span').text("加入对比")
					
					for (var i=0;i<all_check.length;i++) {
						all_check[i].checked=false;
					}
					$(".contrast_list").children().remove();
					setTimeout(close_conbox(),2500);
				} 
				
				//弹出对比弹出框
				function open_conbox() {
					$('.contrast_tools').slideDown('100',change_chara);
					flag=true;
				}
				
				//关闭对比弹出框
				function close_conbox() {
					$('.contrast').hide();
					flag = false;
				}
				
				//院校基本情况对比
 				function show_contrast_intro(){
 					$('.tip_box').css('display','block');
 				}
				//院校录取分数对比
 				function show_contrast_score(){
 					$('.tip_box').css('display','block');
 					$('.tit_docaration h2').text('院校录取分数对比');
 					$('.tit_docaration').next().children().remove();
 					$('.tit_docaration').next().append('噶三歌曲歌曲干旱气候')
 				}
				
 				//点击选中
 				function  clickActive(e) {
 					$(e).parents("dl").children().find("a").removeClass("active");
 					$(e).addClass("active");
 				}

 				//判断查询按钮是否可以点击查询
 				$(document).ready(function(){
 					$("#search-ui li dl dd a").attr("onclick","trem()");
 			     });
 				function trem(){
						var condition  = $("#search-ui li dl dd a.active");
						var canQuery = false;
						for(var i=0; i<condition.length; i++){
							if(condition[i].text != "全部"){
								canQuery = true;
							}
						}	
						if(canQuery){
							$("#sch_query_select").removeAttr("onclick");
							$("#sch_query_select").attr("onclick","schoolSearch(2)");
							$("#sch_query_select").removeClass("disabled");
						} else {
							$("#sch_query_select").removeAttr("onclick");
							$("#sch_query_select").addClass("disabled")
						}
					}
 				
				//院校查询
				var where = "";
				function schoolSearch(e){
					if (e == 1){
						where = "where=";
						var school_name = $(".form-control").val();
						if (school_name == ""){
							layer.msg('请输入您感兴趣的学校名字！', {icon: 5});
							return ;
						} else {
							where += " LOCATE('" + school_name + "',u.universities_name) > 0";
						}
					} else{
						where = "where=";
						var actives = $("#search-ui li a.active");
						var addAnd = false;
						for (var i=0; i<actives.length; i++){
							var name = $(actives[i]).attr("name");
							var value = $(actives[i]).text();
							if (value != "全部"){
								if (addAnd) {
									where += " AND LOCATE('" + value + "',u." + name + ") > 0 ";
								}else{
									where += " LOCATE('" + value + "',u." + name + ") > 0 ";
									addAnd = true;
								}
							}
						}
					}
					$.ajax({
						url: "${pageContext.request.contextPath}/school/xgk_school_query.do",
						data: where,
						async:true,
						type: "POST",
						dataType: "json",							
						success: function (obj) {
							if (obj.state == 1){
								$("#result_count").css("display","block");//显示搜索结果数量
								var list = obj.data.list;
								$("#page h4 a").html(obj.data.count);
								var universities = "";
								for (var i=0; i<list.length; i++){									
									var admission_lot = "";//录取批次
									var admissionLotList = JSON.parse(list[i].admissionLot);
									for (var j=0; j<admissionLotList.length; j++){
										admission_lot += " " + admissionLotList[j];
									}
									var master = "";//硕士点数
									var doctor = "";//博士点数
									var teaching_research = JSON.parse(list[i].teachingResearch);
									for(var j=0; j<teaching_research.length; j++){
										if(teaching_research[j][0] == "硕士点"){
											master = teaching_research[j][0] + "数: " + teaching_research[j][1];
										}
										if(teaching_research[j][0] == "博士点"){
											doctor = teaching_research[j][0] + "数 :" + teaching_research[j][1];
										}
									}
	                                        var admissionLots = "";// 录取批次
	                                        var admissionLotList = JSON.parse(list[i].admissionLot);
	                                        for (var j=0; j<admissionLotList.length; j++){
	                                            if (j == admissionLotList.length-1) {
	                                                admissionLots += admissionLotList[j];
	                                            }else {
	                                                admissionLots += admissionLotList[j] + " ";
	                                            }
	                                        }
									
                                        	var attrImg = "";//院校属性图片
                                        	var universitiesAttributes = JSON.parse(list[i].universitiesAttributes);
                                        	if(universitiesAttributes != null){
        									for (var f=0; f<universitiesAttributes.length; f++){
        										if (universitiesAttributes[f] == "985"){
        											attrImg += "<img src='${pageContext.request.contextPath}/img/xgk/attr/985.png'/>"
        										}
        										if (universitiesAttributes[f] == "211"){
        											attrImg += "<img src='${pageContext.request.contextPath}/img/xgk/attr/211.png'/>"
        										}
        										if (universitiesAttributes[f] == "双一流"){
        											attrImg += "<img src='${pageContext.request.contextPath}/img/xgk/attr/syl.png'/>"
        										}
        										if (universitiesAttributes[f] == "行业领军"){
        											attrImg += "<img src='${pageContext.request.contextPath}/img/xgk/attr/hylj.png'/>"
        										}
        										if (universitiesAttributes[f] == "研究生院"){
        											attrImg += "<img src='${pageContext.request.contextPath}/img/xgk/attr/yjsy.png'/>"
        										}
        									}
                                        	}
									var box_head = '<ul classs="search_result list-group" id="universities">';
									var id = "";
									var operate = '<div class="operate_box padding-side"> <p class="text-center"><a class="store btn btn-primary" onclick="store(this)" href="javascript:void(0)"><span>取消收藏</span><input type="checkbox" name="" id="" value=""/></a></p>'+
											    '<p class="text-center"><a href="javascript:void(0)" onclick="btn_check(this)" class="add_contrast btn btn-primary"><span>加入对比</span>'+
											    '<input type="checkbox" name="" id="btnid'+(i+1)+'"/></a></p> </div>';
									universities += box_head + "<div><ur><li class='list-group-item' id="+(i+1)+" pname='复旦大学'>" +
											      //院校Logo
												 "<div class='sh_logo'>" +
												 "<a href='${pageContext.request.contextPath}/school/xgk_university_info.do?universityCode=" + list[i].universitiesCode + "'><img alt='学校logo(暂无图片)' src='${COLLEGE_PHOTO_PREFIX}/" + list[i].universitiesLogo + "' id='" + list[i].universityCode + "'/></a>" +
												 "</div>" +
												 //院校名字   + 院校属性  + 录取批次  + 综合评级
												 "<div class='sch_info sch_search_info padding-side'>" +"<div class=''>" +"<h4><span class=''>" + list[i].universitiesName + "</span><span class=''>" + attrImg + "</span></h4>" +
												 "<p class=''>综合评级（" + admissionLots + "）<span class='text-danger'>" + list[i].totalRanking + "</span></p>" +
												 "</div>" +
												 //院校代码 + 录取概率 + 隶属 + 硕士点 + 博士点
												 "<table border='0' cellspacing='' cellpadding=''><tr><td> 院校代号：<span>" + list[i].universitiesCode + "</span></td><td> <div>录取概率：<span class='text-danger'>" + list[i].admissionProbability + "</span></div> </td></tr>" +
												 "<tr><td>隶属：<span>" + list[i].belongTo + "</span></td><td><span>" + master + "</span></td></tr>" +"<tr><td>院校类型：<span>" + list[i].universitiesNature + "</span></td><td><span>" + doctor + "</span></td></tr>" +
												 "</table></div>" +
												 //[录取分表格   start]
												 "<table class='sch_slice' border='' cellspacing='' cellpadding=''>" +"<tr><th rowspan='2'>年份</th><th colspan='7'>录取分</th><th colspan='2'>计划人数</th></tr><tr><th>类型</th><th>最低分</th><th>平均分</th><th>最高分</th><th>投档线</th><th>线差</th><th>提档位次</th><th>计划人数</th><th>录取人数</th></tr>";
                                        	
									//[院校扩展表list 院校录取分数线] 
									if(list[i].universRelationList == null){
										universities += "<tr><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td></tr>";
									}else{
										var universRelationList = list[i].universRelationList;
										for(var j=0; j<list[i].universRelationList.length; j++){
											var collegeScoreLine = universRelationList[j].collegeScoreLine;
											if($.isEmptyObject(collegeScoreLine) == false){
												if(collegeScoreLine.startsWith("[")){
													var lines = JSON.parse(collegeScoreLine);
													if(lines.length > 0){
														universities += "<tr><td>" + universRelationList[j].urYear + "</td><td>" + universRelationList[j].subjectType + "</td><td>" + lines[0] + "</td><td>" + lines[1] + "</td><td>" + lines[2] + "</td><td>" + lines[3] + "</td><td>" + lines[4] + "</td><td>" + lines[5] + "</td><td>" + lines[6] + "</td><td>" + lines[7] + "</td></tr>";
													}	
												}else {
													universities += "<tr><td>" + (universRelationList[j].urYear == null ? "-" : universRelationList[j].urYear) + "</td><td>" + (universRelationList[j].subjectType == null ? "-" : universRelationList[j].subjectType) + "</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td></tr>";
												}													
											} 												
										}
									}							
                                        	//[录取分表格   end]
                                        	universities += "</table>" + operate + "</li></ul>";
                                        	
								}
							 	$("#search_result").html(universities);
							 	//分页
								layui.use(['laypage', 'layer'], function(){
								  var laypage = layui.laypage
								  ,layer = layui.layer;
								  laypage.render({
								    elem: 'search_page',
								    count: obj.data.count,
								    limit: 3,
								    limits: [1,2,3,4,5,6,7,8,9],
								    layout: ['prev', 'page', 'next', 'limit', 'refresh', 'skip'],
								    jump: function(obj,first){
								    		console.log(first);
								    		console.log(obj);
								      	var offset = parseInt(obj.limit)*(parseInt(obj.curr)-1);
								      	var countPerPage = parseInt(obj.limit);
								      	var end_where =  "&offset=" + offset + "&countPerPage=" + countPerPage;
								      	if(!first && where != ""){
								      		console.log(end_where);
								      		current = obj.curr;
								      		schoolSearch2(where + end_where);
								      	}
								      	
								    }
								  });
								});
							 
						}
					}
				});
			}
				//layui分页查询数据
				function schoolSearch2(where2){
					$.ajax({
						url: "${pageContext.request.contextPath}/school/xgk_school_query.do",
						data: where2,
						async:true,
						type: "POST",
						dataType: "json",							
						success: function (obj) {
							if (obj.state == 1){
								$("#result_count").css("display","inline-block");//显示搜索结果数量
								var list = obj.data.list;
								$("#page h4 a").html(obj.data.count);
								var universities = "";
								for (var i=0; i<list.length; i++){									
									var admission_lot = "";//录取批次
									var admissionLotList = JSON.parse(list[i].admissionLot);
									for (var j=0; j<admissionLotList.length; j++){
										admission_lot += " " + admissionLotList[j];
									}
									var master = "";//硕士点数
									var doctor = "";//博士点数
									var teaching_research = JSON.parse(list[i].teachingResearch);
									for(var j=0; j<teaching_research.length; j++){
										if(teaching_research[j][0] == "硕士点"){
											master = teaching_research[j][0] + "数: " + teaching_research[j][1];
										}
										if(teaching_research[j][0] == "博士点"){
											doctor = teaching_research[j][0] + "数 :" + teaching_research[j][1];
										}
									}
	                                        var admissionLots = "";// 录取批次
	                                        var admissionLotList = JSON.parse(list[i].admissionLot);
	                                        for (var j=0; j<admissionLotList.length; j++){
	                                            if (j == admissionLotList.length-1) {
	                                                admissionLots += admissionLotList[j];
	                                            }else {
	                                                admissionLots += admissionLotList[j] + " ";
	                                            }
	                                        }
									
                                        	var attrImg = "";//院校属性图片
                                        	var universitiesAttributes = JSON.parse(list[i].universitiesAttributes);
                                        	if(universitiesAttributes != null){
        									for (var f=0; f<universitiesAttributes.length; f++){
        										if (universitiesAttributes[f] == "985"){
        											attrImg += "<img src='${pageContext.request.contextPath}/img/xgk/attr/985.png'/>"
        										}
        										if (universitiesAttributes[f] == "211"){
        											attrImg += "<img src='${pageContext.request.contextPath}/img/xgk/attr/211.png'/>"
        										}
        										if (universitiesAttributes[f] == "双一流"){
        											attrImg += "<img src='${pageContext.request.contextPath}/img/xgk/attr/syl.png'/>"
        										}
        										if (universitiesAttributes[f] == "行业领军"){
        											attrImg += "<img src='${pageContext.request.contextPath}/img/xgk/attr/hylj.png'/>"
        										}
        										if (universitiesAttributes[f] == "研究生院"){
        											attrImg += "<img src='${pageContext.request.contextPath}/img/xgk/attr/yjsy.png'/>"
        										}
        									}
                                        	}
									var box_head = '<ul classs="search_result list-group" id="universities">';
									var id = "";
									var operate = '<div class="operate_box padding-side"> <p class="text-center"><a class="store btn btn-primary" onclick="store(this)" href="javascript:void(0)"><span>取消收藏</span><input type="checkbox" name="" id="" value=""/></a></p>'+
											    '<p class="text-center"><a href="javascript:void(0)" onclick="btn_check(this)" class="add_contrast btn btn-primary"><span>加入对比</span>'+
											    '<input type="checkbox" name="" id="btnid'+(i+1)+'"/></a></p> </div>';
									universities += box_head + "<div><ur><li class='list-group-item' id="+(i+1)+" pname='复旦大学'>" +
											      //院校Logo
												 "<div class='sh_logo'>" +
												 "<a href='${pageContext.request.contextPath}/school/xgk_university_info.do?universityCode=" + list[i].universitiesCode + "'><img alt='学校logo(暂无图片)' src='${COLLEGE_PHOTO_PREFIX}/" + list[i].universitiesLogo + "' id='" + list[i].universityCode + "'/></a>" +
												 "</div>" +
												 //院校名字   + 院校属性  + 录取批次  + 综合评级
												 "<div class='sch_info sch_search_info padding-side'>" +"<div class=''>" +"<h4><span class=''>" + list[i].universitiesName + "</span><span class=''>" + attrImg + "</span></h4>" +
												 "<p class=''>综合评级（" + admissionLots + "）<span class='text-danger'>" + list[i].totalRanking + "</span></p>" +
												 "</div>" +
												 //院校代码 + 录取概率 + 隶属 + 硕士点 + 博士点
												 "<table border='0' cellspacing='' cellpadding=''><tr><td> 院校代号：<span>" + list[i].universitiesCode + "</span></td><td> <div>录取概率：<span class='text-danger'>" + list[i].admissionProbability + "</span></div> </td></tr>" +
												 "<tr><td>隶属：<span>" + list[i].belongTo + "</span></td><td><span>" + master + "</span></td></tr>" +"<tr><td>院校类型：<span>" + list[i].universitiesNature + "</span></td><td><span>" + doctor + "</span></td></tr>" +
												 "</table></div>" +
												 //[录取分表格   start]
												 "<table class='sch_slice' border='' cellspacing='' cellpadding=''>" +"<tr><th rowspan='2'>年份</th><th colspan='7'>录取分</th><th colspan='2'>计划人数</th></tr><tr><th>类型</th><th>最低分</th><th>平均分</th><th>最高分</th><th>投档线</th><th>线差</th><th>提档位次</th><th>计划人数</th><th>录取人数</th></tr>";
                                        	
									//[院校扩展表list 院校录取分数线] 
									if(list[i].universRelationList == null){
										universities += "<tr><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td></tr>";
									}else{
										var universRelationList = list[i].universRelationList;
										for(var j=0; j<list[i].universRelationList.length; j++){
											var collegeScoreLine = universRelationList[j].collegeScoreLine;
											if($.isEmptyObject(collegeScoreLine) == false){
												if(collegeScoreLine.startsWith("[")){
													var lines = JSON.parse(collegeScoreLine);
													if(lines.length > 0){
														universities += "<tr><td>" + universRelationList[j].urYear + "</td><td>" + universRelationList[j].subjectType + "</td><td>" + lines[0] + "</td><td>" + lines[1] + "</td><td>" + lines[2] + "</td><td>" + lines[3] + "</td><td>" + lines[4] + "</td><td>" + lines[5] + "</td><td>" + lines[6] + "</td><td>" + lines[7] + "</td></tr>";
													}	
												}else {
													universities += "<tr><td>" + (universRelationList[j].urYear == null ? "-" : universRelationList[j].urYear) + "</td><td>" + (universRelationList[j].subjectType == null ? "-" : universRelationList[j].subjectType) + "</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td></tr>";
												}													
											} 												
										}
									}							
                                        	//[录取分表格   end]
                                        	universities += "</table>" + operate + "</li></ul>";
                                        	
								}
							 	$("#search_result").html(universities);	 
						}
					}
				});
			}	
			</script>
		</main>

		<!-- 右侧边栏-->
		<c:import url="../public/side_right.jsp"></c:import>
		<!-- 页面底部-->
		<c:import url="footer.jsp"></c:import>	

	</body>
</html>