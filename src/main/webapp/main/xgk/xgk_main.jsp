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
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery_table/editTable.js"></script>
<style type="text/css">
.table-b{border:1px solid #F00}
.table-b td{border:1px solid #F00}

</style>
</head>

<body>
	<div id="fename">
			<p><input type="checkbox" name="item" value="选项1"><label>选项1</label></p>
            <p><input type="checkbox" name="item" value="选项2"><label>选项2</label></p>
            <p><input type="checkbox" name="item" value="选项3"><label>选项3</label></p>
            <p><input type="checkbox" name="item" value="选项4"><label>选项4</label></p>
            <p><input type="checkbox" name="item" value="选项5"><label>选项5</label></p>
            <p><input type="checkbox" name="item" value="选项6"><label>选项6</label></p>
            <p><input type="checkbox" name="item" value="选项7"><label>选项7</label></p>
            <p><input type="checkbox" name="item" value="选项8"><label>选项8</label></p>		
	</div><input type="button"  id="addBtn" value="对比" ><br>
	<table class="table-b">
				<thead>
					<!-- <tr class="text-c">								
						<th>分类</th>						
					</tr> -->
				</thead>
				<tbody>					
					<!-- 	<tr style="border: 2px solid #a51d1d;">
						<td>报考专业数</td>												
						</tr>	
						<tr style="border: 2px solid #a51d1d;">
						<td>专业大类</td>												
						</tr>	
						<tr style="border: 2px solid #a51d1d;">
						<td>专业小类</td>												
						</tr>	
						<tr style="border: 2px solid #a51d1d;">
						<td>不同的专业</td>												
						</tr>	 -->							
				</tbody>
			</table>
		
</body>


</html>
