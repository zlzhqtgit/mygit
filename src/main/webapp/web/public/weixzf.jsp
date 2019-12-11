<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% pageContext.setAttribute("basePath", request.getContextPath());%>
<!DOCTYPE html>
<html>
<head>
<meta charset=utf-8>
<title>好前途在线咨询平台</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/index.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/public/xgk_chat.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
</head>
<body>
	<div>        
        <img id=""  src="${pageContext.request.contextPath}/api/weixinQRCode.do?out_trade_no=123123123&rechargeMoney=0.01"/><br/>
        <label id="parking_wxts">打开微信--点击发现--扫一扫--完成支付</label> 
    </div>
</body>
<script type="text/javascript">
$(document).ready(function(){
	setInterval(timeout_function, 5000);
	var i = 120;
	var str;
    var timer = setInterval(function(){ 
        if(i== -1){ 
            clearInterval(timer);
            location.href = "../main/index.do";
        }else{ 
        	if(parseInt(i/60)<1){
        		if(i%60<10){
        			str="剩余支付时间："+"00:0"+i%60;
        		}else{
        			str="剩余支付时间："+"00:"+i%60;
        		}        		
        	}else if(parseInt(i/60)<10 &&parseInt(i/60)>=1){
        		if(i%60<10){
        			str="剩余支付时间："+"0"+parseInt(i/60)+":0"+i%60;
        		}else{
        			str="剩余支付时间："+"0"+parseInt(i/60)+":"+i%60;
        		}        		
        	}else{
        		if(i%60<10){
        			str="剩余支付时间："+parseInt(i/60)+":0"+i%60;
        		}else{
        			str="剩余支付时间："+parseInt(i/60)+":"+i%60;
        		}        		
        	}        	
            $("#daojs").text(str); 
            --i;
        }
    },1000);
});

function timeout_function(){
	var url="../licence/orderSUCCESS.do";	
	var consumeType="?consumeType="+encodeURIComponent($(".consumeType").text());
	var  data ="consumeNumber="+$(".consumeNumber").text()+"&licencePlate="+$(".licencePlate").text()+"&carNumber="+$(".carNumber").text()+"&consumePatterns="+$(".consumePatterns").text()+"&startTime="+$(".startTime").text()+"&stopTime="+$(".stopTime").text()+"&price="+$(".price").text();	    			  
    $.ajax({    	   
	   "url":url,
	   "data":data,
	   "type":"POST",
	   "dataType":"json",
	   "success":function(obj){    		  
		   if(obj.state==0){			   
			   return;
  			}else{
  				var d=obj.data;
  				if(d==1){
  					location.href = "../user/WXpay_succeed.do"+consumeType+"&strat=1";
  				}else{
  					location.href = "../user/WXpay_fail.do"+consumeType+"&strat=1";
  				}
  			}		   
	   }   
   });    
}
</script>
</html>
