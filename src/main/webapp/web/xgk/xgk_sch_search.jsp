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
	</head>

	<body>
		<c:import url="header.jsp"></c:import>	
		<main class="sch_search">
			<section class="sch_search container">
				
				<div style="padding: 1em 100px 1em;">
				    <form class="bs-example bs-example-form" role="form">
				        <div class="input-group input-group-lg">
				            <span class="input-group-addon"><span class="glyphicon glyphicon-search text-muted"></span></span>
				            <input type="text" class="form-control" placeholder="搜索你感兴趣的学校">
				        </div>
				    </form>
				</div>

				<div class="panel panel-default">
				    <ul class="list-group slice_list">
				        <li class="list-group-item">
				        	<dl class="pull-left item_tit">
				        		<dt>院校属性</dt>
				        	</dl>
				        	<dl class="pull-left item_body">
				        		<dd class=""><a class="active" href="javascript:void(0)">全部</a></dd>
				        		<dd><a href="javascript:void(0)">985</a></dd>
				        		<dd><a href="javascript:void(0)">211</a></dd>
				        		<dd><a href="javascript:void(0)">双一流</a></dd>
				        		<dd><a href="javascript:void(0)">行业领军</a></dd>
				        		<dd><a href="javascript:void(0)">研究生院</a></dd>
				        	</dl>
				        	<div class="clearfix"></div>
				        </li>
				        <li class="list-group-item">
				        	<dl class="pull-left item_tit">
				        		<dt>院校类型</dt>
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
				        </li>
				        <li class="list-group-item">
				        	<dl class="pull-left item_tit">
				        		<dt>院校省份</dt>
				        	</dl>
				        	<dl class="pull-left item_body">
				        		<dd class=""><a class="active" href="javascript:void(0)">全部</a></dd>
				        		<dd><a href="javascript:void(0)">985</a></dd>
				        		<dd><a href="javascript:void(0)">211</a></dd>
				        		<dd><a href="javascript:void(0)">双一流</a></dd>
				        		<dd><a href="javascript:void(0)">行业领军</a></dd>
				        		<dd><a href="javascript:void(0)">研究生院</a></dd>
				        	</dl>
				        </li>
				        <li class="list-group-item">
				        	<dl class="pull-left item_tit">
				        		<dt>热门城市</dt>
				        	</dl>
				        	<dl class="pull-left item_body">
				        		<dd class=""><a class="active" href="javascript:void(0)">全部</a></dd>
				        		<dd><a href="javascript:void(0)">985</a></dd>
				        		<dd><a href="javascript:void(0)">211</a></dd>
				        		<dd><a href="javascript:void(0)">双一流</a></dd>
				        		<dd><a href="javascript:void(0)">行业领军</a></dd>
				        		<dd><a href="javascript:void(0)">研究生院</a></dd>
				        	</dl>
				        </li>
				        <li class="list-group-item">
				        	<dl class="pull-left item_tit">
				        		<dt>办学性质</dt>
				        	</dl>
				        	<dl class="pull-left item_body">
				        		<dd class=""><a class="active" href="javascript:void(0)">全部</a></dd>
				        		<dd><a href="javascript:void(0)">985</a></dd>
				        		<dd><a href="javascript:void(0)">211</a></dd>
				        		<dd><a href="javascript:void(0)">双一流</a></dd>
				        		<dd><a href="javascript:void(0)">行业领军</a></dd>
				        		<dd><a href="javascript:void(0)">研究生院</a></dd>
				        	</dl>
				        </li>
				        <li class="list-group-item">
				        	<dl class="pull-left item_tit">
				        		<dt>录取批次</dt>
				        	</dl>
				        	<dl class="pull-left item_body">
				        		<dd class=""><a class="active" href="javascript:void(0)">全部</a></dd>
				        		<dd><a href="javascript:void(0)">985</a></dd>
				        		<dd><a href="javascript:void(0)">211</a></dd>
				        		<dd><a href="javascript:void(0)">双一流</a></dd>
				        		<dd><a href="javascript:void(0)">行业领军</a></dd>
				        		<dd><a href="javascript:void(0)">研究生院</a></dd>
				        	</dl>
				        </li>
				        <li class="list-group-item">
				        	<dl class="pull-left item_tit">
				        		<dt>科研教学</dt>
				        	</dl>
				        	<dl class="pull-left item_body">
				        		<dd class=""><a class="active" href="javascript:void(0)">全部</a></dd>
				        		<dd><a href="javascript:void(0)">985</a></dd>
				        		<dd><a href="javascript:void(0)">211</a></dd>
				        		<dd><a href="javascript:void(0)">双一流</a></dd>
				        		<dd><a href="javascript:void(0)">行业领军</a></dd>
				        		<dd><a href="javascript:void(0)">研究生院</a></dd>
				        	</dl>
				        </li>
				    </ul>
				    
				</div>
				<p class="text-center margin_bot margin_top"><a class="btn btn-primary fontwei begin_btn" href="">开始查询</a></p>
					
				<div class="panel panel-default">
					<div class="panel_head padding-side2">
						<h4 class="fontwei">共找到xx条结果</h4>
					</div>
				    <ul class="list-group search_result">
				        <li class="list-group-item">
				        	<div class="">
				        		<a href="xgk_sch_info.jsp"><img alt="学校logo" src="${pageContext.request.contextPath}/img/xgk/sch_logo.png"/></a>
				        	</div>
				        	<div class="sch_info sch_search_info padding-side">
				        		<div class="">
				        			<h4>上海外国语大学 <span class=""><img src="${pageContext.request.contextPath}/img/xgk/label.png"/></span></h4>
				        			<p class="">录取平均分排行（本科一批）<span class="text-danger">34</span></p>
				        		</div>
				        		<table border="0" cellspacing="" cellpadding="">
				        			<tr><td>院校代号：<span></span></td><td>录取概率：<span class="text-danger">15%</span></td></tr>
				        			<tr><td>隶属：<span></span></td><td>硕士点数：<span></span></td></tr>
				        			<tr><td>院校类型：<span></span></td><td>博士点数：<span></span></td></tr>
				        		</table>
				        	</div>
				        	<table class="sch_slice" border="" cellspacing="" cellpadding="">
				        		<tr><th rowspan="2">年份</th><th colspan="6">录取分</th><th colspan="2">计划人数</th></tr>
				        		<tr><th>最低分</th><th>平均分</th><th>最高分</th><th>提档线</th><th>线差</th><th>提档位次</th><th>往年</th><th>今年</th></tr>
				        		<tr><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td></tr>
				        		<tr><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td></tr>
				        		<tr><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td></tr>
				        		<tr><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td></tr>
				        		<tr><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td></tr>
				        	</table>
				        	<div class="operate_box">
				        		<p class="text-center"><a href="javascript:void(0)" class="btn btn-primary cancel">取消收藏</a></p>
				        		<p class="text-center"><a href="javascript:void(0)" onclick="btn_control(this)" class="btn btn-primary" id="add_contrast">加入对比</a></p>
				        	</div>
				        </li>
				        
				        <li class="list-group-item">
				        	<div class="">
				        		<a href="xgk_sch_info.jsp"><img alt="学校logo" src="${pageContext.request.contextPath}/img/xgk/sch_logo.png"/></a>
				        	</div>
				        	<div class="sch_info sch_search_info padding-side">
				        		<div class="">
				        			<h4>上海外国语大学 <span class=""><img src="${pageContext.request.contextPath}/img/xgk/label.png"/></span></h4>
				        			<p class="">录取平均分排行（本科一批）<span class="text-danger">34</span></p>
				        		</div>
				        		<table border="0" cellspacing="" cellpadding="">
				        			<tr><td>院校代号：<span></span></td><td>录取概率：<span class="text-danger">15%</span></td></tr>
				        			<tr><td>隶属：<span></span></td><td>硕士点数：<span></span></td></tr>
				        			<tr><td>院校类型：<span></span></td><td>博士点数：<span></span></td></tr>
				        		</table>
				        	</div>
				        	<table class="sch_slice" border="" cellspacing="" cellpadding="">
				        		<tr><th rowspan="2">年份</th><th colspan="6">录取分</th><th colspan="2">计划人数</th></tr>
				        		<tr><th>最低分</th><th>平均分</th><th>最高分</th><th>提档线</th><th>线差</th><th>提档位次</th><th>往年</th><th>今年</th></tr>
				        		<tr><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td></tr>
				        		<tr><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td></tr>
				        		<tr><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td></tr>
				        		<tr><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td></tr>
				        		<tr><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td></tr>
				        	</table>
				        	<div class="operate_box">
				        		<p class="text-center"><a href="javascript:void(0)" class="btn btn-primary cancel">取消收藏</a></p>
				        		<p class="text-center"><a href="javascript:void(0)" onclick="btn_control(this)" class="btn btn-primary" id="add_contrast">加入对比</a></p>
				        	</div>
				        </li>
				    </ul>
				    <!--分页-->
				    <div class="text-center">
				    	<ul class="pagination">
							<li><a href="#">&laquo;</a></li>
							<li class="active"><a href="#">1</a></li>
							<li class="disabled"><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#">&raquo;</a></li>
						</ul>
				    </div>
				    <!--/分页-->
				</div>

			</section>
			<div class="contrast panel">
				<div class="text-right text-primary padding-side2">
					<label class="slide_down" for="">
						隐藏<span class="glyphicon glyphicon-chevron-down"></span>
					</label>
				</div>
				<div class="contrast_tools">
				 	<ul class="contrast_list clearfix">
					 	<!--<li>
					 		<a href="javascript:void(0)" onclick="remove_contrast(this)">
					 			<img src="img/sch_logo.png"/>
					 		</a>
					 		<p class="text-center margin_top1"><a href="javascript:void(0)" onclick="del_contrast(this)" class="btn btn-primary">取消对比</a></p>
					 	</li>-->
					</ul>
					<div class="btn_group">
				 		<span class="padding-side">
				 			<p class="text-center"><a href="javascript:void(0)" onclick="modelshow($('#Modal .modal_tit').html(),$('#Modal .modal_content').html())" class="btn btn-primary">院校基本情况对比</a></p>
					 		<p class="text-center"><a href="javascript:void(0)" onclick="modelshow($('#Modal1 .modal_tit').html(),$('#Modal1 .modal_content').html())" class="btn btn-primary">院校录取分数对比</a></p>
					 		<p class="text-center"><a href="javascript:void(0)" onclick="clear_contrast(this)" class="btn btn-primary">清空对比</a></p>
				 		</span>
				 	</div>
				</div>
			</div>
			<script src="js/layer/2.4/layer.js" type="text/javascript" charset="utf-8"></script>
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
									<th><img src="img/sch_logo.png"/><div>上海外国语大学</div></th>
									<th><img src="img/sch_logo.png"/><div>上海外国语大学</div></th>
									<th><img src="img/sch_logo.png"/><div>上海外国语大学</div></th>
									<th><img src="img/sch_logo.png"/><div>上海外国语大学</div></th>
									<th><img src="img/sch_logo.png"/><div>上海外国语大学</div></th>
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
							<tr><td rowspan="7" style="width: 10em;"><img src="img/sch_logo.png"/></td><td rowspan="2">年份</td><td colspan="6">录取分数</td><td colspan="2">计划招生</td></tr>
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
				
				//加入对比
				function add_contrast(){
					$('.contrast').show();
					if($('.contrast_list li').length>4){//？？大于5依旧执行添加
						alert("最多5个元素");
						return false;
					}
					$('.contrast_list').append('<li><a href="javascript:void(0)"><img src="${pageContext.request.contextPath}/img/xgk/sch_logo.png"/></a><p class="text-center margin_top1"><a href="javascript:void(0)" onclick="del_contrast()" class="btn btn-primary">取消对比</a></p></li>');
				}
				
				function btn_control(obj) {
					if ($(obj).text()=='加入对比') {
						$(obj).text('取消对比');
						$(obj).attr('class','btn cancel text-white');
						add_contrast(obj)
					} else{
						$(obj).text('加入对比');
						$(obj).attr('class','btn btn-primary');
						//真实数据环境需更改
						del_contrast();
					}
				}
				
				//取消对比
				function del_contrast() {
					//真实数据环境需更改
					$('.contrast_list li').last().remove();
					if ($('.contrast_list li').length==0) {
						close_conbox();
					}
				}
				
				//清空对比
				function clear_contrast(obj){
					$(".contrast_list").children().remove();
					setTimeout(close_conbox(),2500);
				}
				
				//弹出对比弹出框
				function open_conbox() {
					$('.contrast_tools').slideDown('100',change_chara);
				}
				
				//关闭对比弹出框
				function close_conbox() {
					$('.contrast').hide();
				}
				
				//院校基本情况对比
//				function show_contrast_intro(){
//					$('.tip_box').css('display','block');
//				}
				//院校录取分数对比
//				function show_contrast_score(){
//					$('.tip_box').css('display','block');
//					$('.tit_docaration h2').text('院校录取分数对比');
//					$('.tit_docaration').next().children().remove();
//					$('.tit_docaration').next().append('噶三歌曲歌曲干旱气候')
//				}
				
			</script>
		</main>

		<!-- 右侧边栏-->
		<c:import url="../public/side_right.jsp"></c:import>
		<!-- 页面底部-->
		<c:import url="footer.jsp"></c:import>	

	</body>

</html>