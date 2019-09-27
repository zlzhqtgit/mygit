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
<script src="${pageContext.request.contextPath}/js/web/xgk/dropdown.js" type="text/javascript" charset="utf-8"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/web/xgk/itempool.js" type="text/javascript" charset="utf-8"></script>
</head>

<body>
<!-- 页面顶部-->
<c:import url="header.jsp"></c:import>

		<main class="container" style="height: 500px;margin-bottom:2em;">
			<section class="row">
				<!--/模态框-->
			    <div class="">
			     <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			      <div class="modal-dialog">
			       <div class="modal-content">
			       <!-- <div class=""><img alt="" src=""/></div> -->
			        <div class="modal-header  text-danger bg-warning">
			         <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			         <h4 class="modal-title" id="myModalLabel">你还有相关的测评题目没做，题目编号为：</h4>
			        </div>
			        <p id="un_complate" class="modal-body" style="word-wrap : break-word;width: 100%;"></p >
			        <p class="modal-footer">
			         <!-- <button type="button" class="btn btn-primary" data-dismiss="modal">继续答题</button> -->
			         <a href="" class="btn btn-primary" data-dismiss="modal">继续答题</a>
			        </p>
			       </div><!-- /.modal-content -->
			      </div><!-- /.modal -->
			     </div>
			    </div>
			    <!--/模态框-->
			
				<div class="test_instruction">

					<h1 class="text-primary">
					<c:if test="${cpid==1}">
					霍兰德职业兴趣测评
					</c:if>
					<c:if test="${cpid==2}">
					MBTI职业兴趣测评
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
								<a id="tjda" onclick="tjda()" class="btn btn-primary" data-toggle="modal" data-target="#myModal">提交</a>
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
<c:import url="side_right.jsp"></c:import>	
<!-- 页面底部-->
<c:import url="footer.jsp"></c:import>	
</body>
<script type="text/javascript">
				var id ="${cpid}";					
				var len;  //使用length获取数组长度
				var numlen = Number($("#num").val());
				var cpda = new Array();
				var cont=0;
				var strone;
				//点击提交实现的方法
				function tjda() {
					var val = $('input[name="cpda"]:checked').val();
					if(val == null) {

					} else {
						cpda[Number($("#num").val())][1] = val;
						$("#id" + $("#num").val()).css('background', '#23de20');
					}
					var flag = true;
					var cpname = "";
					for(var i = 0; i < cpda.length; i++) {
						if(cpda[i][1] == 0) {
							flag = false;
							cont++;
							cpname += cpda[i][0] + "-";
							if(cont==1){
								strone=cpda[i][0];
							}
						}
					}
					if(flag == false) {
						//模态框弹出未完成的题目
					       var question=(cpname.split('-'));
						//var question1=question.pop();
					      var items='';
					      for (i=0;i<question.length-1;i++) {
					       console.log(question[i]);
					       items +='<a>'+question[i]+'</ a>' ;
					      }
					     
					      if(items==""){
					    	  //$('#myModal').hide();
					    	  $('#identifier').modal('hide');
					      }else{
					    	 $("#un_complate").html(items);  
					      }
						/* alert("你还有相关的测评题目没做，题目编号为：" + cpname); */
						tu(strone-1,id);
						$('#current').text(strone);
						$("#progress").css("width",100/len*(strone)+"%");
						ti(strone-1);
					} else {
						//location.href="../cp/indexno.do?cpda="+JSON.stringify(cpda);
						var url = "../cp/xgk_result.do";
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
								alert(obj.message);
								location.href = "../cp/xgk_report.do";
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
					
					var nu = Number($("#num").val());
					tu(nu, id);
					if(nu <= 0) {
						$("#syt	").attr("disabled", "disabled");
					} else {
						$("#syt").removeAttr("disabled");
					}					
					$("#progress").css("width",100/len*(nu+1)+"%");
				});

				//点击下一題按钮
				function xyt() {
					var nu = Number($("#num").val()) + 1;					
					if(len >= nu) {
						ti(nu);
						tu(nu, id);
						$('#current').text(nu+1);
					} else {
						return;
					}
					console.log(100/len*(nu+1));
					$("#progress").css("width",100/len*(nu+1)+"%");
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
					$("#progress").css("width",100/len*(nu+1)+"%");
					
				}
				//控制上一题，下一题启用状态
				function ti(nu) {
					if(len <= nu) { 						
						$("#xyt").removeClass( "btn-primary" );
						$("#xyt	").attr("disabled", "disabled");
						$("#syt").removeAttr("disabled");
						$("#syt").addClass( "btn-primary" );						
					} else if(nu <= 0) {
						$("#syt").removeClass( "btn-primary" );
						$("#syt	").attr("disabled", "disabled");
						$("#xyt").removeAttr("disabled");
						$("#xyt").addClass( "btn-primary" );
					} else {
						$("#syt").removeAttr("disabled");
						$("#syt").addClass( "btn-primary" );
						$("#xyt").addClass( "btn-primary" );
						$("#xyt").removeAttr("disabled");
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
					var val = $('input[name="cpda"]:checked').val();
					if(val == null) {

					} else {
						cpda[Number($("#num").val())][1] = val;
						cpda[Number($("#num").val())][2] = 1;
						$("#id" + $("#num").val()).css('background', 'red');
					}
					var tmxsname = "";
					if(cpda[nu][2] == 1 && cpda[nu][1] == 1) {
						tmxsname += '<input type="radio" name="cpda" value="1" checked="checked" /><span id="da_a"> </span><br />' +
							'<input type="radio" name="cpda" value="2" /><span id="da_b"> </span><br />';
					} else if(cpda[nu][2] == 1 && cpda[nu][1] == 2) {
						tmxsname += '<input type="radio" name="cpda" value="1"  /><span id="da_a"> </span><br />' +
							'<input type="radio" name="cpda" value="2" checked="checked" /><span id="da_b"> </span><br />';
					} else {
						tmxsname += '<input type="radio" name="cpda" value="1" onchange="xyt()"/><span id="da_a"> </span><br />' +
							'<input type="radio" name="cpda" value="2" onchange="xyt()"/><span id="da_b"> </span><br />';
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
