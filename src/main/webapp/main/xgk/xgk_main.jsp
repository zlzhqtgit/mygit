<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=utf-8>
<title>底部内容页</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/web/xgk/itempool.js"></script>
<style type="text/css">
.tmdha{
    width: 40px;
    height: 40px;
    background: #827d7d;
    display: block;
    float: left;
    margin-left: 5px;
    margin-top: 5px;
    color: #ffffff;
    font-size: 20px;
    border-radius: 20px;
    text-align: center;
    line-height: 40px;
    cursor: pointer;
}
.tmdha:HOVER{
background: #653d3d;
}
#tmdhdiv{
  	width: 280px;
    border: 1px solid #114cd0;
    height: 500px;
    border-radius: 5px;
}
#tm{
width: 500px;
}
</style>
</head>

<body>
	<!-- <input id="tm" type="text" /> --><h4 id="tm">dsfds</h4><br />
	<div id="tmxs">	</div>
	<input id="syt" type="button" onclick="syt()" value="上一题" />
	<input id="xyt" type="button" onclick="xyt()" value="下一题" />
	<input id="tjda" type="button" onclick="tjda()" value="提交" /><br />
	<input id="num" type="hidden" value="0" />
	<div id="tmdhdiv" ></div>
		
</body>
<script type="text/javascript" src="js/jquery-3.1.1.min.js" ></script>
<script type="text/javascript" src="js/itempool.js" ></script>
<script>	
	var id=1;
	var len;  //使用length获取数组长度
	var numlen=Number($("#num").val());
	var cpda=new Array();
	//点击提交实现的方法
	function tjda(){
		var val = $('input[name="cpda"]:checked').val();
		if(val==null){
			
		}else{
			cpda[Number($("#num").val())][1]=val;
			$("#id"+$("#num").val()).css('background','#23de20');
		}
		var flag=true;
		var cpname="";
		for(var i=0;i<cpda.length;i++){
			if(cpda[i][1]==0){
				flag=false;
				cpname +=cpda[i][0]+"-";
			}			
		}
		if(flag==false){
			alert("你还有相关的测评题目没做，题目编号为："+cpname);
		}else{
			//location.href="../cp/indexno.do?cpda="+JSON.stringify(cpda);
			var url="../cp/xgk_result.do"; 
	    	var  data ="id="+id+"&cpda="+JSON.stringify(cpda);	    			  
	        $.ajax({    	   
	    	   "url":url,    	  
	    	   "data":data,
	    	   "type":"POST",
	    	   "dataType":"json",
	    	   "success":function(obj){    		  
	    		   if(obj.state==0){
	    			   alert(obj.message);
	    			   return;
	      			} 
	    		   alert(obj.message);
	    		   location.href="../cp/xgk_report.do";
	    	   }      
	    	});  
		}		
	}	
	
	//页面加载运行
	$(function() {		
		
		var tmdh="";
		if(id==1){
			len = hld.length - 1;
		}else{
			len = mbti.length - 1;
		}
		for(var i = 0; i <= len; i++){
			cpda[i]=new Array();			
			cpda[i][0]=i+1;
			cpda[i][1]=0;
			cpda[i][2]=0;
			tmdh +='<a id="id'+(cpda[i][0]-1)+'" onclick="dtk('+(cpda[i][0]-1)+","+id+')"  class="tmdha">'+cpda[i][0]+'</a>';
		}		
		var nu = Number($("#num").val());
		tu(nu, id);
		if(nu <= 0) {
			$("#syt	").attr("disabled", "disabled");
		} else {
			$("#syt").removeAttr("disabled");
		}
		$("#tmdhdiv").html(tmdh);
		
	});

	//点击下一題按钮
	function xyt() {
		var nu = Number($("#num").val()) + 1;
		if(len >= nu) {
			ti(nu);
			tu(nu, id);
		} else {
			return;
		}		
	}
	//点击上一题按钮
	function syt() {
		var nu = Number($("#num").val()) - 1;
		if(nu >= -1) {
		//通过数组的属性拿相应的值
			ti(nu);
			tu(nu, id);
		} else {
			return;
		}
	}
	//控制上一题，下一题启用状态
	function ti(nu) {
		if(len <= nu) {
			$("#xyt	").attr("disabled", "disabled");
			$("#syt").removeAttr("disabled");
		} else if(nu <= 0) {
			$("#syt	").attr("disabled", "disabled");
			$("#xyt").removeAttr("disabled");
		} else {
			$("#syt").removeAttr("disabled");
			$("#xyt").removeAttr("disabled");
		}
	}
	//点击答题卡跳转到相应的题目并控制上一题、下一题的按钮
	function dtk(nu,id){
		tu(nu, id);
		if(len >= nu) {
			ti(nu);			
		}else if(nu >= -1){
			ti(nu);
		}else{
			return;
		}		
	}
	 //向数组里获取题目
	function tu(nu, id) {
		var val = $('input[name="cpda"]:checked').val();		
		if(val==null){
			
		}else{
			cpda[Number($("#num").val())][1]=val;
			cpda[Number($("#num").val())][2]=1;
			$("#id"+$("#num").val()).css('background','#23de20');
		}
		 var tmxsname="";
		 if(cpda[nu][2]==1 && cpda[nu][1] ==1){
			 tmxsname +='<input type="radio" name="cpda" value="1" checked="checked" /><input id="da_a" type="text" /><br />'+
			 '<input type="radio" name="cpda" value="2" /><input id="da_b" type="text" /><br />';			
		 }else if(cpda[nu][2]==1 && cpda[nu][1] ==2){
			 tmxsname +='<input type="radio" name="cpda" value="1"  /><input id="da_a" type="text" /><br />'+
			 '<input type="radio" name="cpda" value="2" checked="checked" /><input id="da_b" type="text" /><br />';			 
		 }else{				
			tmxsname +='<input type="radio" name="cpda" value="1" onchange="xyt()"/><input id="da_a" type="text" /><br />'+
			 '<input type="radio" name="cpda" value="2" onchange="xyt()"/><input id="da_b" type="text" /><br />';	
		 }	
		 $("#tmxs").html(tmxsname);
		  
		if(id == 1) {
			//通过数组的属性拿相应的值
			var tm = hld[nu].name;
			var da_a = hld[nu].dass[0].da;
			var da_b = hld[nu].dass[0].db;
			$("#tm").text(tm);
			$("#da_a").val(da_a);
			$("#da_b").val(da_b);			
		} else {
			var tm = mbti[nu].name;
			var da_a = mbti[nu].dass[0].da;
			var da_b = mbti[nu].dass[0].db;
			$("#tm").val(tm);
			$("#da_a").val(da_a);
			$("#da_b").val(da_b);			
		}	
		$("#num").val(nu);
	}	
</script>
</html>
