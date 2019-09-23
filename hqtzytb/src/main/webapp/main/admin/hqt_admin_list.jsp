<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset=utf-8>
<title>后台用户浏览页面</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/nav_all.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/Hui-iconfont/1.0.8/iconfont.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/layer/2.4/layer.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery_table/jquery.dataTables.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/js/H-ui.admin.js"></script> 

</head>

<body>
<a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a>
	
	<div class="text-c" style="height: 50px;"> 
	</div>
	<div class="cl pd-5 bg-1 bk-gray mt-20"> <span class="l">
	<!-- <a href="javascript:;" onclick="datadel()" class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i> 批量删除</a>  -->
	</span><br/><br/>
	<table class="table table-border table-bordered table-bg table-hover table-sort">
		<thead>						
			<tr class="text-c">				
				<th width="40">ID</th>
				<th width="160">登录名</th>
				<th width="130">手机</th>
				<th width="180">邮箱</th>
				<th>角色</th>
				<th width="130">加入时间</th>			
				<th width="100">操作</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${adminAlllist}" var="c">
				<tr class="text-c">				
				<td>${c.id}</td>
				<td>${c.username}</td>
				<td>${c.phone}</td>
				<td>${c.email}</td>
				<td>${c.userRole}</td>
				<td><fmt:formatDate value="${c.creatTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>				
				<td class="td-manage"> 
				<a title="编辑" href="javascript:;" onclick="admin_edit('${c.userRole}编辑','hqt_admin_edit.do?id=${c.id}','4','850','550')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a> 
				<a title="删除" href="javascript:;" onclick="admin_del('${c.id}','${c.username}')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a>
				<a title="重置密码" href="javascript:;" onclick="admin_reset('${c.id}','${c.username}')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe63f;</i></a></td>
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
	"aoColumnDefs": [
	  {"orderable":false,"aTargets":[6]}// 制定列不参与排序
	]
});

/*管理员-删除*/
function admin_del(id,username){
	layer.confirm('确认要删除用户'+username+'吗？',function(index){		
		var url = "../admin/hqt_admindelete.do";
		var data ="id="+id;
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
					layer.msg(obj.message,{icon:1,time:1000},function(){location.replace(location.href);layer.close(layer.index);});
				}				
			}
		}); 
	});
}
/*管理员-密码重置*/
function admin_reset(id,username){
	layer.confirm('确认要重置用户：'+username+' 的密码吗？',function(index){		
		var url = "hqt_adminreset.do";
		var data ="id="+id;
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
					layer.msg(obj.message,{icon:1,time:1000},function(){location.replace(location.href);layer.close(layer.index);});				
				}				
			}
		}); 
	});
}
/*管理员-编辑*/
function admin_edit(title,url,id,w,h){	
	layer_show(title,url,w,h);
}
</script>
</html>
