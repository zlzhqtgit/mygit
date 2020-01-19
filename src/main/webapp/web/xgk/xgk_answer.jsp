<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset=utf-8>
<title>好前途后台登录页</title>
<meta name="viewport" content="width=device-width, initial-scale=0.2">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/index.css" />
<link rel="icon" href="${pageContext.request.contextPath}/web/xgk/favicon.ico" type="image/x-icon">		
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/layer/2.4/layer.js"></script>
<script src="${pageContext.request.contextPath}/js/web/xgk/itempool.js" type="text/javascript" charset="utf-8"></script>
</head>

<body>
<!-- 页面顶部-->
<c:import url="header.jsp"></c:import>

		<main class="container" style="height: 500px;margin-bottom:2em;">
			<section class="row">
				<!--/模态框-->
			    <div class="" id="Modal" style="display:none;">
					<div class="Modal_box">
						<div class=""><img style="width:100%" alt="" src="${pageContext.request.contextPath}/img/xgk/tipImg.jpg"/></div>
						<p id="un_complate" class="modal-body" style="word-wrap : break-word;width: 100%;"></p >
				        <p class="modal-footer">
				        	<a class="btn btn-primary" onclick="jxdt('jxdt')">继续答题</a>
				        	<!-- <a class="btn btn-primary">继续答题</a> -->
				        </p>
					</div>
				</div>
			    <!--/模态框--> 
			
				<div class="test_instruction">

					<h1 class="text-primary">
					<c:if test="${cpid==1}">
					霍兰德职业兴趣测评
					</c:if>
					<c:if test="${cpid==2}">
					MBTI性格测评
					</c:if>
					</h1>
					<div class="thumbnail">
						<div id="tm_box" class="side_choise">							
							<div id="" class="btn-group">
								<button type="button" id="dropdown_btn" onclick="sff()" class="btn btn-default dropdown-toggle">
							    01-20 <span class="caret" style="margin-left: 10px;"></span>
							  </button>
							<div id="tmdhdiv" class="dropdown-menu"></div>
						</div>
						</div>
						<script type="text/javascript">							
							//侧面题目
					       function sff(e){
					        $('#'+e).slideToggle(10,function() {
					         $(this).parent().siblings().find('.dropdown-menu').slideUp();
					        });
					       };
						</script>						
						<div class="caption answer_temp" style="padding-top:4em;padding-bottom:2em;">
							<h4 class="padding-side2" id="tm"></h4>						
							<div class="choise margin_top padding-side2" style=" margin-left: 2em;">
								<div id="tmxs"> </div>
							</div>
							<p class="text-right margin_top" style="padding-right:2em">								
									<a id="syt" onclick="syt()" class="btn btn-default" role="button">上一题</a>
									<a id="xyt" onclick="xyt()" class="btn btn-default btn-primary" role="button">下一题</a>								
									<a id="tjda" onclick="tjda()" class="btn btn-primary" >提交</a>
							</p>
							<p class="text-right"><span id="current">1</span>/<span id="total">60</span></p>
							<input id="num" type="hidden" value="0" />							
							<div class="progress">
								<div id="progress" class="progress-bar" role="progressbar" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100" style="width: 0%;">
									<span class="sr-only">10%</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>			
		</main>





		
<!-- 页面底部-->
<c:import url="../public/side_right.jsp"></c:import>	
<!-- 页面底部-->
<c:import url="footer.jsp"></c:import>	
</body>
<script type="text/javascript">
				var id ="${cpid}";//测评类型
				var len;//霍兰德数组长度[MBTI数组长度]
				var numlen = Number($("#num").val());//题目编号
				var cpda = new Array();//存储答案 [0]题号 [1]存储答案 [2]是否完成的题目
				var cont=0;//未答题数量
				var strone;//未答题数
				
				/*  $("#Modal a").on('click',closeModal);//点击模态框或 a标签 隐藏Modal模态框
				function closeModal(){
					$("#Modal").css("display","none");//隐藏 Modal 模态框
				}  */
				//弹框
				function modelshow(title, content, type) {
					layer.open({
						type: type,
						area: ['800px', '660px'],
						fix: true, //是否随跟页面滚动
						maxmin: false,
						shadeClose: true, //点击阴影开关
						shade: 0.4, //阴影透明度
						move: 'false', //默认：.layui-layer-title
						moveOut: false, //是否允许拖拽到窗口外
						title: title,
						content: content,
						scrollbar: true
					});
				}
				
				//继续答题
				function jxdt(e){
					layer.closeAll();
					var nu = "";
					if(e == 'jxdt'){
						nu = strone - 1;	
					}else{
						var nu = e - 1;
					}				
					if(len >= nu) {
						ti(nu);
						tu(nu, nu-1);
						$('#current').text(nu+1);
					} else {
						return;
					}
					$("#progress").css("width",100/len*(nu)+"%"); 				
				}				
					
				
				//点击提交实现的方法
				function tjda() {
					$('#myModal').show();
					var val = $('input[name="cpda"]:checked').val();//选中题目的题目编号
					if(val == null) {

					} else {
						cpda[Number($("#num").val())][1] = val;//设置选中题目的编号进入答案数组
						$("#id" + $("#num").val()).css('background', '#23de20');//设置背景颜色
					}
					var flag = true;
					var cpname = "";//未答题目名字符串
					for(var i = 0; i < cpda.length; i++) {
						if(cpda[i][1] == 0) { //未答题
							flag = false;
							cont++;
							cpname += cpda[i][0] + "-";
							if(cont==1){
								strone=cpda[i][0];//第一道未答题题数
							}
							
						}
					}				
					if(flag == false) {
						cont=0;
						//模态框弹出未完成的题目
					      var question=(cpname.split('-'));
						//var question1=question.pop();
					      var items='';
					      for (i=0;i<question.length-1;i++) {
					       //console.log(question[i]);
					       items +='<a href="javascript:void(0);" onclick="jxdt(' + question[i] + ')">'+question[i]+'</sa>' ;
					      }
					     if(items==''){
					    	 $("#Modal").css("display","none");//隐藏
					      }else{
					    	 $("#un_complate").html(items);//显示未答题a标签
					    	 //$("#Modal").css("display","block");//显示
					    	 modelshow(false,$('#Modal'),1);	
					      }
					    
						/* alert("你还有相关的测评题目没做，题目编号为：" + cpname); */
						tu(strone-1,id);
						$('#current').text(strone);
						//$("#progress").css("width",100/len*(strone)+"%");
						ti(strone-1);
					} else {
						//location.href="../cp/indexno.do?cpda="+JSON.stringify(cpda);
						var url = "${pageContext.request.contextPath}/cp/xgk_result.do";
						var data = "id=" + id + "&cpda=" + JSON.stringify(cpda);
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
								//alert(obj.message);
								location.href = "${pageContext.request.contextPath}/cp/xgk_report.do";
							}
						});
					}
				}

				//页面加载运行
				$(function() {
					var tmdh = "",
						tmbox="",
						j=1;						
					if(id == 1) {
						len = hld.length - 1;
					} else {
						len = mbti.length - 1;
					}
					for(var i = 0; i <=len; i++) {
						cpda[i] = new Array();
						cpda[i][0] = i + 1; //题号
						cpda[i][1] = 0; //存储答案
						cpda[i][2] = 0; //是否完成的题目						
						if (i%20==0 && i != 0) {
							tmbox +='<div  class="btn-group"><button type="button" id="dropdown_btn" onclick="sff('+i+')" class="btn btn-default dropdown-toggle">'+((i-20)+1)+"-"+i+'<span class="caret"></span></button>'+
							'<div id="'+i+'" class="dropdown-menu">'+tmdh+'</div></div>';
							tmdh="";
							j++;
						}
						tmdh += '<a id="id' + (cpda[i][0] - 1) + '" onclick="dtk(' + (cpda[i][0] - 1) + "," + id + ')"  class="tmdha">' + cpda[i][0] + '</a>';
					}					
					tmbox+='<div  class="btn-group"><button type="button" id="dropdown_btn" onclick="sff(123)" class="btn btn-default dropdown-toggle">'+((j-1)*20+1)+"-"+(len+1)+'<span class="caret"></span></button>'+
							'<div id="123" class="dropdown-menu">'+tmdh+'</div></div>';	
					$("#tm_box").html(tmbox);
					$("#total").html(len + 1);
					var nu = Number($("#num").val());
					tu(nu, id);
					if(nu <= 0) {
						$("#syt	").attr("disabled", "disabled");
					} else {
						$("#syt").removeAttr("disabled");
					}					
					$("#progress").css("width",100/len*(nu)+"%");
				});

				//点击下一題按钮
				function xyt() {
					//1秒后执行
					setTimeout(function(){
						var nu = Number($("#num").val()) + 1;					
						if(len >= nu) {
							ti(nu);
							tu(nu, id);
							$('#current').text(nu+1);
						} else {
							return;
						}
						$("#progress").css("width",100/len*(nu)+"%");
						},1000);
					
				}
				//点击上一题按钮
				function syt() {
					var nu = Number($("#num").val()) - 1;
					if(nu==-1){
						$('#current').text(1);
						ti(nu);
						tu(nu, id);
					}else if(nu > -1){
						$('#current').text(nu+1);
						ti(nu);
						tu(nu, id);
					}else{
						return;
					}					
					$("#progress").css("width",100/len*(nu)+"%");
					
				}
				//控制上一题，下一题启用状态
				function ti(nu) {
					if(len <= nu) { 						
						$("#xyt").removeClass( "btn-primary" );
						$("#xyt	").attr("disabled", "disabled");//设置下一题该禁止选中
						$("#syt").removeAttr("disabled");
						$("#syt").addClass( "btn-primary" );						
					} else if(nu <= 0) {
						$("#syt").removeClass( "btn-primary" );
						$("#syt	").attr("disabled", "disabled");//设置上一题该禁止选中
						$("#xyt").removeAttr("disabled");
						$("#xyt").addClass( "btn-primary" );
					} else {
						$("#syt").removeAttr("disabled");//取消上一题禁止选中
						$("#syt").addClass( "btn-primary" );
						$("#xyt").addClass( "btn-primary" );
						$("#xyt").removeAttr("disabled");//取消下一题禁止选中
					}
					
				}
				//点击答题卡跳转到相应的题目并控制上一题、下一题的按钮
				function dtk(nu, id) {
					tu(nu, id);
					if(len >= nu) {
						ti(nu);
					} else if(nu >= -1) {
						ti(nu);
					} else {
						return;
					}
					$('#current').text(nu+1);
					$("#progress").css("width",100/len*(nu)+"%");
					
				}
				//向数组里获取题目
				function tu(nu, id) {
					var val = $('input[name="cpda"]:checked').val();//获得当前选中的 题目数
					if(val == null) {

					} else {
						cpda[Number($("#num").val())][1] = val;//获得题目中的答案 放到cpada中
						cpda[Number($("#num").val())][2] = 1;//设置当题已答题
						$("#id" + $("#num").val()).css('background', 'red');//设置背景颜色为红色
					}
					var tmxsname = "";
					if(cpda[nu][2] == 1 && cpda[nu][1] == 1) {
						tmxsname += '<input type="radio" name="cpda" style="zoom: 150%;" value="1" checked="checked" /><span id="da_a"> </span><br />' +
							'<input type="radio" style="zoom: 150%;" name="cpda" value="2" /><span id="da_b"> </span><br />';
					} else if(cpda[nu][2] == 1 && cpda[nu][1] == 2) {
						tmxsname += '<input type="radio" style="zoom: 150%;" name="cpda" value="1"  /><span id="da_a"> </span><br />' +
							'<input type="radio" style="zoom: 150%;" name="cpda" value="2" checked="checked" /><span id="da_b"> </span><br />';
					} else {
						tmxsname += '<input type="radio" style="zoom: 150%;" name="cpda" value="1" onchange="xyt()"/><span id="da_a"> </span><br />' +
							'<input type="radio" style="zoom: 150%;" name="cpda" value="2" onchange="xyt()"/><span id="da_b"> </span><br />';
					}
					$("#tmxs").html(tmxsname);

					if(id == 1) {
						//通过数组的属性拿相应的值
						var tm = hld[nu].name;
						var da_a = hld[nu].dass[0].da;
						var da_b = hld[nu].dass[0].db;
						$("#tm").text(tm);
						$("#da_a").text(da_a);
						$("#da_b").text(da_b);
					} else {
						var tm = mbti[nu].name;
						var da_a = mbti[nu].dass[0].da;
						var da_b = mbti[nu].dass[0].db;
						$("#tm").text(tm);
						$("#da_a").text(da_a);
						$("#da_b").text(da_b);
					}
					$("#num").val(nu);
				}
			</script>
</html>
