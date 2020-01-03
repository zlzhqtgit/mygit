<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
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
<script src="${pageContext.request.contextPath}/js/html2canvas.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/js/jspdf.debug.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/js/layer/2.4/layer.js"></script>
</head>
<body>
<!-- 页面顶部-->
<c:import url="header.jsp"></c:import>
<c:import url="report/${report}.jsp"></c:import>
<!-- 页面右侧-->
<c:import url="../public/side_right.jsp"></c:import>
<!-- 页面底部-->
<c:import url="footer.jsp"></c:import>	
<div class="" id="pay_info" style="display: none;">
					<div class="pay">
						<div class="margin_bot">
							<span class="">已选商品名称：</span><span class="text-danger padding-side fontwei">立学臻选套餐</span><span class="padding-side"><span id="show_money">599</span>元</span>
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
</body> 
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
					if(obj.state == 1){//正常下载									
						download();				
					}else{
						var status = obj.data.status;
						if(status == 1){
							download();
						} else {
							layer.confirm(obj.message, {
								  btn: ['单独购买', 'VIP续费', '取消'] //可以无限个按钮
								  ,btn3: function(index, layero){
								    layer.close(index);
								  }
								}, function(index, layero){
									 if('${uid}' != ""){
										 modelshow(false,$('#pay_info'),1);
										 $("#qr_code").attr("src", "${pageContext.request.contextPath}/api/weixinQRCode.do?rechargeMoney=" + recharge_money + "&body=" + body);	 
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
	    pdf.save('我的选科报告.pdf');        
	  })
	}
});
</script>
</html>
