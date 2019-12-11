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
		<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
		<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/web/xgk/echarts.min.js" type="text/javascript" charset="utf-8"></script>
	</head>

	<body>
		<c:import url="header.jsp"></c:import>

		<main class="major_pro">
			<section class="container">
				<p class="text-right"><a class="btn btn-primary" href="javascript:history.go(-1)">返回</a></p>
				<div class="panel panel-default" style="padding-top: 0;">
					<div class="panel-heading" style="border-top-left-radius: 20px;border-top-right-radius: 20px;">
						<div class="row">
							<div class="col-md-8 col-lg-8 col-sm-8">
								<h2 class="inline_block fontwei">哲学</h2>
								<div class="padding-side inline_block">
									<span>哲学</span>><span>哲学类</span>
								</div>
							</div>
							<div class="col-md-4 col-lg-4 col-sm-4 collection margin_top">
								<div class="">
									<a href="javascript:void(0)"><span class=""><img src="${pageContext.request.contextPath}/img/xgk/ic3.png"/></span>测评选专业</a>
								</div>
								<div class="like">
									<a href="javascript:" onclick="like(this)"><img src="${pageContext.request.contextPath}/img/xgk/unlike.png"/><span class="">喜欢</span></a>
								</div>
							</div>
						</div>
						<p class="">国际代码：010101（不可用于填报）</p>
					</div>
				    <div class="tab_list">
				    	<ul class="tab_head margin_top clearfix">
				    		<li class="cur">专业概况</li>
				    		<li>开设院校</li>
				    		<li class="">就业概况</li>
				    	</ul>
				    	<div class="tab_body padding-side2">
				    		<div class="tab_b1 cur">
				    			<div class="major_info">
				    				<div class="items margin_top">
				    					<h2 class="text-primary fontwei">
				    						<span style="background-image: url(img/1.png);"></span>专业概览
				    					</h2>
				    					<div class="circle_list">
				    						<div class="">
				    							<img src="${pageContext.request.contextPath}/img/xgk/ic1.png" style=""/>
				    							<span class="text-center padding-side">
				    								<div class="">本科</div>
				    								<div class="">学历层次</div>
				    							</span>
				    						</div>
				    						<div class="">
				    							<img src="${pageContext.request.contextPath}/img/xgk/ic2.png" style=""/>
				    							<span class="text-center padding-side">
				    								<div class="">四年</div>
				    								<div class="">修业年限</div>
				    							</span>
				    						</div>
				    						<div class="">
				    							<img src="${pageContext.request.contextPath}/img/xgk/ic4.png" style=""/>
				    							<span class="text-center padding-side">
				    								<div class="">哲学学士</div>
				    								<div class="">授予学位</div>
				    							</span>
				    						</div>
				    						<div class="">
				    							<img src="${pageContext.request.contextPath}/img/xgk/ic5.png" style=""/>
				    							<span class="text-center padding-side">
				    								<div class="">40：60</div>
				    								<div class="">男女比例</div>
				    							</span>
				    						</div>
				    					</div>
				    				</div>
				    				<div class="items margin_top">
				    					<h2 class="text-primary fontwei">
				    						<span style="background-image: url(../../../img/xgk/2.png);"></span>专业介绍
				    					</h2>
				    					<ul class="padding-side2" style="list-style: disc;">
				    						<li>
				    							<h4 class="fontwei">专业简介</h4>
				    							<div class="">
				    								根据您所填写的成绩及所做的潜能测评来看，您学科单科的能力、潜能分析及两者的综合分析如下根据您所填写的成绩及所做的潜能测评来看，您学科单科的能力、潜能分析及两者的综合分析如下根据您所填写的成绩及所做的潜能测评来看，您学科单科的能力、潜能分析及两者的综合分析如下根据您所填写的成绩及所做的潜能测评来看，您学科单科的能力、潜能分析及两者的综合分析如下
				    							</div>
				    						</li>
				    						<li>
				    							<h4 class="fontwei">培养目标</h4>
				    							<div class="">
				    								根据您所填写的成绩及所做的潜能测评来看，您学科单科的能力、潜能分析及两者的综合分析如下根据您所填写的成绩及所做的潜能测评来看，您学科单科的能力、潜能分析及两者的综合分析如下根据您所填写的成绩及所做的潜能测评来看，您学科单科的能力、潜能分析及两者的综合分析如下根据您所填写的成绩及所做的潜能测评来看，您学科单科的能力、潜能分析及两者的综合分析如下
				    							</div>
				    						</li>
				    						<li>
				    							<h4 class="fontwei">培养要求</h4>
				    							<div class="">
				    								根据您所填写的成绩及所做的潜能测评来看，您学科单科的能力、潜能分析及两者的综合分析如下根据您所填写的成绩及所做的潜能测评来看，您学科单科的能力、潜能分析及两者的综合分析如下根据您所填写的成绩及所做的潜能测评来看，您学科单科的能力、潜能分析及两者的综合分析如下根据您所填写的成绩及所做的潜能测评来看，您学科单科的能力、潜能分析及两者的综合分析如下
				    							</div>
				    						</li>
				    						<li>
				    							<h4 class="fontwei">学科要求</h4>
				    							<div class="">
				    								根据您所填写的成绩及所做的潜能测评来看，您学科单科的能力、潜能分析及两者的综合分析如下根据您所填写的成绩及所做的潜能测评来看，您学科单科的能力、潜能分析及两者的综合分析如下根据您所填写的成绩及所做的潜能测评来看，您学科单科的能力、潜能分析及两者的综合分析如下根据您所填写的成绩及所做的潜能测评来看，您学科单科的能力、潜能分析及两者的综合分析如下
				    							</div>
				    						</li>
				    						<li>
				    							<h4 class="fontwei">知识能力</h4>
				    							<div class="">
				    								根据您所填写的成绩及所做的潜能测评来看，您学科单科的能力、潜能分析及两者的综合分析如下根据您所填写的成绩及所做的潜能测评来看，您学科单科的能力、潜能分析及两者的综合分析如下根据您所填写的成绩及所做的潜能测评来看，您学科单科的能力、潜能分析及两者的综合分析如下根据您所填写的成绩及所做的潜能测评来看，您学科单科的能力、潜能分析及两者的综合分析如下
				    							</div>
				    						</li>
				    					</ul>
				    				</div>
				    				<div class="items margin_top">
				    					<h2 class="text-primary fontwei">
				    						<span style="background-image: url(img/3.png);"></span>主要课程
				    					</h2>
				    					<div class="padding-side">哲学概论、美学、心理学、逻辑学 </div>
				    				</div>
				    				<div class="items margin_top">
				    					<h2 class="text-primary fontwei">
				    						<span style="background-image: url(img/4.png);"></span>考研方向
				    					</h2>
				    					<div class="padding-side">哲学概论、美学、心理学、逻辑学 </div>
				    				</div>
				    			</div>
				    		</div>
				    		<div class="tab_b2">
				    			<div class="major_info">
				    				<div class="items major_panhead margin_top">
				    					<div class="panel panel-default" style="padding: 1em 2em;">
				    						<h2 class="text-primary fontwei">
					    						<span style="background-image: url(img/1.png);"></span>开设此专业的学校(推荐)
					    					</h2>
					    					<div class="">
					    						<div class="margin_top">
					    							考生生源地：
					    							<select name="">
					    								<option value="">2019</option>
					    								<option value="">2018</option>
					    							</select>
					    							<select name="">
					    								<option value="">G贵州</option>
					    							</select>
					    							<select name="">
					    								<option value="">6选3</option>
					    							</select>
					    						</div>
					    						<div class="sch_province flex_jcstart margin_top1">
					    							<span id="">
					    								院校省份：
					    							</span>
					    							<ul>
				    									<li class="cur"><a href="">全部</a></li>
				    									<li><a href="">北京</a></li>
				    									<li><a href="">天津</a></li>
				    									<li><a href="">上海</a></li>
				    								</ul>
					    						</div>
					    					</div>
				    					</div>
				    					<p class="text-center margin_top"><a class="btn btn-primary" href="">开始推荐</a></p>
				    				</div>
				    				
				    				<div class="panel panel-default">
										<div class="panel_head">
											<h4 class="fontwei">共找到xx条结果</h4>
										</div>
									    <ul class="list-group search_result">
									        <li class="list-group-item row">
									        	<div class="flex_jcstart">
									        		<div class="inline_block">
										        		<a href="xgk_sch_info.jsp"><img alt="学校logo" src="${pageContext.request.contextPath}/img/xgk/sch_logo.png"/></a>
										        	</div>
										        	<div class="sch_info inline_block">
										        		<div class="padding-side">
										        			<div class="">
										        				<a class="inline_block" href="">
										        					<h4>上海外国语大学</h4>
										        				</a> 
										        				<span class=""><img src="${pageContext.request.contextPath}/img/xgk/label.png"/></span> 
										        				<a class="inline_block" href="">
										        					<span class="text-muted"><img src="${pageContext.request.contextPath}/img/xgk/position.png"/>上海</span></a>
										        			</div>
										        			<p class="">录取平均分排行（本科一批）<span class="text-danger fontwei">34</span></p>
										        			<div class="">
										        				<span class="">隶属：教育部</span>
										        				<span class="">院校类型：语言类</span>
										        				<span class="">硕士点数：43个</span>
										        				<span class="">博士点数：17个</span>
										        			</div>
										        		</div>
										        	</div>
									        	</div>
									        	<div class="text-center like">
									        		<a class="" onclick="like(this)" href="javascript:">
									        			<img src="${pageContext.request.contextPath}/img/xgk/unlike.png"/>
									        			<span class="">喜欢</span>
									        		</a>
									        		<div class="">喜欢人数：22W</div>
									        	</div>
									        </li>
									        <li class="list-group-item row">
									        	<div class="flex_jcstart">
									        		<div class="inline_block">
										        		<a href="xgk_sch_info.jsp"><img alt="学校logo" src="${pageContext.request.contextPath}/img/xgk/sch_logo.png"/></a>
										        	</div>
										        	<div class="sch_info inline_block">
										        		<div class="padding-side">
										        			<div class="">
										        				<a class="inline_block" href=""><h4>上海外国语大学</h4></a> 
										        				<span class=""><img src="${pageContext.request.contextPath}/img/xgk/label.png"/></span> 
										        				<a class="inline_block" href=""><span class="text-muted"><img src="${pageContext.request.contextPath}/img/xgk/position.png"/>上海</span></a>
										        			</div>
										        			<p class="">录取平均分排行（本科一批）<span class="text-danger fontwei">34</span></p>
										        			<div class="">
										        				<span class="">隶属：教育部</span>
										        				<span class="">院校类型：语言类</span>
										        				<span class="">硕士点数：43个</span>
										        				<span class="">博士点数：17个</span>
										        			</div>
										        		</div>
										        	</div>
									        	</div>
									        	<div class="text-center like">
									        		<a class="" onclick="like(this)" href="javascript:">
									        			<img src="${pageContext.request.contextPath}/img/xgk/unlike.png"/><span class="">喜欢</span>
									        		</a>
									        		<div class="">喜欢人数：22W</div>
									        	</div>
									        </li>
									    </ul>
									    <script type="text/javascript">
									    	//点赞
									    	function like(obj) {
									    		var y;
									    		var o=$(obj).find('img').attr('src');
									    		switch (o){
									    			case '${pageContext.request.contextPath}/img/xgk/like.png':
									    				y='${pageContext.request.contextPath}/img/xgk/unlike.png';
									    				$(obj).find('span').text('喜欢');
									    				break;
								    				case '${pageContext.request.contextPath}/img/xgk/unlike.png':
								    					y='${pageContext.request.contextPath}/img/xgk/like.png';
									    				$(obj).find('span').text('取消喜欢');
								    					break;
									    			default:
									    				y='${pageContext.request.contextPath}/img/xgk/unlike.png';
									    				$(obj).find('span').text('喜欢');
									    				break;
									    		}
									    		$(obj).find('img').attr('src',y);
									    	}
									    </script>
									</div>
				    			</div>
				    		</div>
				    		<div class="tab_b2 ">
				    			<div class="major_info">
				    				<div class="items margin_top">
				    					<h2 class="text-primary fontwei">
				    						<span style="background-image: url(img/1.png);"></span>就业职业方向
				    					</h2>
				    					<div class="collection row" style="padding: 0 1em;">
				    						<div class="col-md-4 border_major">
				    							<ul style="padding-left: 1em;list-style: disc;height:384px;margin: 0;">
				    								<li>
				    									<div class="">
				    										<p class="fontwei occupation_tit">行政/后勤/文秘</p>
					    									<p class="">12.6%</p>
					    									<p class="text-center"><a class="next_one btn btn-default" onclick="pie_next_one()" href="javascript:void(0)">下一个</a></p>
				    									</div>
				    								</li>
				    								<li>
				    									<div class="margin_top1">
					    									<p class="fontwei">具体职业</p>
					    									<div class="">
					    										经理助理/秘书，后勤人员，公务员/事业单位，经理助理/秘书，后勤人员，公务员/事业单位，经理助理/秘书，后勤人员，公务员/事业单位，经理助理/秘书，后勤人员，公务员/事业单位，
				    										</div>
				    									</div>
				    								</li>
				    							</ul>
				    						</div>
				    						<div class="col-md-8 col-lg-8 col-sm-8 border_major">
				    							<div id="major" style="width: 800px;height:384px; margin: 0 auto;"></div>
												<script type="text/javascript">
													var datas=[
															{value:335, name:'行政/后勤/文秘'},
												            {value:310, name:'销售业务'},
												            {value:234, name:'人力资源'},
												            {value:135, name:'高级管理'},
												            {value:899, name:'编辑记者'},
												            {value:565, name:'其它'},];
									               		$('.occupation_tit').text(datas[0].name);
												            
													var option = {
														title : {
//														    text: '某站点用户访问来源',
//														    subtext: '纯属虚构',
														    x:'center'
														},
														selectedMode:'single',
														tooltip : {
														    trigger: 'item',
														    formatter: "{a} <br/>{b} : {c} ({d}%)"
														},
														series : [
														    {
														        name: '访问来源',
														        type: 'pie',
														        radius : '55%',
														        center: ['50%', '50%'],
														        data:datas,
														        itemStyle: {
														            emphasis: {
														                shadowBlur: 10,
														                shadowOffsetX: 0,
														                shadowColor: 'rgba(0, 0, 0, 0.5)'
														            }
														        }
														    }
														]
													};
													var myChart = echarts.init(document.getElementById('major'));
													myChart.setOption(option);
													window.addEventListener("resize",function(){
											            myChart.resize();
											        });
											        
													var index = 0;
													myChart.dispatchAction({ type: 'pieSelect', seriesIndex: 0, dataIndex:index, })
													myChart.on('click',function (params) {
														if (params.dataIndex != index) {
//															console.log(params.name)
															for (var i=0;i<datas.length;i++) {
																var element = datas[i];
																if (i != index) {
									                                myChart.dispatchAction({ type: 'pieSelect',dataIndex:params.dataIndex });
									                            }
															}
														} else{
															//取消高亮
															myChart.dispatchAction({ type: 'pieUnSelect', seriesIndex: 0, dataIndex:index, })
														}
									                    
//									                	$('.next_one').delegate({title:params.name},'click',pie_next_one)//像函数中传递数据
									                    
									                });

									                function pie_next_one() {
									                	index++;
									               		if (index>datas.length-1) {
									               			index=0;
									               		}
									               		$('.occupation_tit').text(datas[index].name);
									                    myChart.dispatchAction({ type: 'pieSelect',dataIndex:index });
									                }
												</script>
				    						</div>
				    					</div>
				    				</div>
				    				<div class="row job">
				    					<div class="items margin_top col-md-6 col-lg-6 col-sm-6">
					    					<h2 class="text-primary fontwei">
					    						<span style="background-image: url(img/2.png);"></span>就业行业分布
					    					</h2>
					    					<ul class="border_major">
					    						<li>
					    							<div class="" style="width: 88%;">
					    								<p class="">教育/培训/院校</p>
					    								<div class="per_all">
					    									<div class="per_inner"></div>
					    								</div>
					    							</div>
					    							<div class="text-center" style="width: 12%;">26%</div>
					    						</li>
					    						<li>
					    							<div class="" style="width: 88%;">
					    								<p class="">教育/培训/院校</p>
					    								<div class="per_all">
					    									<div class="per_inner"></div>
					    								</div>
					    							</div>
					    							<div class="text-center" style="width: 12%;">26%</div>
					    						</li>
					    					</ul>
					    				</div>
					    				<div class="items margin_top col-md-6 col-lg-6 col-sm-6">
					    					<h2 class="text-primary fontwei">
					    						<span style="background-image: url(img/3.png);"></span>就业地区分布
					    					</h2>
					    					<ul class="border_major">
					    						<li>
					    							<div class="" style="width: 88%;">
					    								<p class="">教育/培训/院校</p>
					    								<div class="per_all">
					    									<div class="per_inner"></div>
					    								</div>
					    							</div>
					    							<div class="text-center" style="width: 12%;">26%</div>
					    						</li>
					    						<li>
					    							<div class="" style="width: 88%;">
					    								<p class="">教育/培训/院校</p>
					    								<div class="per_all">
					    									<div class="per_inner"></div>
					    								</div>
					    							</div>
					    							<div class="text-center" style="width: 12%;">26%</div>
					    						</li>
					    					</ul>
					    				</div>
				    				</div>
				    			</div>
				    		</div>
				    	</div>
				    </div>
				    <script type="text/javascript">
				    	//选项卡
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
				    	$(function () { $("[data-toggle='tooltip']").tooltip(); });
				    </script>
				    
				</div>
				
			
		</main>
		
		<!-- 页面底部-->
		<c:import url="../public/side_right.jsp"></c:import>	
		<!-- 页面底部-->
		<c:import url="footer.jsp"></c:import>	

	</body>

</html>