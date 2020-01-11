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
 		<link rel="stylesheet" href="${pageContext.request.contextPath}/js/layui-v2.5.5/layui/css/layui.css"  media="all">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/index.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/jPages.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/sch_search.css"/>
		<link rel="icon" href="${pageContext.request.contextPath}/web/xgk/favicon.ico" type="image/x-icon">
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
				        		<dd><a href="javascript:void(0)"  name="universities_type">综合类</a></dd>
				        		<dd><a href="javascript:void(0)"  name="universities_type">理工类</a></dd>
				        		<dd><a href="javascript:void(0)"  name="universities_type">师范类</a></dd>
				        		<dd><a href="javascript:void(0)"  name="universities_type">农业类</a></dd>
				        		<dd><a href="javascript:void(0)"  name="universities_type">林业类</a></dd>
				        		<dd><a href="javascript:void(0)"  name="universities_type">政法类</a></dd>
				        		<dd><a href="javascript:void(0)"  name="universities_type">医药类</a></dd>
				        		<dd><a href="javascript:void(0)"  name="universities_type">财经类</a></dd>
				        		<dd><a href="javascript:void(0)"  name="universities_type">民族类</a></dd>
				        		<dd><a href="javascript:void(0)"  name="universities_type">语言类</a></dd>				        		
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
						<input class="btn btn-primary fontwei begin_btn cancel disabled" type="button" value="开始查询" id="sch_query_select">
				</p>
				<div class="panel panel-default" style="display: none" id="result_count">
					<div class="panel_head padding-side2" id="page"><h4 class="fontwei">共找到<a>'+list.length+'</a>条结果</h4></div>
					<!-- 查询结果 -->
					<div id="search_result"><ul classs='search_result list-group' id='universities'></ul></div>
					<!-- 分页 -->
					<div id="search_page"></div>
					</section>
				</div>
			<div class="compare_boxs">
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
					 			<p class="text-center"><a href="javascript:void(0)" onclick="baseCompare(this)" class="btn btn-primary">院校基本情况对比</a></p>
						 		<p class="text-center"><a href="javascript:void(0)" onclick="admitScoreCompare(this)" class="btn btn-primary">院校录取分数对比</a></p>
						 		<p class="text-center"><a href="javascript:void(0)" onclick="clear_contrast(this)" class="btn btn-primary">清空对比</a></p>
					 		</span>
					 	</div>
					</div>
				</div>
			</div>
			
			<script src="${pageContext.request.contextPath}/js/layer/2.4/layer.js" type="text/javascript" charset="utf-8"></script>
			<!--模态框-->
			<div class="padding-side2" id="Modal" style="display: none;">
				<div class="margin_top1 table_wrap">
					<table class="table table-bordered table-bordered marginauto"></table>
				</div>
			</div>
			
			<div class="padding-side2" id="Modal1" style="display: none;">
				<ul class="list-unstyled"></ul>
			</div>
			<!--/模态框-->
			<script type="text/javascript">
				
				/**
				 * 弹框
				 * @param {Object} title
				 * @param {Object} content
				 * @param {Object} type
				 */
				function modelshow(title,content,type) {
					layer.open({
						type: type,
						area: ['888px', '500px'],
						fix: true, //是否跟随页面滚动
						Btn: 0,
						shadeClose: true, //点击阴影开关
						shade: 0.4, //阴影透明度
						move: 'false', //默认：.layui-layer-title
						moveOut: false, //是否允许拖拽到窗口外
						title: title,
						content: content,
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
					var schName=$(obj).parents('li').attr('pname');
					var schLogo=$(obj).parents('li').find(".sh_logo img").attr("src");
					var schCode=$(obj).parents('li').find(".sch_info .schCode").text();
					if ($(obj).find('input').is(":checked")) {
						$(obj).removeClass("btn-primary");
						$(obj).addClass("cancel");
						$(obj).find('span').text("取消收藏");

						love(obj);
					}else{
						$(obj).removeClass("cancel");
						$(obj).addClass("btn-primary");
						$(obj).find('span').text("收藏学校");
						unlove(obj);

					}
				}
				function love(obj){
					if('${uid}' != ''){
						var schName=$(obj).parents('li').attr('pname');
						var schLogo=$(obj).parents('li').find(".sh_logo img").attr("src");
						var schCode=$(obj).parents('li').find(".sch_info .schCode").text();
						var data = "eCode=" + schCode + "&eName=" + schName + "&eLogo=" + schLogo + "&eType=0";
						$.ajax({
							url: "${pageContext.request.contextPath}/ens/hqt_add_enshrine.do",
							data:data,
							type:"POST",
							dataType:"json",
							success:function(obj){
								if(obj.state == 0){
									layer.msg(obj.message,{icon:2,time:1000});
								}else{
									$(obj).attr("id",obj.data.eId);
									layer.msg(obj.message,{icon:6,time:1000});

								}
							}
						});
					}
				}
				function unlove(obj){
					if($(obj).attr("id") != ''){
						$.ajax({
							url: "${pageContext.request.contextPath}/ens/hqt_delete_enshrine.do",
							data: "eId=" + $(obj).attr("id"),
							type: "POST",
							dataType:"json",
							success:function(obj){
								if(obj.state == 0){
									layer.msg(obj.message,{icon:2,time:1000});
								}else{
									layer.msg(obj.message,{icon:6,time:1000});
								}
							}
						});
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
						$('.contrast').css("display","block"); 
					}
					add_contrast(rowId,imgUrl);
					if ($('.contrast_list li').length==0) {
						close_conbox();
					}
				}
				
				//基本情况对比
				function baseCompare(obj) {
					modelshow('院校基本情况对比',$('#Modal'),1);	
				}
		    	function admitScoreCompare(obj) {
					modelshow('院校录取分数对比',$('#Modal1'),1);	
				}
		    	
				/**
				 * 渲染基本信息表
				 * @param {Object} id 被加入对比中的item的id
				 */
				function fatch_BaseInfo(id) {
					var row=[
						{ filed:"院校", value:[] },
						{ filed:"", value:[] },//name
						{ filed:"录取批次", value:[] },
						//{ filed:"标签属性", value:[] },
						{ filed:"综合排名", value:[] },
						{ filed:"学校类型", value:[] },
						{ filed:"硕士点个数", value:[] },
						{ filed:"博士点个数", value:[] }
					];
					var list=$('.contrast_list li');
					var table='<table class="table-bordered table-bordered margin_top1"><tbody>';
					for (var i=0;i<row.length;i++) {
						table+='<tr><td>'+row[i].filed+'</td>';
						for (var j=0;j<list.length;j++){
							wrapId=list[j].id.substr(4,id.length);
							row[0].value[j]=$("#"+wrapId).find(".sh_logo").html();
							row[1].value[j]=$("#"+wrapId).attr("pname");
							row[2].value[j]=$("#"+wrapId).find(".sch_info .admission_lot").text();
							/* var arr=$("#"+wrapId).find(".sch_info .schoolTag img");
							var tags='';
							for (var k=0;k<arr.length;k++) {
								tags+=arr[k].alt+"/"
							}
							row[3].value[j]=tags; */
							/* row[3].value[j]=$("#"+wrapId).find(".sch_info .schoolTag img").attr("alt"); */
							row[3].value[j]=$("#"+wrapId).find(".sch_info .admitRank").text();
							row[4].value[j]=$("#"+wrapId).find(".sch_info .schType").text();
							row[5].value[j]=$("#"+wrapId).find(".sch_info .masterNum").text();
							row[6].value[j]=$("#"+wrapId).find(".sch_info .doctorNum").text();
							table+='<td><div>'+row[i].value[j]+'</div></td>';
						}
						table +="</tr>";
					}
					table+='</tbody></table>';
					$("#Modal").html(table);
				}
				 
				 /**
				  * 录取分数对比
				  * @param {Object} id rowId
				  */
				 function fatch_admitScore(id) {
				 	var schlogo=$("#"+id).find(".sh_logo").html();
				 	var table=$("#"+id).find(".sch_slice").prop("outerHTML");
				 	var list='<li id=cp'+id+'><div class="compareScoreItem"><div class="clogo">'+ schlogo+'</div><div class="ctable">'+table+'</div></div></li>';
				 	$("#Modal1 ul").append(list);
				 }
				  
				 /**
				  * 取消对比
				  * @param {Object} id rowId
				  */
				 function delScroeCompare(id){
				 	$("#cp"+id).remove();
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
						fatch_BaseInfo(row_id);
						fatch_admitScore(row_id);
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
					fatch_BaseInfo(rowId);
					delScroeCompare(rowId);
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
					
					for (var i=0;i<all_check.length;i++){
						all_check[i].checked=false;
					}
					$(".contrast_list").children().remove();
					$("#Modal1 ul").children().remove();
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
							$("#sch_query_select").removeClass("cancel disabled");
						} else {
							$("#sch_query_select").removeAttr("onclick");
							$("#sch_query_select").addClass("cancel disabled")
						}
					}
 				
				//院校查询
				var where = "";
				function schoolSearch(e){
					if (e == 1){
						where = "where=";
						var school_name = $("form input.form-control").val();
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
								//var universities = "<ul classs='search_result list-group' id='universities'>";
								var lists="";
								for (var i=0; i<list.length; i++){	
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
	                                        if(list[i].admissionLot != null){
	                                        	var admissionLotList = JSON.parse(list[i].admissionLot);
		                                        for (var j=0; j<admissionLotList.length; j++){
		                                            if (j == admissionLotList.length-1) {
		                                                admissionLots += admissionLotList[j];
		                                            }else {
		                                                admissionLots += admissionLotList[j] + " ";
		                                            }
		                                        }
	                                        }
                                        	var attrImg = "";//院校属性图片
                                        	var universitiesAttributes = JSON.parse(list[i].universitiesAttributes);
                                        	if(universitiesAttributes != null){
        									for (var f=0; f<universitiesAttributes.length; f++){
        										if (universitiesAttributes[f] == "985"){
        											attrImg += "<img src='${pageContext.request.contextPath}/img/xgk/attr/985.png' alt='985'/>"
        										}
        										if (universitiesAttributes[f] == "211"){
        											attrImg += "<img src='${pageContext.request.contextPath}/img/xgk/attr/211.png' alt='211'/>"
        										}
        										if (universitiesAttributes[f] == "双一流"){
        											attrImg += "<img src='${pageContext.request.contextPath}/img/xgk/attr/syl.png' alt='双一流'/>"
        										}
        										if (universitiesAttributes[f] == "行业领军"){
        											attrImg += "<img src='${pageContext.request.contextPath}/img/xgk/attr/hylj.png' alt='行业领军'/>"
        										}
        										if (universitiesAttributes[f] == "研究生院"){
        											attrImg += "<img src='${pageContext.request.contextPath}/img/xgk/attr/yjsy.png' alt='研究生院'/>"
        										}
        									}
                                        	}
									//var box_head = "<ul classs='search_result list-group' id='universities'>";
									var operate = "";
									if(list[i].eId == null){
										operate = "<div class='operate_box padding-side'><p class='text-center'><a id='' class='store btn btn-primary' onclick='store(this)' href='javascript:void(0)'><span>收藏学校</span><input type='checkbox' name='' id='' value=''/></a></p>" +
												"<p class='text-center'><a href='javascript:void(0)' onclick='btn_check(this)' class='add_contrast btn btn-primary'><span>加入对比</span>" +
												"<input type='checkbox' name='' id='btnid00" + (i+1) + "'/></a></p> </div>";
									} else {
										operate = "<div class='operate_box padding-side'><p class='text-center'><a class='store btn cancel' id='" + list[i].eId + "' onclick='store(this)' href='javascript:void(0)'><span>取消收藏</span><input type='checkbox' name='' id='' value='' checked='checked'/></a></p>"+
												"<p class='text-center'><a href='javascript:void(0)' onclick='btn_check(this)' class='add_contrast btn btn-primary'><span>加入对比</span>" +
												"<input type='checkbox' name='' id='btnid00" + (i+1) + "'/></a></p> </div>";
									}
									lists +=  "<li class='list-group-item' id=00"+(i+1)+" pname='" + list[i].universitiesName + "'>" +
											      //院校Logo
												 "<div class='sh_logo'>" +
												 "<a href='${pageContext.request.contextPath}/school/xgk_university_info.do?universityCode=" + list[i].universitiesCode + "'><img alt='学校logo(暂无图片)' src='${COLLEGE_PHOTO_PREFIX}/" + list[i].universitiesLogo + "' id='" + list[i].universityCode + "'/></a>" +
												 "</div>" +
												 //院校名字   + 院校属性  + 录取批次  + 综合评级
												 "<div class='sch_info sch_search_info padding-side'>" +"<div class=''>" +"<label class='schoolName fontwei'>"+list[i].universitiesName+"</label>" +"<span class='schoolTag'>" + attrImg + "</span>"+
												 "<p class=''>综合评级（<span class='admission_lot'>"+admissionLots+ "</span>）<span class='admitRank text-danger'>" + list[i].totalRanking + "</span></p>" +
												 "</div>" +
												 //院校代码 + 录取概率 + 隶属 + 硕士点 + 博士点
												 "<table border='0' cellspacing='' cellpadding=''><tr><td> 院校代号：<span class='schCode'>" + list[i].universitiesCode + "</span></td><td> <div>录取概率：<span class='text-danger'>" + list[i].admissionProbability + "</span></div> </td></tr>" +
												 "<tr><td>隶属：<span>" + list[i].belongTo + "</span></td><td><span class='masterNum'>" + master + "</span></td></tr>" +"<tr><td>院校类型：<span class='schType'>" + list[i].universitiesNature + "</span></td><td><span class='doctorNum'>" + doctor + "</span></td></tr>" +
												 "</table></div>" +
												 //[录取分表格   start]
												 "<table class='sch_slice' border='' cellspacing='' cellpadding=''>" +"<tr><th rowspan='2'>年份</th><th colspan='7'>录取分</th><th colspan='2'>计划人数</th></tr><tr><th>类型</th><th>最低分</th><th>平均分</th><th>最高分</th><th>投档线</th><th>线差</th><th>提档位次</th><th>计划人数</th><th>录取人数</th></tr>";
									
												 //[院校扩展表list 院校录取分数线] 
									if(list[i].universRelationList == null){
										lists += "<tr><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td></tr>";
									}else{
										var universRelationList = list[i].universRelationList;										
										for(var j=0; j<universRelationList.length;j++){
											if(j>4){
												break;
											}
											var collegeScoreLine = universRelationList[j].collegeScoreLine;											
											if($.isEmptyObject(collegeScoreLine) == false){
												if(collegeScoreLine.startsWith("[")){
													var lines = JSON.parse(collegeScoreLine);
													if(lines.length > 0){
														lists += "<tr><td>" + universRelationList[j].urYear + "</td><td>" + universRelationList[j].subjectType + "</td><td>" + lines[0] + "</td><td>" + lines[1] + "</td><td>" + lines[2] + "</td><td>" + lines[3] + "</td><td>" + lines[4] + "</td><td>" + lines[5] + "</td><td>" + lines[6] + "</td><td>" + lines[7] + "</td></tr>";
													}	
												}else {
													lists += "<tr><td>" + (universRelationList[j].urYear == null ? "-" : universRelationList[j].urYear) + "</td><td>" + (universRelationList[j].subjectType == null ? "-" : universRelationList[j].subjectType) + "</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td></tr>";
												}													
											} 												
										}
									}	
									
                                    lists += "</table>" + operate + "</li>";
                                        	
								}
							 	$("#universities").html(lists);
							 	//分页
								layui.use(['laypage', 'layer'], function(){
								  var laypage = layui.laypage
								  ,layer = layui.layer;
								  laypage.render({
								    elem: 'search_page',
								    count: obj.data.count,
								    limit: 5,
								    limits: [1,3,5,7,9,11],
								    layout: ['prev', 'page', 'next', 'limit', 'refresh', 'skip'],
								    jump: function(obj,first){
								      	var offset = parseInt(obj.limit)*(parseInt(obj.curr)-1);
								      	var countPerPage = parseInt(obj.limit);
								      	var end_where =  "&offset=" + offset + "&countPerPage=" + countPerPage;
								      	if(!first && where != ""){
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
								$("#result_count").css("display","block");//显示搜索结果数量
								var list = obj.data.list;
								$("#page h4 a").html(obj.data.count);
								var lists = "";
								for (var i=0; i<list.length; i++){																	
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
			                              if(list[i].admissionLot != null){
			                            		var admissionLotList = JSON.parse(list[i].admissionLot);
			                                	for (var j=0; j<admissionLotList.length; j++){
				                                    if (j == admissionLotList.length-1) {
				                                        admissionLots += admissionLotList[j];
				                                    }else {
				                                        admissionLots += admissionLotList[j] + " ";
				                                    }
				                                }
			                               }  
		                                    var attrImg = "";//院校属性图片
		                                    var universitiesAttributes = JSON.parse(list[i].universitiesAttributes);
		                                    if(universitiesAttributes != null){
			        							for (var f=0; f<universitiesAttributes.length; f++){
			        								if (universitiesAttributes[f] == "985"){
			        									attrImg += "<img src='${pageContext.request.contextPath}/img/xgk/attr/985.png' alt='985'/>"
			        								}
			        								if (universitiesAttributes[f] == "211"){
			        									attrImg += "<img src='${pageContext.request.contextPath}/img/xgk/attr/211.png' alt='211'/>"
			        								}
			        								if (universitiesAttributes[f] == "双一流"){
			        									attrImg += "<img src='${pageContext.request.contextPath}/img/xgk/attr/syl.png' alt='双一流'/>"
			        								}
			        								if (universitiesAttributes[f] == "行业领军"){
			        									attrImg += "<img src='${pageContext.request.contextPath}/img/xgk/attr/hylj.png' alt='行业领军'/>"
			        								}
			        								if (universitiesAttributes[f] == "研究生院"){
			        									attrImg += "<img src='${pageContext.request.contextPath}/img/xgk/attr/yjsy.png' alt='研究生院'/>"
			        								}
			        							}
		                                    }
									var id = "";
									var operate = "";
									if(list[i].eId == null){
										operate = "<div class='operate_box padding-side'><p class='text-center'><a id='' class='store btn btn-primary' onclick='store(this)' href='javascript:void(0)'><span>收藏学校</span><input type='checkbox' name='' id='' value=''/></a></p>" +
												"<p class='text-center'><a href='javascript:void(0)' onclick='btn_check(this)' class='add_contrast btn btn-primary'><span>加入对比</span>" +
												"<input type='checkbox' name='' id='btnid00" + (i+1) + "'/></a></p> </div>";
									} else {
										operate = "<div class='operate_box padding-side'><p class='text-center'><a class='store btn cancel' id='" + list[i].eId + "' onclick='store(this)' href='javascript:void(0)'><span>取消收藏</span><input type='checkbox' name='' id='' value='' checked='checked'/></a></p>" +
												"<p class='text-center'><a href='javascript:void(0)' onclick='btn_check(this)' class='add_contrast btn btn-primary'><span>加入对比</span>" +
												"<input type='checkbox' name='' id='btnid00" + (i+1) + "'/></a></p> </div>";
									}
									lists += 	"<li class='list-group-item' id=00"+(i+1)+" pname='" + list[i].universitiesName + "'>" +
										     //院校Logo
										 	"<div class='sh_logo'>" +
											"<a href='${pageContext.request.contextPath}/school/xgk_university_info.do?universityCode=" + list[i].universitiesCode + "'><img alt='学校logo(暂无图片)' src='${COLLEGE_PHOTO_PREFIX}/" + list[i].universitiesLogo + "' id='" + list[i].universityCode + "'/></a>" +
											"</div>" +
											//院校名字   + 院校属性  + 录取批次  + 综合评级
											"<div class='sch_info sch_search_info padding-side'>" +"<div class=''>" +"<label class='schoolName fontwei'>"+list[i].universitiesName+"</label>" +"<span class='schoolTag'>" + attrImg + "</span>"+
											"<p class=''>综合评级（<span class='admission_lot'>"+admissionLots+ "</span>）<span class='admitRank text-danger'>" + list[i].totalRanking + "</span></p>" +
											"</div>" +
											//院校代码 + 录取概率 + 隶属 + 硕士点 + 博士点
											"<table border='0' cellspacing='' cellpadding=''><tr><td> 院校代号：<span class='schCode'>" + list[i].universitiesCode + "</span></td><td> <div>录取概率：<span class='text-danger'>" + list[i].admissionProbability + "</span></div> </td></tr>" +
											"<tr><td>隶属：<span>" + list[i].belongTo + "</span></td><td><span class='masterNum'>" + master + "</span></td></tr>" +"<tr><td>院校类型：<span class='schType'>" + list[i].universitiesNature + "</span></td><td><span class='doctorNum'>" + doctor + "</span></td></tr>" +
											"</table></div>" +
											//[录取分表格   start]
											"<table class='sch_slice' border='' cellspacing='' cellpadding=''>" +"<tr><th rowspan='2'>年份</th><th colspan='7'>录取分</th><th colspan='2'>计划人数</th></tr><tr><th>类型</th><th>最低分</th><th>平均分</th><th>最高分</th><th>投档线</th><th>线差</th><th>提档位次</th><th>计划人数</th><th>录取人数</th></tr>";
												 
									//[院校扩展表list 院校录取分数线] 
									if(list[i].universRelationList == null){
										lists += "<tr><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td></tr>";
									}else{
										var universRelationList = list[i].universRelationList;
										console.log(universRelationList);
										for(var j=0; j<universRelationList.length;j++){
											if(j>4){
												break;
											}
											var collegeScoreLine = universRelationList[j].collegeScoreLine;
											console.log("collegeScoreLine:" + collegeScoreLine);
											if(!$.isEmptyObject(collegeScoreLine)){												
												if(collegeScoreLine.startsWith("[")){
													var lines = JSON.parse(collegeScoreLine);
													if(lines.length > 0){
														lists += "<tr><td>" + universRelationList[j].urYear + "</td><td>" + universRelationList[j].subjectType + "</td><td>" + lines[0] + "</td><td>" + lines[1] + "</td><td>" + lines[2] + "</td><td>" + lines[3] + "</td><td>" + lines[4] + "</td><td>" + lines[5] + "</td><td>" + lines[6] + "</td><td>" + lines[7] + "</td></tr>";
													}	
												}else {
													lists += "<tr><td>" + (universRelationList[j].urYear == null ? "-" : universRelationList[j].urYear) + "</td><td>" + (universRelationList[j].subjectType == null ? "-" : universRelationList[j].subjectType) + "</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td></tr>";
												}													
											}else{
												lists += "<tr><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td></tr>";
											}
										}
									}							
	                                    	//[录取分表格   end]
	                                    	lists += "</table>" + operate + "</li></ul>";                                        	
								}
							 	$("#universities").html(lists);	 
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