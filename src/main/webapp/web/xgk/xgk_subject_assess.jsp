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
</head>
<body>
<!-- 页面顶部-->
<c:import url="header.jsp"></c:import>	

<main class="container">
	<section class="row">
		<h1 class="text-primary fontwei">学科潜能测评</h1>
		<div class="panel panel-default content" style="height: 433.7px;">
			<div class="padding-side2 margin_top">
				<p class="tm" style="font-family: '楷体';">1、老师在课堂上讲述的地理知识，我基本全部能理解。</p>
			<input id="num" type="hidden" value="0" />
			<div class="choise margin_top1"  style="height: 210px;">				
			</div>
			</div>
			<div class="padding-side2 margin_top1 margin_bot">
				<p class="text-right"><span id="current">1</span>/<span id="total">60</span></p>
				<div class="progress" style="height: 6px;">
					<div id="progress" class="progress-bar" role="progressbar" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100" style="width: 10%;">
						<span class="sr-only">10%</span>
					</div>
				</div>
			</div>
				<div class="padding-side2 margin_top1 margin_bot sub_box"><p class="text-right"></p></div>
		</div>
	</section>
</main>
<script src="${pageContext.request.contextPath}/js/web/xgk/assess_item.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	var total=ass_items.length;
	var end=0;
	var nextnum=0;
	$(document).ready(function(){
		jztm (nextnum);
		$('#total').text(total);
	})
			
	/**
	 * 
	 * @param {Object} nextnum
	 * @param {Object} obj
	 */
	function next_question(nextnum,obj) {			
		if(nextnum<total && end<total){	
			for(var i=0;i<total_sc.length;i++){
				if(total_sc[i][0]==ass_items[nextnum].subject && total_sc[i][1]==ass_items[nextnum].character){
					total_sc[i][2]=total_sc[i][2]+parseInt($(obj).next().val());							
				}
			}
		}
		$(obj).parents('.choise').find('span').removeClass('active');
		$(obj).addClass('active');
		jztm (nextnum+1);
	}		
	/**
	 * 加载题目
	 * @param {Object} nextnum//当前题号
	 */
	function jztm (nextnum) {
		if (nextnum<total) {
			var str='';
			var title=ass_items[nextnum].num+'、'+ass_items[nextnum].title;
			for (var j=0;j<ass_items[nextnum].options.length;j++) {
				str+='<p class=""><span class="btn btn-default ele_btn" onclick="next_question('+(nextnum)+',this)">'+ass_items[nextnum].options[j].da+'</span><input type="hidden" name="" id="" value="'+(ass_items[nextnum].options[j].sc) + '" /></p>';
			}			
			$('.choise').html(str);
			$('.tm').html(title);				
			$("#progress").css("width", 100/total*(nextnum+1) + "%");
			$('#current').text(nextnum+1);					
		} else if(nextnum==total){
			end=nextnum;
			console.log("已经是最后一题了")
			console.log(total_sc);
			$('.sub_box p').html('<a class="btn btn-primary" href="${pageContext.request.contextPath}/web/xgk/xgk_as_analyse.jsp">提交</a>')
		}		
	}
</script>

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