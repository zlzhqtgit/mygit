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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/dandelion.css"  media="screen" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/index.css" />		
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/web/xgk/dropdown.js" type="text/javascript" charset="utf-8"></script>
</head>

<body>
			
		<div id="da-wrapper" class="fluid">
    
        <!-- Content -->
        <div id="da-content">
            
            <!-- Container -->
            <div class="da-container clearfix">
            
            	<div id="da-error-wrapper">
                	
                   	<div id="da-error-pin"></div>
                    <div id="da-error-code">
                    	error <span>404</span>                    </div>
                
                	<h1 class="da-error-heading">哎哟喂！页面让狗狗叼走了！</h1>
                    <p>大家可以到狗狗没有叼过的地方看看！</p>
                    <p> 
	                    <a href="${pageContext.request.contextPath}/cp/xgk_index.do" >首页</a>
	                    <a href="${pageContext.request.contextPath}/cp/xgk_choice.do" >认知测评</a>
	                    <a href="${pageContext.request.contextPath}/cp/xgk_guide_select.do" >选科指导</a>
	                    <a href="${pageContext.request.contextPath}/cp/xgk_index.do" >首页</a>
                    </p>
                </div>
            </div>
        </div>
        
        <!-- Footer -->
        <div id="da-footer">
        	<div class="da-container clearfix">
           	<p> <a href="${pageContext.request.contextPath}/cp/xgk_index.do">贵州好前途教育科技</a></div>
        </div>
    </div>
		
		
<!-- 页面底部-->
<c:import url="side_right.jsp"></c:import>	

</body>
<script type="text/javascript">
var id="${id}";
$( "#xgk"+id).addClass( "active" );
</script>
</html>
