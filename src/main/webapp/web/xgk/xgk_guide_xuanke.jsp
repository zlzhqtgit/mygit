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
<script src="${pageContext.request.contextPath}/js/web/xgk/echarts.min.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/layer/2.4/layer.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/H-ui.admin.js"></script> 
<style type="text/css">
	.sele_model{
		border: 1px solid #999;
		padding: .4em 1em;
		margin-left: 1em;
	}
	table.score_in{border: 1px solid #fff;}
	table.score_in td{border: 1px solid #72aef6;}
	table.score_in th{position: relative;text-align: center;}
	table.score_in > thead{background-color: #72aef6;color: #fff;}
	table.score_in > thead > tr > th[class=first]{ padding: 0;}
	table.score_in >tbody >tr>td:first-child{background-color: #72aef6;color: #fff;border: 1px solid #fff;}
	table.score_in th>div{font-size: 14px;position: absolute;}
	.x_axis{top: 2em;right: 1em;}
	.y_axis{bottom: 1em;left: 4em;}
	table.score_in input{
		width: 100%;
		border: 0;
		text-align: center;
		color: #999;
	}
	table.score_in td{text-align: center;}
	.score_ts{margin-top: 15px;text-align: center;}
	.score_ts p{display: inline-flex;font-size: 12px;}
	.score_ts p label{background: #19a1e4;width: 80px;height: 20px; margin-top: -3px;margin-right: 15px;}
	.score_ts_p{font-size: 14px;margin-left: 35px;}
</style>
</head>

<body>
<!-- 页面顶部-->
<c:import url="header.jsp"></c:import>			

		
		<main class="container">
			<section class="row">
				<p class="text-right">
					<a href="javascript:history.go(-1)" class="btn btn-primary">返回</a>
				</p>
				<h1 class="text-primary fontwei">学科探索</h1>
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="padding-side2">
							<div class="">
								<h3 class="margin_top1">学科推荐 <span class="text-muted sele_model">3+2+1模式</span></h3>
								<p class="padding-side2 margin_bot margin_top1">通过学科测评，我们可以得到一个适合您学科潜能的一项报告，报告将从几个方面来呈现学科特点，请认真测评并如实填写相关测评数据。</p>
							</div>
							<div class="margin_top">
								<h3 class="">成绩分析</h3>
								<p class="padding-side2 margin_bot margin_top1">请根据下表所需的内容，填写相关数据信息，请如实填写表格内容，以保证结果的准确性。</p>
								<div id="myAlert2" class="alert alert-warning" style="display: none;">
								    <a href="#" class="close" data-dismiss="alert">&times;</a>
								    <strong>警告！</strong>请将一组测试数据填写完整。
								</div>
								<script>
									$(function(){
									    $(".close").click(function(){
									        $("#myAlert2").toggleClass('hide');
									    });
									});
								</script>
								
								<table class="score_in table-hover" border="" cellspacing="" cellpadding="">
									<thead>
										<tr>
											<th class="first" style="padding: 0;" rowspan="2">
												<canvas id="myCanvas" style="width: 100%;height: 100%;">您的浏览器不支持 HTML5 canvas 标签。</canvas>
												<script type="text/javascript">
													//绘制表格斜线头
													var c=document.getElementById("myCanvas");
													var ctx=c.getContext("2d");
													ctx.strokeStyle="#fff";
													ctx.moveTo(0,0);
													var th_height=$("[class=first]").height();
													console.log(th_height);
													var w=$("#myCanvas").width(),
														h=$("#myCanvas").height();
													ctx.lineTo(w,h);
													ctx.stroke();
												</script>
												<div class="x_axis text-center">科类</div>
												<div class="y_axis text-center">次数</div>
											</th>
											<th colspan="2">物理</th>
											<th colspan="2">生物</th>
											<th colspan="2">化学</th>
											<th colspan="2">地理</th>
											<th colspan="2">历史</th>
											<th colspan="2">政治</th>											
										</tr>
										<tr>
											<th>成绩</th><th>满分</th><th>成绩</th><th>满分</th><th>成绩</th><th>满分</th><th>成绩</th><th>满分</th><th>成绩</th><th>满分</th><th>成绩</th><th>满分</th>
										</tr>
									</thead>
									<tbody>
										<tr class="firsr_tr"><td><div>最近一次</div></td>
											<td><input type="" name="wuli" id="" value="" required="required" maxlength="3" oninput="this.value=this.value.replace(/[^0-9]/g,'');" onkeyup="fxshuj(this)"/></td> 
											<td>
												<select id="wuli" name="wuli" onchange="fxshuj(this)">
													<option value="150">150</option>
													<option value="120">120</option>
													<option value="100">100</option>
												</select>
											</td>
											<td><input type="" name="sengw" id="" value="" onkeyup="fxshuj(this)" /></td>
											<td>
												<select id="sengw" name="sengw" onchange="fxshuj(this)">
													<option value="150">150</option>
													<option value="120">120</option>
													<option value="100">100</option>
												</select>
											</td>
											<td><input type="" name="huax" id="" value=""  onkeyup="fxshuj(this)"/></td>
											<td>
												<select id="huax" name="huax" onchange="fxshuj(this)">
													<option value="150">150</option>
													<option value="120">120</option>
													<option value="100">100</option>
												</select>
											</td>
											<td><input type="" name="dil" id="" value=""  onkeyup="fxshuj(this)"/></td>
											<td>
												<select id="dil" name="dil" onchange="fxshuj(this)">
													<option value="150">150</option>
													<option value="120">120</option>
													<option value="100">100</option>
												</select>
											</td>
											<td><input type="" name="lis" id="" value=""  onkeyup="fxshuj(this)"/></td>
											<td>
												<select id="lis" name="lis" onchange="fxshuj(this)">
													<option value="150">150</option>
													<option value="120">120</option>
													<option value="100">100</option>
												</select>
											</td>
											<td><input type="" name="zhengz" id="" value=""  onkeyup="fxshuj(this)"/></td>
											<td>
												<select id="zhengz" name="zhengz" onchange="fxshuj(this)">
													<option value="150">150</option>
													<option value="120">120</option>
													<option value="100">100</option>
												</select>
											</td>
										</tr>
										<tr><td>期中考试</td>
											<td><input type="" name="wuli" id="" value=""  onkeyup="fxshuj(this)"/></td> 
											<td>
												<select id="wuli" name="wuli" onchange="fxshuj(this)">
													<option value="150">150</option>
													<option value="120">120</option>
													<option value="100">100</option>
												</select>
											</td>
											<td><input type="" name="sengw" id="" value="" onkeyup="fxshuj(this)" /></td>
											<td>
												<select id="sengw" name="sengw" onchange="fxshuj(this)">
													<option value="150">150</option>
													<option value="120">120</option>
													<option value="100">100</option>
												</select>
											</td>
											<td><input type="" name="huax" id="" value=""  onkeyup="fxshuj(this)"/></td>
											<td>
												<select id="huax" name="huax" onchange="fxshuj(this)">
													<option value="150">150</option>
													<option value="120">120</option>
													<option value="100">100</option>
												</select>
											</td>
											<td><input type="" name="dil" id="" value=""  onkeyup="fxshuj(this)"/></td>
											<td>
												<select id="dil" name="dil" onchange="fxshuj(this)">
													<option value="150">150</option>
													<option value="120">120</option>
													<option value="100">100</option>
												</select>
											</td>
											<td><input type="" name="lis" id="" value=""  onkeyup="fxshuj(this)"/></td>
											<td>
												<select id="lis" name="lis" onchange="fxshuj(this)">
													<option value="150">150</option>
													<option value="120">120</option>
													<option value="100">100</option>
												</select>
											</td>
											<td><input type="" name="zhengz" id="" value=""  onkeyup="fxshuj(this)"/></td>
											<td>
												<select id="zhengz" name="zhengz" onchange="fxshuj(this)">
													<option value="150">150</option>
													<option value="120">120</option>
													<option value="100">100</option>
												</select>
											</td>
										</tr>
										<tr><td>期末考试</td>
											<td><input type="" name="wuli" id="" value=""  onkeyup="fxshuj(this)"/></td> 
											<td>
												<select id="wuli" name="wuli" onchange="fxshuj(this)">
													<option value="150">150</option>
													<option value="120">120</option>
													<option value="100">100</option>
												</select>
											</td>
											<td><input type="" name="sengw" id="" value="" onkeyup="fxshuj(this)" /></td>
											<td>
												<select id="sengw" name="sengw" onchange="fxshuj(this)">
													<option value="150">150</option>
													<option value="120">120</option>
													<option value="100">100</option>
												</select>
											</td>
											<td><input type="" name="huax" id="" value=""  onkeyup="fxshuj(this)"/></td>
											<td>
												<select id="huax" name="huax" onchange="fxshuj(this)">
													<option value="150">150</option>
													<option value="120">120</option>
													<option value="100">100</option>
												</select>
											</td>
											<td><input type="" name="dil" id="" value=""  onkeyup="fxshuj(this)"/></td>
											<td>
												<select id="dil" name="dil" onchange="fxshuj(this)">
													<option value="150">150</option>
													<option value="120">120</option>
													<option value="100">100</option>
												</select>
											</td>
											<td><input type="" name="lis" id="" value=""  onkeyup="fxshuj(this)"/></td>
											<td>
												<select id="lis" name="lis" onchange="fxshuj(this)">
													<option value="150">150</option>
													<option value="120">120</option>
													<option value="100">100</option>
												</select>
											</td>
											<td><input type="" name="zhengz" id="" value=""  onkeyup="fxshuj(this)"/></td>
											<td>
												<select id="zhengz" name="zhengz" onchange="fxshuj(this)">
													<option value="150">150</option>
													<option value="120">120</option>
													<option value="100">100</option>
												</select>
											</td>
										</tr>
										<tr><td style="    border-right: 1px solid #72aef6;"></td>
											<td colspan="12" style="    background: #72aef6;"></td>																					
										</tr>
										<tr><td>平均得分率</td>
											<td id="wulidfl"  colspan="2"></td>
											<td id="sengwdfl" colspan="2"></td>
											<td id="huaxdfl" colspan="2"></td>
											<td id="dildfl" colspan="2"></td>
											<td id="lisdfl" colspan="2"></td>
											<td id="zhengzdfl" colspan="2"></td>											
										</tr>
										<tr><td>良好(平均)</td>
											<td id="wulilh"  colspan="2"></td>
											<td id="sengwlh" colspan="2"></td>
											<td id="huaxlh" colspan="2"></td>
											<td id="dillh" colspan="2"></td>
											<td id="lislh" colspan="2"></td>
											<td id="zhengzlh" colspan="2"></td>
										</tr>
										<tr><td>优秀(平均)</td>
											<td id="wuliyx" colspan="2"></td>
											<td id="sengwyx" colspan="2"></td>
											<td id="huaxyx" colspan="2"></td>
											<td id="dilyx" colspan="2"></td>
											<td id="lisyx" colspan="2"></td>
											<td id="zhengzyx" colspan="2"></td>
										</tr>
										<tr><td>低分(平均)</td>
											<td id="wulidf" colspan="2"></td>
											<td id="sengwdf" colspan="2"></td>
											<td id="huaxdf" colspan="2"></td>
											<td id="dildf" colspan="2"></td>
											<td id="lisdf" colspan="2"></td>
											<td id="zhengzdf" colspan="2"></td>
										</tr>
									</tbody>
								</table>
								<div class="score_ts">
									<p>良好(平均):<label ></label></p>
									<p>优秀(平均):<label style="background: #e8bb0d;"></label></p>
									<p>低分(平均):<label style="background: #ce0d0d;"></label></p>
								</div>
								<div class="score_tsa">
									<p>温馨提示：</p>
									<p class="score_ts_p">平均得分率：是根据你输入的成绩/你本次的满分，再根据的输入的成绩次数取平均值，如果只输入了一次就按一次计算。</p>
									<p class="score_ts_p">良好(平均)：是指根据的满分取平均分，再根据你的成绩的平均分所在范围值。处于及格以上、80%以下属于良好。如果只输入了一次就按一次计算。</p>
									<p class="score_ts_p">优秀(平均)：是指根据的满分取平均分，再根据你的成绩的平均分所在范围值。处于80%以上属于高分。如果只输入了一次就按一次计算。</p>
									<p class="score_ts_p">低分(平均)：是指根据的满分取平均分，再根据你的成绩的平均分所在范围值。处于及格一下属于低分。如果只输入了一次就按一次计算。</p>
								</div>
							</div>
							<p class="text-right  margin_bot"><a class="btn btn-primary"  onclick="tip_input()" href="javascript:void(0)">下一步</a></p>
						</div>
					</div>
				</div>

			</section>
			<script type="text/javascript">
			function tip_input() {			
				var wl = document.querySelectorAll("input[name='wuli']");
				var sw = document.querySelectorAll("input[name='sengw']");
				var hx = document.querySelectorAll("input[name='huax']");
				var dl = document.querySelectorAll("input[name='dil']");
				var ls = document.querySelectorAll("input[name='lis']");
				var zz = document.querySelectorAll("input[name='zhengz']");
				if(tip_inputtwo(wl,"物理")||tip_inputtwo(sw,"生物")||tip_inputtwo(hx,"化学")||tip_inputtwo(dl,"地理")||tip_inputtwo(ls,"历史")||tip_inputtwo(zz,"政治")){
					return;
				}else{
					
				}			
			}
			function tip_inputtwo(rh,name) {
				var fals=false;
				for(var i=0;i<rh.length;i++){
					if(rh[i].value!=null && rh[i].value!=""){											
						return;
					}else{						
						fals=true;
					}					
				}
				if(fals){
					layer.msg("请至少输入一组"+name+"数据",{icon:2,time:2500});
					$(rh[0]).parent().children(":input").focus()
				} 
				return fals;
			}
				$(function(){
					var dfl=0;
					jssum(dfl);
				});				
				function fxshuj(e){		
					avi(e.name);				
				}
				function avi(name){
					var avnum=0;
					var avi=0;
					var num=0;
					var cont=0;
					var score=0;
					//var ps=$(e).parent().prev().children(":input").val();
					var dq=document.querySelectorAll("select[name='"+name+"'");					
					var rh = document.querySelectorAll("input[name='"+name+"']");					
					for(var i=0;i<rh.length;i++){				
						if(rh[i].value==""||rh[i].value==null){
							avnum=avnum+0;
						}else{	
							cont++;
							num=num+parseInt(rh[i].value);
							avnum=avnum+parseInt(rh[i].value)/parseInt(dq[i].value)*100;
							score=score+parseInt(dq[i].value);
							avi=avnum/cont;
							//(avnum/3).toFixed(2)							
						}						
					}					
					$("#"+name+"dfl").html((Math.round(avi*100)/100).toFixed(2)+"%");
					if(cont!=0){
						score=score/cont;
						num=num/cont;
						if(num>=score*0.6 && num<score*0.8){
							document.getElementById(name+"lh").style.backgroundColor="#19a1e4";
							document.getElementById(name+"yx").style.backgroundColor="#ffffff";
							document.getElementById(name+"df").style.backgroundColor="#ffffff";
						}else if(num>=score*0.8){
							document.getElementById(name+"yx").style.backgroundColor="#e8bb0d";
							document.getElementById(name+"lh").style.backgroundColor="#ffffff";
							document.getElementById(name+"df").style.backgroundColor="#ffffff";
						}else{
							document.getElementById(name+"df").style.backgroundColor="#ce0d0d";
							document.getElementById(name+"yx").style.backgroundColor="#ffffff";
							document.getElementById(name+"lh").style.backgroundColor="#ffffff";
						}
					}else{
						score=(parseInt(dq[0].value)+parseInt(dq[1].value)+parseInt(dq[2].value))/3;
						document.getElementById(name+"df").style.backgroundColor="#ffffff";
						document.getElementById(name+"yx").style.backgroundColor="#ffffff";
						document.getElementById(name+"lh").style.backgroundColor="#ffffff";
					}
					$("#"+name+"lh").html(Math.round(score*0.6)+"~"+(Math.round(score*0.8)-1));
					$("#"+name+"yx").html(Math.round(score*0.8)+"~"+(Math.round(score)*1));
					$("#"+name+"df").html(Math.round(score*0)+"~"+(Math.round(score*0.6)-1));
					
				}
				function jssum(dfl){
					var wlzf=0;
					var swzf=0;
					var hxzf=0;
					var dlzf=0;
					var lszf=0;
					var zzzf=0;
					var kmnub=3;
					var wl=document.querySelectorAll("select[name='wuli']");
					var sw=document.querySelectorAll("select[name='sengw']");
					var hx=document.querySelectorAll("select[name='huax']");
					var dl=document.querySelectorAll("select[name='dil']");
					var ls=document.querySelectorAll("select[name='lis']");
					var zz=document.querySelectorAll("select[name='zhengz']");					
					for(var i=0;i<wl.length;i++){
						wlzf=wlzf+parseInt(wl[i].value);
					}
					$("#wulidfl").html(dfl+"%");
					$("#wulilh").html(wlzf/kmnub*0.6+"~"+(wlzf/kmnub*0.80-1));
					$("#wuliyx").html(wlzf/kmnub*0.80+"~"+wlzf/kmnub*1);
					$("#wulidf").html(wlzf/kmnub*0+"~"+(wlzf/kmnub*0.6-1));
					for(var i=0;i<sw.length;i++){
						swzf=swzf+parseInt(sw[i].value);
					}					
					$("#sengwdfl").html(dfl+"%");
					$("#sengwlh").html(swzf/kmnub*0.6+"~"+(swzf/kmnub*0.80-1));
					$("#sengwyx").html(swzf/kmnub*0.80+"~"+swzf/kmnub*1);
					$("#sengwdf").html(swzf/kmnub*0+"~"+(swzf/kmnub*0.6-1));
					for(var i=0;i<hx.length;i++){
						hxzf=hxzf+parseInt(hx[i].value);
					}	
					$("#huaxdfl").html(dfl+"%");
					$("#huaxlh").html(hxzf/kmnub*0.6+"~"+(hxzf/kmnub*0.80-1));
					$("#huaxyx").html(hxzf/kmnub*0.80+"~"+hxzf/kmnub*1);
					$("#huaxdf").html(hxzf/kmnub*0+"~"+(hxzf/kmnub*0.6-1));
					for(var i=0;i<dl.length;i++){
						dlzf=dlzf+parseInt(dl[i].value);
					}
					$("#dildfl").html(dfl+"%");
					$("#dillh").html(dlzf/kmnub*0.6+"~"+(dlzf/kmnub*0.80-1));
					$("#dilyx").html(dlzf/kmnub*0.80+"~"+dlzf/kmnub*1);
					$("#dildf").html(dlzf/kmnub*0+"~"+(dlzf/kmnub*0.6-1));
					for(var i=0;i<ls.length;i++){
						lszf=lszf+parseInt(ls[i].value);
					}
					$("#lisdfl").html(dfl+"%");
					$("#lislh").html(lszf/kmnub*0.6+"~"+(lszf/kmnub*0.80-1));
					$("#lisyx").html(lszf/kmnub*0.80+"~"+lszf/kmnub*1);
					$("#lisdf").html(lszf/kmnub*0+"~"+(lszf/kmnub*0.6-1));
					for(var i=0;i<zz.length;i++){
						zzzf=zzzf+parseInt(zz[i].value);
					}
					$("#zhengzdfl").html(dfl+"%");
					$("#zhengzlh").html(zzzf/kmnub*0.6+"~"+(zzzf/kmnub*0.80-1));
					$("#zhengzyx").html(zzzf/kmnub*0.80+"~"+zzzf/kmnub*1);
					$("#zhengzdf").html(zzzf/kmnub*0+"~"+(zzzf/kmnub*0.6-1));
				}					
				
				
				/**
				 * 格子填写警告样式
				 */
				function td_style (obj) {
					$(obj).parents('td').css({"box-shadow":"none","border":"none"});
					$(obj).parent().css({"box-shadow":"0 0 4px red","border":"none"});
				}
				
				function last_style (obj) {
					$(obj).parents('tr').next().find('td').next().css({"background-color":"#fcf8e3"});
				}

			</script>
			<div class="bg-warning">
			</div>

		</main>
				
		
<!-- 页面右侧-->
<c:import url="../public/side_right.jsp"></c:import>	
<!-- 页面底部-->
<c:import url="footer.jsp"></c:import>	
</body>
<script type="text/javascript">
var id="${id}";
$( "#xgk"+id).addClass( "active" );
</script>
</html>
