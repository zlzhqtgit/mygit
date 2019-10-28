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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/nav_all.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/Hui-iconfont/1.0.8/iconfont.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/layer/2.4/layer.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/H-ui.admin.js"></script> 
</head>

<body>
<div class="text-c" style="height: 50px;"></div>
<article class="page-container">
	<form action="" method="post" class="form form-horizontal" id="form-admin-role-add">
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>主角色：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<select id="rid" name="rid">
					<option value="0">请选择......</option>
					<c:forEach items="${roleList}" var="c">
						<option value="${c.roleId}">${c.roleName}</option>
					</c:forEach>					
				</select>
			</div>
		</div>		
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>角色编号：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="" placeholder="" id="detailsNumber" name="detailsNumber">
			</div>
		</div>	
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>角色名称：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="" placeholder="" id="detailsName" name="detailsName">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>角色地址：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="" placeholder="" id="detailsAdress" name="detailsAdress">
			</div>
		</div>			
	</form>
		<div class="row cl">
			<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
				<button type="button" class="btn btn-success radius" id="admin-role-save" name="admin-role-save" onclick="addRoleDetails()"><i class="icon-ok"></i> 确定</button>
			</div>
		</div>
	
</article>

</body>
<script type="text/javascript">
function addRoleDetails(){    
	if ($("#rid").val() == 0) {
		layer.msg("请选择所对应的主角色",{icon:2,time:1000});			
	}else if($("#detailsNumber").val() == ""){
		layer.msg("请输入角色编号",{icon:2,time:1000});
	}else if($("#detailsName").val() == ""){
		layer.msg("请输入角色名称",{icon:2,time:1000});
	}else if($("#detailsAdress").val() == ""){
		layer.msg("请输入角色地址",{icon:2,time:1000});
	}else{		
		var url = "../user/hqt_roledetailsadd.do";
		var data = $("#form-admin-role-add").serialize();
		alert(data);
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
					layer.msg(obj.message,{icon:1,time:1000});
					$("#detailsNumber").val("");					
					$("#detailsName").val("");	
					$("#detailsAdress").val("");				
				}				
			}
		}); 
	}			
}
</script>

</html>
