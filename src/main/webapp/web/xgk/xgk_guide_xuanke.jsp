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
												<div class="x_axis text-center">科目 /成绩 / 排名</div>
												<div class="y_axis text-center">次数</div>
											</th>
											<th colspan="2">语文</th>
											<th colspan="2">数学</th>
											<!--<th>英语</th colspan="2">
											<th>物理</th colspan="2">
											<th>化学</th colspan="2">
											<th>生物</th colspan="2">
											<th>政治</th colspan="2">
											<th>历史</th colspan="2">
											<th>地理</th colspan="2">-->
										</tr>
										<tr>
											<th>成绩</th><th>满分</th><th>成绩</th><th>满分</th>
										</tr>
									</thead>
									<tbody>
										<tr class="firsr_tr"><td><div>第一次</div></td>
											<td><input type="" name="" id="" value="" placeholder="考试所得分数"/></td>
											<td><input type="" name="" id="" value="" placeholder="科目总分数"/></td>
											<td><input type="" name="" id="" value="" placeholder="考试所得分数"/></td>
											<td><input type="" name="" id="" value="" placeholder="科目总分数"/></td>
										</tr>
										<tr><td>第二次</td>
											<td><input type="" name="" id="" value="" placeholder="考试所得分数"/></td>
											<td><input type="" name="" id="" value="" placeholder="科目总分数"/></td>
											<td><input type="" name="" id="" value="" placeholder="考试所得分数"/></td>
											<td><input type="" name="" id="" value="" placeholder="科目总分数"/></td>
										</tr>
										<tr><td>第三次</td>
											<td><input type="" name="" id="" value="" placeholder="考试所得分数"/></td>
											<td><input type="" name="" id="" value="" placeholder="科目总分数"/></td>
											<td><input type="" name="" id="" value="" placeholder="考试所得分数"/></td>
											<td><input type="" name="" id="" value="" placeholder="科目总分数"/></td>
										</tr>
									</tbody>
								</table>
								
							</div>
							<p class="text-right margin_top margin_bot"><a class="btn btn-primary"  onclick="next_step()" href="javascript:void(0)">下一步</a></p>
						</div>
					</div>
				</div>

			</section>
			<script type="text/javascript">
				function next_step(obj){
					tip_input();
				};
				
				function tip_input() {
					var inputs=[];
					var td= $('.firsr_tr>td');
					if (inputs==[] && inputs.length<td.find('input').length){
						console.log('请至少填入一组测试数据！');
						$('.firsr_tr>td').next().css({"box-shadow":"0 0 4px red","border":"none"});
					} else{
						td.find('input').each(function() {
							if ($(this).val()=='') {
								console.log('请将一组测试数据填写完整！');
								$("#myAlert2").css("display","block");
								td_style (this);
							}else if(!/^(([0-9]+\.[0-9]*[1-9][0-9]*)|([0-9]*[1-9][0-9]*\.[0-9]+)|([0-9]*[1-9][0-9]*))$/.test($(this).val())){
								alert('分数必须是数字，请填入合法的分数！');
								td_style (this);
							} else{
								inputs.push($(this).val());
//								console.log(inputs);
								$(this).parents('td').css({"box-shadow":"none","border":"1px solid #72aef6"});
								//分数不可大于总分
								if (td.children().val()>td.children().next().val()) {
									console.log('分数不可大于总分');
								} else{
									last_style (this)
									window.location.assign("${pageContext.request.contextPath}/web/xgk/xgk_assess_xk.jsp");
								}
//								alert('填写三次考试情况，测评数据会更准确哦，您确定要现在进行测评吗？')
							}
						})
					}
					
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
