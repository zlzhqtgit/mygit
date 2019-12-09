<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<!--<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="../css/index.css" />
		<link rel="stylesheet" type="text/css" href="../css/sch_search.css" />
		<script src="../js/jquery-1.11.0.js" type="text/javascript" charset="utf-8"></script>
		<script src="../js/layer/2.4/layer.js" type="text/javascript" charset="utf-8"></script>-->
	</head>
	<body>
		<div class="">
			<div class="flex_jc_sb">
				<h3 class="fontwei">2020年度上学期课程表</h3>
				<div class="text-right" style="display: flex;align-items: center;">
					<a href="">查看更多</a>
				</div>
			</div>
			<style type="text/css">
				th{vertical-align: middle !important;}
			</style>
			<table class="table table-bordered table-hover">
				<tr class="" style="">
					<th class="p_relative first" colspan="2" style="padding: 0;width: 8vw;height: 8vh; background-image:url(../img/xgk/tableHead.png);background-size: 100% 100%;background-repeat: no-repeat;">
						<div class="x_axis text-center" style="position: absolute;top: 1em;right: 1em;">星期</div>
						<div class="y_axis text-center" style="position: absolute;bottom: 1em;left: 1em;">时间</div>
					</th>
				<th>星期一</th><th>星期二</th><th>星期三</th><th>星期四</th><th>星期五</th><th>星期六</th><th>星期七</th></tr>
				<tr><td rowspan="5">
					<div class="text-center"><span class="glyphicon glyphicon-plus-sign"></span></div>
					<div>上午</div><span class="glyphicon glyphicon-minus-sign"></span></div>
				</td><td>第一节</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td>
				</tr>
				<tr><td>第一节</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td></tr>
				<tr><td colspan="8"><div class="text-center">课间</div></td></tr>
				<tr><td>第一节</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td></tr>
				<tr><td>第一节</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td></tr>
				<tr><td>午休</td><td colspan="8"></td></tr>
				<tr><td rowspan="4">
					<div class="text-center"><span class="glyphicon glyphicon-plus-sign"></span></div>
					<div>下午</div><span class="glyphicon glyphicon-minus-sign"></span>
				</td><td>第一节</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td>
				</tr>
				<tr><td>第一节</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td></tr>
				<tr><td>第一节</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td></tr>
				<tr><td>第一节</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td></tr>
				<tr><td rowspan="2">
					<div class="text-center"><span class="glyphicon glyphicon-plus-sign"></span></div>
					<div>晚上</div><span class="glyphicon glyphicon-minus-sign"></span>
				</td><td>第一节</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td>
				</tr>
				<tr><td>第一节</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td></tr>
				
			</table>
			<p class="text-right margin_top"><a class="btn btn-primary" href="">下载并打印</a></p>
		</div>
	</body>
</html>
