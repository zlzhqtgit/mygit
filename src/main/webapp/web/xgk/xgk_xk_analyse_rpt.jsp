<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %> 
<!DOCTYPE html>
<html>
<head>
	<meta charset=utf-8>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="" />
	<title>好前途后台登录页</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/index.css" />
	<link rel="icon" href="${pageContext.request.contextPath}/web/xgk/favicon.ico" type="image/x-icon">
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/web/xgk/echarts.min.js" type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/web/xgk/xgk_analyse.js"></script>
	<script src="${pageContext.request.contextPath}/js/html2canvas.js" type="text/javascript" charset="utf-8"></script>
	<script src="${pageContext.request.contextPath}/js/jspdf.debug.js" type="text/javascript" charset="utf-8"></script>
	<script src="${pageContext.request.contextPath}/js/layer/2.4/layer.js"></script>
	<script src="${pageContext.request.contextPath}/js/common.js"></script>
</head>
<body>
<div class="" id="pay_info" style="display: none;">
					<div class="pay">
						<div class="margin_bot">
							<span class="">已选商品名称：</span><span class="text-danger padding-side fontwei" id="show_name">立学臻选套餐</span><span class="padding-side"><span id="show_money">599</span>元</span>
						</div>
						<table class="table table-hover table-bordered" cellspacing="" cellpadding="">
							<thead>
								<tr><th></th><th>下载次数</th><th>使用期限</th></tr>
							</thead>
							<tboody>
								<tr><td>套餐权益</td><td>1次</td><td>立即生效</td></tr>
							</tboody>
						</table>
						<div class="tab_list">
							<ul class="tab_head clearfix">
								<!--<div class="pull-left" style="height: 3.1em;line-height: 3em;">支付方式：</div>-->
								<li class="cur">微信支付</li>
								<li>支付宝支付</li>
							</ul>
							<div class="tab_body">
								<div class="cur">
									<div class="">
										<img id="qr_code"  src="${pageContext.request.contextPath}/img/xgk/1568099441.jpg" class="img-responsive"/>
										<div class="text-center"> 微信扫码 </div>
									</div>
								</div>
								<div class="">
									<div class="">
										<img src="${pageContext.request.contextPath}/img/xgk/1568099441.jpg" class="img-responsive"/>
										<div class="text-center"> 支付宝扫码 </div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>	
<!-- 页面顶部-->
<c:import url="header.jsp"></c:import>	

<main class="container">
<script type="text/javascript">
$(function(){
	$(".downloadReport").click(function(){
		var hqt_user = '${hqt_user}';
		if(hqt_user == 1){
			$.ajax({
				url: "${pageContext.request.contextPath}/user/hqt_download_count.do",
				data:"",
				type:"POST",
				dataType:"json",
				success:function(obj){
					$("#show_name").html(obj.data.DOWNLOADRECHAARGE.syscommet);
					$("#show_money").html(obj.data.DOWNLOADRECHAARGE.sysnub);
					if(obj.state == 1){//正常下载									
						download();				
					}else{
						var status = obj.data.status;
						if(status == 1){
							download();
						} else {
							console.log(obj);
							layer.confirm(obj.message, {
								  btn: ['单独购买', 'VIP续费', '取消'] //可以无限个按钮
								  ,btn3: function(index, layero){
								    layer.close(index);
								  }
								}, function(index, layero){
									 var nowUrl=window.location.href;
									 var outTradeNo = "";
									 for(var i=0;i<4;i++){ //4位随机数，用以加在时间戳后面。
										 outTradeNo += Math.floor(Math.random()*10);
									 }
									 outTradeNo = new Date().getTime() + outTradeNo;  //时间戳，用来生成订单号。
									 if('${uid}' != ""){
										 modelshow(false,$('#pay_info'),1);
										 $("#qr_code").attr("src", "${pageContext.request.contextPath}/api/weixinQRCode.do?body=DOWNLOADRECHAARGE&outTradeNo=" + outTradeNo);	 
										 settime(outTradeNo,nowUrl);
									 }else{
										 layer.msg('您未登录立学道平台,无法购买vip特权！', {icon: 5,time:2000});
									 }								   
								   layer.close(index);
								}, function(index){
									location.href = '${pageContext.request.contextPath}/web/hqt_vip_index.do';
								});
						}
					}
				}	
			}); 
		}else{
			download();
		}
	})
					var countdown = 60;//查询60次
					function settime(order,url) {
					    if (countdown == 0) {
					    	layer.msg('超过二分钟未支付，二维码已超时！', {icon: 5,time:1000});
					    	setTimeout(function(){  //使用  setTimeout（）方法设定定时2000毫秒
					    		window.location.reload();//页面刷新
					    		//location.href = "${pageContext.request.contextPath}/api/wx_pay_fail.do?nowUrl=" + url;
					    		countdown = 60;
					    	},2000);
						} else {					
							$.ajax({
								type:"POST",
								url:"${pageContext.request.contextPath}/api/query_order_status.do",
								data:"outTradeNo=" + order,
								datatype:'json',
								success:function(obj){
									if(obj.state == 1){
										layer.msg('支付成功', {icon: 5,time:1000});
								    	setTimeout(function(){  //使用  setTimeout（）方法设定定时2000毫秒
								    		window.location.reload();//页面刷新
								    		//location.href = "${pageContext.request.contextPath}/api/wx_pay_sucees.do?nowUrl=" + url;
								    	},2000);
									}
									countdown -- ;
								}
							});
						} 
						setTimeout(function() { 
						    settime(order,url) }
						    ,3000) 
					}
	function download(){
	   var element = $("#report_cont");    // 这个dom元素是要导出pdf的div容器
	   var w = element.width();    // 获得该容器的宽
	   var h = element.height();    // 获得该容器的高
	   console.log("111111")
	   var offsetTop = element.offset().top;    // 获得该容器到文档顶部的距离
	   var offsetLeft = element.offset().left;    // 获得该容器到文档最左的距离
	   var canvas = document.createElement("canvas");
	   var abs = 0;
	   var win_i = $(window).width();    // 获得当前可视窗口的宽度（不包含滚动条）
	   var win_o = window.innerWidth;    // 获得当前窗口的宽度（包含滚动条）
	   if(win_o>win_i){
	     abs = (win_o - win_i)/2;     
	     // 获得滚动条长度的一半
	   }
	   canvas.width = w * 2;    // 将画布宽&&高放大两倍
	   canvas.height = h * 2;
	   var context = canvas.getContext("2d");
	   context.scale(2, 2);
	   context.translate(-offsetLeft-abs,-offsetTop);
	   // 这里默认横向没有滚动条的情况，因为offset.left(),有无滚动条的时候存在差值，因此        
	   // translate的时候，要把这个差值去掉
	   element.css("background-color","#f9f9f9");
	   html2canvas(element).then(function(canvas) {
	    var contentWidth = canvas.width;
	    var contentHeight = canvas.height;
	    //一页pdf显示html页面生成的canvas高度;
	    var pageHeight = contentWidth / 595.28 * 841.89;
	    //未生成pdf的html页面高度
	    var leftHeight = contentHeight;
	    //页面偏移
	    var position = 0;
	    //a4纸的尺寸[595.28,841.89]，html页面生成的canvas在pdf中图片的宽高
	    var imgWidth = 595.28;
	    var imgHeight = 592.28/contentWidth * contentHeight;
	    var pageData = canvas.toDataURL('image/jpeg', 1.0);
	    var pdf = new jsPDF('', 'pt', 'a4');
	
	    //有两个高度需要区分，一个是html页面的实际高度，和生成pdf的页面高度(841.89)
	    //当内容未超过pdf一页显示的范围，无需分页
	    if (leftHeight < pageHeight) {
	    pdf.addImage(pageData, 'JPEG', 0, 0, imgWidth, imgHeight);
	    } else {    // 分页
	        while(leftHeight > 0) {
	            pdf.addImage(pageData, 'JPEG', 0, position, imgWidth, imgHeight)
	            leftHeight -= pageHeight;
	            position -= 841.89;
	            //避免添加空白页
	            if(leftHeight > 0) {
	              pdf.addPage();
	            }
	        }
	    }
	    pdf.save('学科分析报告.pdf');        
	  })
	}
});
</script>
	<section class="row">
		<p class="text-right">
			<a class="btn btn-primary" href="${pageContext.request.contextPath}/sub/xgk_subject_score.do?look=CJFX" >返回</a>
			<a class="downloadReport btn btn-primary" href="javascript:;"">打印报告</a>
		</p>
		<h1 class="text-primary fontwei">学科分析报告</h1>
		<div class="panel panel-default" id="report_cont">
			<div class="padding-side2 margin_top margin_bot">
				<div class="report_box padding-side2">
					<p class="">通过学科潜能测评结果对比分析，发现6门选考科目的适合度排序为：</p>
					<p class="margin_top margin_bot">
						<a class="btn btn-primary" href="javascript:;" id="one">物理</a>
						<a class="btn btn-primary" href="javascript:;" id="two">化学</a>
						<a class="btn btn-primary" href="javascript:;" id="three">生物</a>
						<a class="btn btn-primary" href="javascript:;" id="four">政治</a>
						<a class="btn btn-primary" href="javascript:;" id="five">历史</a>
						<a class="btn btn-primary" href="javascript:;" id="six">地理</a>
					</p>
					<p class="">前三门科目是你的优势学科，你学习起来更感兴趣,也更容易学好，并且你对于学号这些科目更有信心；而后三门科目是你的非优势学科，在确定高考选考科目时，应当选择自己擅长的，回避自己的若是的科目。当然，你业可以根据上述各学科的发展建议提升自己想要选考科目的兴趣、能力、自信程度，并结合“学科推荐”系统中的其它维度统合分析，帮您做出最为科学、合理的决策。</p>
					<div class="analyse_report margin_top">
						<div id="xk_analyse_report1" class="" style="width: 600px;height:400px; margin: 3em auto;"></div>
							<script type="text/javascript">
									option1 = {
											title:{
												show:true,
												text:'图一 学科潜能总体分析',
												bottom:'-10',
												left:'center'
											},
						                    tooltip: {
						                        trigger: 'axis'
						                    },	
						                    legend: {
						                        data:['实际得分','平均得分'],
						                        left:'center'
						                    },
						                    xAxis: [
						                        {
						                            type: 'category',
						                            data: ['物理','化学','生物']
						                            // data: ['物理','化学','生物','政治','历史','地理']
						                        }
						                    ],
						                    yAxis: [
						                        {
						                            type: 'value',
//						                            name: '水量/ml',
						                            min: 0,
						                            max: 80,
						                            interval: 50,
						                            axisLabel: {
						                                formatter: '{value} '
						                            }
						                        }
						                    ],
						                    series: [
						                         
						                        {
						                            name:'实际得分',
						                            type:'bar',
						                            barWidth:'60',
						                            
						                            /*设置柱状图颜色*/
						                            itemStyle: {
						                                normal: {
						                                    color: function(params) {
						                                        var colorList = [
						                                        	'#fe4f4f','#fead33','#feca2b','#fef728','#c5ee4a',
						                                            '#87ee4a','#46eda9','#47e4ed','#4bbbee','#7646d8',
						                                            '#924ae2','#C6E579','#F4E001','#F0805A','#26C0C0',
						                                        ];
						                                        return colorList[params.dataIndex]
						                                    },
						                                    /*信息显示方式*/
						                                    label: {
						                                        show: true,
						                                        position: 'top',
						                                        formatter: '{b}\n{c}'
						                                    }
						                                }
						                            },
						                            data:[65, 55, 50]
						                        },
						                        {
						                            name:'平均得分',
						                            type:'line',
						                            itemStyle : {  /*设置折线颜色*/
						                                normal : {
						                                   /* color:'#c4cddc'*/
						                                }
						                            },
						                            data:[20, 30, 40]
						                            // data:[20, 30, 40, 50, 60, 70]
						                        }
						                    ]
						            };
									var list = ${list};
									for (var i=0; i<subject_name_items.length; i++){
										if (list[0].key == subject_name_items[i].title){
											option1.xAxis[0].data[0] = subject_name_items[i].name;
											option1.series[0].data[0] = list[0].value;
											option1.series[1].data[0] = parseInt(list[0].value)/3;
											$("#one").html(subject_name_items[i].name);
										}
										if (list[1].key == subject_name_items[i].title){
											option1.xAxis[0].data[1] = subject_name_items[i].name;
											option1.series[0].data[1] = list[1].value;
											option1.series[1].data[1] = parseInt(list[1].value)/3;
											$("#two").html(subject_name_items[i].name);
										}
										if (list[2].key == subject_name_items[i].title){
											option1.xAxis[0].data[2] = subject_name_items[i].name
											option1.series[0].data[2] = list[2].value;
											option1.series[1].data[2] = parseInt(list[2].value)/3;
											$("#three").html(subject_name_items[i].name);
										}										
										if (list[3].key == subject_name_items[i].title){
											//option1.xAxis[0].data[3] = subject_name_items[i].name;
											//option1.series[0].data[3] = list[3].value;
											//option1.series[1].data[3] = parseInt(list[3].value)/3;
											$("#four").html(subject_name_items[i].name);
										}
										if (list[4].key == subject_name_items[i].title){
											//option1.xAxis[0].data[4] = subject_name_items[i].name;
											//option1.series[0].data[4] = list[4].value;
											//option1.series[1].data[4] = parseInt(list[4].value)/3;
											$("#five").html(subject_name_items[i].name);
										}
										if (list[5].key == subject_name_items[i].title){
											//option1.xAxis[0].data[5] = subject_name_items[i].name
											//option1.series[0].data[5] = list[5].value;
											//option1.series[1].data[5] = parseInt(list[5].value)/3;
											$("#six").html(subject_name_items[i].name);
										}
									}
									var myChart1 = echarts.init(document.getElementById('xk_analyse_report1'));
									myChart1.setOption(option1);
								</script>
						
						<div id="xk_analyse_report2" class="" style="width: 600px;height:400px; margin: 0 auto;"></div>
						<script type="text/javascript">
							option2 = {
								title:{
									show:true,
									text:'图二 学科潜能分项分析',
									bottom:'-10',
									left:'center'
								},
							    legend: {},
							    tooltip: {},
							    dataset: {
							        dimensions: ['product', '学科兴趣', '学科能力', '学科自信度'],
							        source: [
							            {product: '物理', '学科兴趣': 43.3, '学科能力': 85.8, '学科自信度': 93.7},
							            {product: '化学', '学科兴趣': 83.1, '学科能力': 73.4, '学科自信度': 55.1},
							            {product: '生物', '学科兴趣': 86.4, '学科能力': 65.2, '学科自信度': 82.5},
							            {product: '政治', '学科兴趣': 72.4, '学科能力': 53.9, '学科自信度': 39.1},
							            {product: '历史', '学科兴趣': 83.1, '学科能力': 73.4, '学科自信度': 55.1},
							            {product: '地理', '学科兴趣': 86.4, '学科能力': 65.2, '学科自信度': 82.5},
							        ]
							    },
							    xAxis: {type: 'category'},
							    yAxis: {},
							    // Declare several bar series, each will be mapped
							    // to a column of dataset.source by default.
							    series: [
							        {type: 'bar'},
							        {type: 'bar'},
							        {type: 'bar'}
							    ]
							};
							// 地,自信,15,地,兴趣,0,地,能力,0,政,自信,5,政,兴趣,10,政,能力,0,历,自信,0,历,兴趣,0,历,能力,0,物,自信,5,物,兴趣,5,物,能力,0,化,自信,15,化,兴趣,10,化,能力,0,生,自信,10,生,兴趣,20,生,能力,0
							var evaluation = ${evaluationFraction};
							// alert(evaluation[0][0]);
							// alert(option2.dataset.source[0].product);
							for (var i=0; i<option2.dataset.source.length; i++){
								for (var j=0; j<subject_name_items.length; j++){
									if (option2.dataset.source[i].product == subject_name_items[j].name){
										for (var k=0; k<evaluation.length; k++){
											if (subject_name_items[j].title == evaluation[k][0]){
												if (evaluation[k][1] == "自信"){
													option2.dataset.source[i].学科自信度 = evaluation[k][2];
												}
												if (evaluation[k][1] == "兴趣"){
													option2.dataset.source[i].学科兴趣 = evaluation[k][2];
												}
												if (evaluation[k][1] == "能力"){
													option2.dataset.source[i].学科能力 = evaluation[k][2];
												}
											}
										}
									}
								}
							}
							var myChart2 = echarts.init(document.getElementById('xk_analyse_report2'));
							myChart2.setOption(option2);
						</script>
						<div class="">
							<h3 class="fontwei">测评分析</h3>
							<div class="">
								学科潜能测评综合考量各个学科的学习兴趣、学科能力、学科自信程度三方面因素，简言之，就是兴趣、能力、自信心。从多维度对每个学科进行综合分析，助你做出最科学的选择。
								<p>让我们了解一下什么是学科兴趣、学科能力、学科自信程度。</p>
							</div>
						</div>
						<div class="">
							<h3 class="fontwei">学科兴趣</h3>
							<div class="">
								兴趣是最好的老师，成功的秘诀在于兴趣。学习兴趣是指推动个体探求知识并带有积极情绪色彩的一种个性倾向。当学科兴趣被激发是，个体不仅会体验到喜欢学该门课，同时还会体验到惊讶、好奇、快乐等正向情感体验。
							</div>
						</div>
						<div class="">
							<h3 class="fontwei">学科能力</h3>
							<div class="">
								学科能力指学生在学习某学科时的智力活动及其有关的智力与能力的成分，也指学习某学科的学习能力、学习策略与学习方法。心理学家研究发现，学科能力对于学生在该学科上的成绩具有稳定的预测力。
							</div>
						</div>
						<div class="">
							<h3 class="fontwei">学科自信程度</h3>
							<div class="">
								学科自信程度指学习者对自己能否利用所拥有的能力或技能去完成学习任务的自信程度的评价，是个体对控制自己学习行为和学习成绩的一种主观判断。研究表明，学科自信程度与学习成绩存在显著正相关，较高的学科自我自信程度能促进学习成绩的提高。
							</div>
						</div>
						
						<table class="table-hover center-block margin_top margin_bot" border="" cellspacing="" cellpadding="">
							<thead>
								<tr style="background-color: #3b8bec;color: #fff;"><th>学科</th><th>维度</th><th>测评得分</th><th>学科维度解释</th></tr>
							</thead>
							<tbody id="analyse_report">
								<tr><td rowspan="4">物理</td></tr>
								<tr><td>能力 </td><td>Data</td><td>你的物理学科能力分数为20.0处于同类人的75%以上，说明你具备学好物理学科的能力具有对物理概念和规律进行探寻的习惯，善于分析物理概念规律的内涵和外延，掌握物理因果思维程序，运用物理模型解决实际生活中的具体问题。</td></tr>
								<tr><td>兴趣 </td><td>Data</td><td>你的物理学科兴趣分数为15.0，处于同类人群的25%--75%之间，说明你对物理学科的兴趣处于中等水平，你对物理学科的学习没有表现出极大的热情，但是也没有表现出明显的反感情绪，可以通过观察与实验的方法来激发你对物理学习的兴趣，在生活中模拟各种物理现象和规律，带着问题去主动转眼与探索，培养学科兴趣。</td></tr>
								<tr><td>自信 </td><td>Data</td><td>你的物理学科自信程度分数为17.0，处于同类人群的25%--75%之间，说明你的物理学科自信程度处于中等水平，你在学习物理学科的过程中，偶有不自信的表现，建立学科自信心，首先要正确地评价、认识自己，结合自己的实际情况定位，确立符合客观事实的目标，在达成目标的成功喜悦感中增强学科自信心。</td></tr>
								<tr><td rowspan="4">化学</td></tr>
								<tr><td>能力 </td><td>Data</td><td>你的化学学科能力分数为20.0，处于同类人群的75%以上，说明你具备学好化学的能力，会用归纳总结的记忆方法，将不同符号进行归纳记忆，。具备认真观察和动手实验的能力，掌握理解记忆化学方程式的方法，并能用化学知识解决实际生活中的问题。</td></tr>
								<tr><td>兴趣 </td><td>Data</td><td>你的化学学科兴趣分数为15.0，处于同类人群的25%--75%之间，说明你对化学学科的兴趣处于中等水平，你对化学学科的学习没有表现出极大的热情，但是也没有表实现出明显的反感情情绪。可以从注意身边一些非常熟悉的“小事”入手，是自己认识到身边处处有化学，激励自己注意周围的生活现象、自然现象，以及人类关心的各种热点问题，如环保、能演、材料、保健等，培养自己的化学兴趣。</td></tr>
								<tr><td>自信</td><td>Data</td><td>你的化学学科自信在成都分数为欸15.0，处于同类人群的25%--75%之间，说明你的化学学科自信程度处于中等水平，说明你在学习化学学科的过程中，偶有不自信的表现。如果能够客服消极心理状态，树立“我能学好化学”的信心和勇气，就会帮助你提升化学成绩。在化学学科上，哪怕是成绩上一点小进步，也是一次成功的学习体验，要牢记这种体验。</td></tr>
							</tbody>
						</table>
						<div class="open-btn">	
							<shiro:hasPermission name="qncp_more:query">
								<a class="show_more btn btn-primary" onclick="showMore()">查看更多</a>
							</shiro:hasPermission>			
							<shiro:lacksPermission name="qncp_more:query">								
									<a class="show_more btn btn-primary vipLimite"><label class="padding-side fontwei">VIP</label> 下载报告 </a>					      
							</shiro:lacksPermission>                
			           	</div>
			            <script>
							//学科分析报告
							var report = ${evaluationFraction};
							var report_title_start = "<tr><td rowspan='4'>"; //标题头 加科目名字
							var report_title_end = "</td></tr>";//标题尾
							var report_dimension = "<tr><td>";//分析维度 加分析维度[能力|兴趣|自信]
							var report_score = "</td><td>";//评分  加评分
							var report_description_start = "</td><td>";//分析内容 加分析内容
							var report_description_end = "</td></tr>";
							var analyse_report = "";//分析报告
							var content = "";//分析内容
							for (var i=0; i<report.length; i++){
								if (i%3==0){
									for (var j=0; j<subject_name_items.length; j++){
										if (report[i][0] == subject_name_items[j].title){
											analyse_report += report_title_start + subject_name_items[j].name + report_title_end;
										}
									}
								}
								for (var k=0; k<analysis_items.length; k++){
									if (report[i][0] == analysis_items[k].title && report[i][1] == analysis_items[k].type && report[i][2] == analysis_items[k].score){
										analyse_report += report_dimension + report[i][1] + report_score + report[i][2] + report_description_start + analysis_items[k].analysis + report_description_end;
									}
								}

							}
							$("#analyse_report").html(analyse_report);

					        // 点击显示更多按钮
					        function showMore() {
					            $(".analyse_report").height("auto");//取消文字容器高度限制
					            $(".open-btn").hide();//隐藏查看更多按钮
					            var datas=''
					            $.ajax({
					            	type:"post",
					            	url:"",
					            	async:true,
					            	data:datas,
					            	dataType:'json',
					            	ssuccess:function(res){
					            		
					            	}
					            });
					        }
					    </script>
					</div>
				</div>
			</div>
		</div>
		<p class="text-right">
			<strong>您已完成学科分析报告，马上去完成认知测评吧！</strong>
		</p>
		<p class="text-right">
			<a class="btn btn-primary" href="${pageContext.request.contextPath}/cp/xgk_choice.do">下一步</a>
		</p>
	</section>
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