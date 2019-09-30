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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/nav_all.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/layer/2.4/layer.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery_table/jquery.dataTables.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/js/H-ui.admin.js"></script> 
<style type="text/css">
table tr:nth-child(odd){background: #efecec;}
table tr th{
border: 1px solid #efe7e7;    
}
.table .text-c th, .table .text-c td{
vertical-align: middle;
}
</style>
</head>

<body>
<div>
	<span>选择城市：</span>
	<select onchange="select_chenge(this)">		
		<option value="贵州省">贵州省</option>
		<option value="湖南省">湖南省</option>
	</select>
	<span>当前：<label id="nowProvince">湖南省</label></span>
</div>
<div id="e_table">
	<table class="table table-border table-bordered table-bg table-hover table-sort">
		<thead>						
			<tr class="text-c">					
				<th width="80">年份</th>
				<th width="80">省份</th>
				<th width="180">学校</th>
				<th width="80">学历</th>
				<th>招生专业(类)</th>
				<th width="130">包含专业</th>			
				<th >首选科目要求</th>
				<th >再选科目要求</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${enrollmentlist}" var="c">
				<tr class="text-c">				
				<td>${c.eYear}</td>
				<td>${c.eProvince}</td>
				<td>${c.universitiesName}</td>
				<td>${c.eEducation}</td>
				<td>${c.enrollmentMajor}</td>
				<td>${c.includeMajor}</td>
				<td>${c.preferredSubject}</td>
				<td>${c.reelectionSubjects}</td>
				</tr>			
			</c:forEach>
		</tbody>
	</table>
</div>
</body>
<script type="text/javascript">
$('.table-sort').dataTable({
	"aaSorting": [[ 1, "desc" ]],//默认第几个排序
	"bStateSave": true,//状态保存
	"bLengthChange": false,
	"aoColumnDefs": [
	  // 制定列不参与排序
	]
});
function select_chenge(e){	
	var includeMajor="${includeMajor}";
	var url = "../xk/xgk_zsyqselect.do";
	var data ="includeMajor="+includeMajor+"&eProvince="+e.value;
	$.ajax({
		"url" : url,
		"data" : data,
		"type" : "POST",
		"dataType" : "json",
		"success" : function(obj) {
			if (obj.state == 0) {
				layer.msg(obj.message,{icon:2,time:1000});
				return;
			}else{
				var dat=obj.data;
				var str='<table class="table table-border table-bordered table-bg table-hover table-sort">'+
						'<thead><tr class="text-c"><th width="80">年份</th><th width="80">省份</th><th width="180">学校</th><th width="80">学历</th>'+
						'<th>招生专业(类)</th><th width="130">包含专业</th><th >首选科目要求</th><th >再选科目要求</th></tr></thead><tbody>';
				for(var i=0;i<dat.length;i++){
					str+='<tr class="text-c"><td>'+dat[i].eYear+'</td><td>'+dat[i].eProvince+'</td><td>'+dat[i].universitiesName+'</td>'+
					'<td>'+dat[i].eEducation+'</td><td>'+dat[i].enrollmentMajor+'</td><td>'+dat[i].includeMajor+'</td><td>'+dat[i].preferredSubject+'</td>'+
					'<td>'+dat[i].reelectionSubjects+'</td></tr>';			
				}
				str+='</tbody></table>';
				$("#e_table").html(str);
				$('.table-sort').dataTable({
					"aaSorting": [[ 1, "desc" ]],//默认第几个排序
					"bStateSave": true,//状态保存
					"bLengthChange": false,
					"aoColumnDefs": [ //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
					                  ]// 不参与排序的列 ]
					                  
				});
				$("#nowProvince").text(e.value);		
			}				
		}
	}); 
}
</script>
</html>
