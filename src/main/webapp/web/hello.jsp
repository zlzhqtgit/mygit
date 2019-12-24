
<%--
  Created by IntelliJ IDEA.
  User: HF
  Date: 2019/12/6
  Time: 22:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
        <meta charset="utf-8">
        <title>贵州好前途教育科技有限公司</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/index.css" />
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/sch_search.css"/>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/jPages.css" />
        <script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js" type="text/javascript" charset="utf-8"></script>
        <script src="${pageContext.request.contextPath}/js/layer/2.4/layer.js"></script>
        <script src="${pageContext.request.contextPath}/js/jPages.js"></script>
        <link rel="stylesheet" href="../../js/layui-v2.5.5/layui/css/layui.css"  media="all">
        <script src="../../js/layui-v2.5.5/layui/layui.js" type="text/javascript" charset="utf-8"></script>

</head>
<body>
<%-- <div id="test">
	
	<c:forEach items="${core_laboratories_and_research_centers}" var="item">
		<c:forEach items="${item}" var="it">
			${it}
		</c:forEach>
	</c:forEach>
</div>
	<script type="text/javascript">
		var list = JSON.parse('{"专业编码":"010101","专业名称":"哲学","学科门类":"哲学类","二级门类":"哲学","计划招生":"251"}');
		console.log(list)
	</script>
<div>
<c:forEach items="${core0}" var="item">
		${ooo[0][0][1]}
		<c:forEach items="${ooo}" var="r" varStatus="ff">
			<c:forEach items="${ooo[ff.index]}" var="a" varStatus="o">		
				<c:forEach items="${ooo[ff.index][o.index]}"  var="it" varStatus="tt">
					<c:if test="${tt.index==0}">
					<a>${it}</a>
					</c:if>
					<c:if test="${tt.index!=0}">
						<a>${it}</a>
					</c:if>					
				</c:forEach>
				<c:if test="${o.last}">
					<br>
				</c:if>
			</c:forEach>
		</c:forEach>
		
		
	</c:forEach>
	</div> --%>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<div id="demo7"></div>
<script>
layui.use(['laypage', 'layer'], function(){
  var laypage = layui.laypage
  ,layer = layui.layer;
  
 
  //完整功能
  laypage.render({
    elem: 'demo7'
    ,count: 100
    ,layout: ['count', 'prev', 'page', 'next', 'limit', 'refresh', 'skip']
    ,jump: function(obj){
      console.log(obj)
    }
  });
  


  
});
</script>
<!-- 页面底部-->
</body>
</html>