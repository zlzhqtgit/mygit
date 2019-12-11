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
                    	error <span>500</span>
                    </div>
                
                	<h1 class="da-error-heading">哎哟喂！服务器错误！</h1>
                    <p>线索：1.该网站正在进行维护&nbsp 2.该网站有程序错误</p>
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
		
		

</body>
<script type="text/javascript">
var id="${id}";
$( "#xgk"+id).addClass( "active" );
</script>
</html>
