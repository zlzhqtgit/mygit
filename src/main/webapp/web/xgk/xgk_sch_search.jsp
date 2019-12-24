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
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/jPages.css" />
		<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="${pageContext.request.contextPath}/js/layer/2.4/layer.js"></script>
		<script src="${pageContext.request.contextPath}/js/jPages.js"></script>
		<script src="${pageContext.request.contextPath}/js/web/xgk/area_json.js"></script>
		<style>
			.sch_search_info table td{
				width:50%;
			}
		</style>
	</head>

	<body>
		<c:import url="header.jsp"></c:import>
		<main class="sch_search">

			<section class="sch_search container">
				
				<div style="padding: 1em 100px 1em;">
				    <form class="bs-example bs-example-form" role="form" id="universities_name">
				        <div class="input-group input-group-lg">
				            <span class="input-group-addon" onclick="schoolSearch(1)" style="cursor: pointer;"><span class="glyphicon glyphicon-search text-muted"></span></span>
				            <input type="text" class="form-control" placeholder="搜索你感兴趣的学校" >
				        </div>
				    </form>
				</div>

				<div class="panel panel-default">
				    <ul class="list-group slice_list" id="search-ui">
				        <li class="list-group-item">
				        	<dl class="pull-left item_tit">
				        		<dt>院校属性</dt>
				        	</dl>
				        	<dl class="pull-left item_body" id="universities_attributes" name="0">
				        		<dd class=""><a class="active" href="javascript:void(0)" >全部</a></dd>
				        		<dd><a href="javascript:void(0)" >985</a></dd>
				        		<dd><a href="javascript:void(0)" >211</a></dd>
				        		<dd><a href="javascript:void(0)" >双一流</a></dd>
				        		<dd><a href="javascript:void(0)" >行业领军</a></dd>
				        		<dd><a href="javascript:void(0)" >研究生院</a></dd>
				        	</dl>
				        	<div class="clearfix"></div>
				        </li>
				        <li class="list-group-item">
				        	<dl class="pull-left item_tit">
				        		<dt>院校类型</dt>
				        	</dl>
				        	<dl class="pull-left item_body" id="universities_type" name="1">
				        		<dd><a class="active" href="javascript:void(0)" >全部</a></dd>
				        		<dd><a href="javascript:void(0)" >理工类</a></dd>
				        		<dd><a href="javascript:void(0)" >师范类</a></dd>
				        		<dd><a href="javascript:void(0)" >农林类</a></dd>
				        		<dd><a href="javascript:void(0)" >政法类</a></dd>
				        		<dd><a href="javascript:void(0)" >医药类</a></dd>
				        		<dd><a href="javascript:void(0)" >财经类</a></dd>
				        		<dd><a href="javascript:void(0)" >民族类</a></dd>
				        		<dd><a href="javascript:void(0)" >语言类</a></dd>
				        		<dd><a href="javascript:void(0)" >旅游类</a></dd>
				        		<dd><a href="javascript:void(0)" >体育类</a></dd>
				        		<dd><a href="javascript:void(0)" >艺术类</a></dd>
				        		<dd><a href="javascript:void(0)" >军事类</a></dd>
				        	</dl>
				        </li>
				        <li class="list-group-item">
				        	<dl class="pull-left item_tit">
				        		<dt>院校省份</dt>
				        	</dl>
				        	<dl class="pull-left item_body" id="province" name="2">
				        		<dd class=""><a class="active" href="javascript:void(0)" >全部</a></dd>
				        		<dd><a href="javascript:void(0)" >北京</a></dd>
				        		<dd><a href="javascript:void(0)" >上海</a></dd>
				        		<dd><a href="javascript:void(0)" >重庆</a></dd>
				        		<dd><a href="javascript:void(0)" >四川</a></dd>
				        		<dd><a href="javascript:void(0)" >贵州</a></dd>
				        	</dl>
				        </li>
				        <li class="list-group-item">
				        	<dl class="pull-left item_tit" >
				        		<dt>热门城市</dt>
				        	</dl>
				        	<dl class="pull-left item_body" id="city" name="3">
				        		<dd class=""><a class="active a" href="javascript:void(0)" >全部</a></dd>
				        		<dd><a class="a" href="javascript:void(0)" >凯里</a></dd>
				        		<dd><a href="javascript:void(0)" >北京</a></dd>
				        		<dd><a href="javascript:void(0)" >上海</a></dd>
				        		<dd><a href="javascript:void(0)" >贵阳</a></dd>
				        		<dd><a href="javascript:void(0)" >成都</a></dd>
				        	</dl>
				        </li>
				        <li class="list-group-item">
				        	<dl class="pull-left item_tit">
				        		<dt>办学性质</dt>
				        	</dl>
				        	<dl class="pull-left item_body" id="universities_nature" name="4">
				        		<dd class=""><a class="active" href="javascript:void(0)" onclick="addSearch(this)">全部</a></dd>
				        		<dd><a href="javascript:void(0)" >公办</a></dd>
				        		<dd><a href="javascript:void(0)" >民办</a></dd>
				        		<dd><a href="javascript:void(0)" >独立院校</a></dd>
				        		<dd><a href="javascript:void(0)" >中外合作办学</a></dd>
				        	</dl>
				        </li>
				        <li class="list-group-item">
				        	<dl class="pull-left item_tit">
				        		<dt>录取批次</dt>
				        	</dl>
				        	<dl class="pull-left item_body" id="admission_lot" name="5">
				        		<dd class=""><a class="active" href="javascript:void(0)" >全部</a></dd>
				        		<dd><a href="javascript:void(0)" >本科一批</a></dd>
				        		<dd><a href="javascript:void(0)" >本科二批</a></dd>
				        		<dd><a href="javascript:void(0)" >高职高专</a></dd>
				        	</dl>
				        </li>
				        <li class="list-group-item">
				        	<dl class="pull-left item_tit">
				        		<dt>科研教学</dt>
				        	</dl>
				        	<dl class="pull-left item_body" id="teaching_research" name="6">
				        		<dd class=""><a class="active" href="javascript:void(0)" >全部</a></dd>
				        		<dd><a href="javascript:void(0)" >硕士点</a></dd>
				        		<dd><a href="javascript:void(0)" >博士点</a></dd>
				        		<dd><a href="javascript:void(0)" >重点专业</a></dd>
				        		<dd><a href="javascript:void(0)" >重点实验室</a></dd>
				        	</dl>
				        </li>
				    </ul>
				    
				</div>
				<p class="text-center margin_bot margin_top">
					<a class="btn btn-primary fontwei begin_btn disabled" href ="javascript:void(0)" id="sch_query_select">开始查询</a>
				</p>
				<div class="panel panel-default" style="display: none" id="result_count">
					<div class="panel_head padding-side2" id="page"><h4 class="fontwei">共找到<a>'+list.length+'</a>条结果</h4></div>
					<div id="search_result"></div>
						<div class="col-xs-12 bg-white p-10 m-t-10 t-a-c"style="box-shadow: 0px 0px 0px #bdb8b8;">
							<div class="holder" style="text-align: center;"></div>
						</div>
					</section>
				</div>

				<script type="text/javascript">
					//条件数组
					var search = [
							["universities_attributes",""],//["985","211","双一流","行业领军","研究生院"]
							["universities_type",""],//["综合类","理工类","师范类","政法类"]
							["province",""],//北京市
							["city",""],//北京市
							["universities_nature",""],//公办、民办、独立院校、中外合作办学
							["admission_lot",""],//["本科一批","本科二批","高职高专"]
							["teaching_research",""],];//[{"硕士点",20},{"博士点",20}]

					function schoolSearch(e) {
						var where = "";
						if (e == 1){
							var school_name = $(".form-control").val();
							if (school_name == ""){
								where = "";
								layer.msg('请输入您感兴趣的学校名字！', {icon: 5});
								return ;
							} else {
								where = " LOCATE('" + school_name + "',u.universities_name) > 0";
							}
						} else {
							$("#search-ui li a.active").each(function () {
								var name = $(this).parents("dl").attr('name');
								var id = $(this).parents("dl").attr('id');
								var text = $(this).text();
								if (name == 2 || name == 3){
									if (search[name][1] == "" && text != "全部") {
										search[name][1] += "u." + id + "='" + text + "'";
									} else if (search[name][1] != "" && text != "全部") {
										search[name][1] += " OR u." + id + "='" + text + "'";

									} else {
										search[name][1] = "";
									}
								} else {
									if (search[name][1] == "" && text != "全部") {
										search[name][1] +=  " LOCATE('" + text + "',u." + id + ") > 0";
									} else if (search[name][1] != "" && text != "全部") {
										search[name][1] +=  " OR LOCATE('" + text + "',u." + id + ") > 0";
									} else {
										search[name][1] = "";
									}
								}
							})
							var addAnd = false;
							search.forEach(function (value) {
								if (value[1] != ""){
									if (addAnd){
										where += " AND (" + value[1] + ")";
									} else {
										where = "(" + value[1] + ")";
										addAnd = true;
									}
								}
							});
						}
						$.ajax({
							url: "${pageContext.request.contextPath}/school/xgk_school_query.do",
							data: "where=" + where,
							type: "POST",
							dataType: "json",
							success: function (obj) {
								if (obj.state == 1){
									$("#result_count").css("display","inline-block");//显示搜索结果数量
									var list = obj.data;
									$("#page h4 a").html(list.length);
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
										var operate = '<div class="operate_box"> <p class="text-center"><a class="store btn btn-primary" onclick="store(this)" href="javascript:void(0)"><span>取消收藏</span><input type="checkbox" name="" id="" value=""/></a></p>'+
												    '<p class="text-center"><a href="javascript:void(0)" onclick="btn_check(this)" class="add_contrast btn btn-primary"><span>加入对比</span>'+
												    '<input type="checkbox" name="" id="btnid'+(i+1)+'"/></a></p> </div>';
										universities += box_head + "<div><ur><li class='list-group-item' id="+(i+1)+" pname='复旦大学'>" +
												      //院校Logo
													 "<div class='sh_logo'>" +
													 "<a href='${pageContext.request.contextPath}/school/xgk_university_info.do?universityCode=" + list[i].universitiesCode + "'><img alt='学校logo' src='${pageContext.request.contextPath}/" + list[i].universitiesLogo + "' id='" + list[i].universityCode + "'/></a>" +
													 "</div>" +
													 //院校名字   + 院校属性  + 录取批次  + 综合评级
													 "<div class='sch_info sch_search_info padding-side'>" +"<div class=''>" +"<h4><span class=''>" + list[i].universitiesName + "</span><span class=''>" + attrImg + "</span></h4>" +
													 "<p class=''>综合评级（" + admissionLots + "）<span class='text-danger'>" + list[i].totalRanking + "</span></p>" +
													 "</div>" +
													 //院校代码 + 录取概率 + 隶属 + 硕士点 + 博士点
													 "<table border='0' cellspacing='' cellpadding=''><tr><td> 院校代号：<span>" + list[i].universitiesCode + "</span></td><td>录取概率：<span class='text-danger'>" + list[i].admissionProbability + "</span></td></tr>" +
													 "<tr><td>隶属：<span>" + list[i].belongTo + "</span></td><td><span>" + master + "</span></td></tr>" +"<tr><td>院校类型：<span>" + list[i].universitiesNature + "</span></td><td><span>" + doctor + "</span></td></tr>" +
													 "</table></div>" +
													 //[录取分表格   start]
													 "<table class='sch_slice' border='' cellspacing='' cellpadding=''>" +"<tr><th rowspan='2'>年份</th><th colspan='7'>录取分</th><th colspan='2'>计划人数</th></tr><tr><th>类型</th><th>最低分</th><th>平均分</th><th>最高分</th><th>投档线</th><th>线差</th><th>提档位次</th><th>计划人数</th><th>录取人数</th></tr>";
	                                        	

										//[院校扩展表list 院校录取分数线] 
										if(list[i].universRelationList == null){
											universities += "<tr><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td></tr>";
										}else{
											for(var j=0; j<list[i].universRelationList.length; j++){
	        										var lines = list[i].universRelationList[j].collegeScoreLineList;
	        										if(lines.length <= 0){
	        											universities += "<tr><td>" + (list[i].universRelationList[j].urYear == null ? "-" : list[i].universRelationList[j].urYear) + "</td><td>" + (list[i].universRelationList[j].subjectType == null ? "-" : list[i].universRelationList[j].subjectType) + "</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td></tr>";
	        										} else {
	        											universities += "<tr><td>" + list[i].universRelationList[j].urYear + "</td><td>" + list[i].universRelationList[j].subjectType + "</td><td>" + lines[0] + "</td><td>" + lines[1] + "</td><td>" + lines[2] + "</td><td>" + lines[3] + "</td><td>" + lines[4] + "</td><td>" + lines[5] + "</td><td>" + lines[6] + "</td><td>" + lines[7] + "</td></tr>";
		                                        		
	        										}
	        									}	
										}
	                                        	
	                                        	//[录取分表格   end]
	                                        	universities += "</table>" + operate + "</li></ul>";
									}
								$("#search_result").html(universities);
								$("div.holder").jPages({
										containerID : "search_result",
										perPage     : 2,
										first       : "首页",
										previous    : "上一页",
										next        : "下一页",
										last        : "尾页"
								});
							}
						}
					});
						where = "";
					}
					
				</script>
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
				
			</script>
		</main>

		<!-- 右侧边栏-->
		<c:import url="../public/side_right.jsp"></c:import>
		<!-- 页面底部-->
		<c:import url="footer.jsp"></c:import>	

	</body>
	<script type="text/javascript">
		// 自动加载
		$(function () {
			$.ajax({
				url: "/school/xgk_university_province.do",
				data: "",
				type: "POST",
				dataType: "json",
				success: function(obj) {
					if(obj.state == 1) {
						// 加载院校省份信息
						var provinceList = obj.data;
						var provinces = '<dd class=""><a class="active" href="javascript:void(0)" onclick="clickActive(this)">全部</a></dd>';
						for (var i=0; i<provinceList.length; i++){
							provinces += '<dd><a href="javascript:void(0)" onclick="loadCity(this);clickActive(this)">' + provinceList[i] + '</a></dd>';
						}
						$("#province").html(provinces);
					}
				}
			});
		});

		//加载城市
		function loadCity(e) {
			var cityList = getCityList(e.text);
			var cities = '<dd class=""><a class="active a" href="javascript:void(0)" onclick="clickActive(this)">全部</a></dd>';
			for (var i=0; i<cityList.length; i++){
				cities += '<dd><a class="a" href="javascript:void(0)" onclick="clickActive(this)">' + cityList[i] + '</a></dd>';
			}
			$("#city").html(cities);
		}

		//点击选中
		function  clickActive(e) {
			$(e).parents("dl").children().find("a").removeClass("active");
			$(e).addClass("active");
		}

		//给院校查询点击事件【查询按钮是否可以查询】
		$(document).ready(function(){
			$("#search-ui li dl dd a").click(function() {
				var condition  = $("#search-ui li dl dd a.active");
				var canQuery = false;
				for(var i=0; i<condition.length; i++){
					if(condition[i].text != "全部"){
						canQuery = true;
					}
				}
				if(canQuery){
					$("#sch_query_select").click(schoolSearch(2));
					$("#sch_query_select").removeClass("disabled");
				} else {
					$("#sch_query_select").unbind("click");
					$("#sch_query_select").addClass("disabled")
				}
			})
	     });
	</script>
</html>