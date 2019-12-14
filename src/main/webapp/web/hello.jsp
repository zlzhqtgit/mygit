<%--
  Created by IntelliJ IDEA.
  User: HF
  Date: 2019/12/6
  Time: 22:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

</head>
<body>
<c:import url="header.jsp"></c:import>
<div id="test">

</div>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<h4>                                                   <a href="javascript:;" onclick="test()">测试</a></h4>
<script type="text/javascript">
    function test() {
        $.ajax({
            url: "../test.do",
            data: "",
            type: "POST",
            dataType: "json",
            success: function (obj) {
                var a = obj.data;
                var cc = '[{"name":"行业收入","value":[{"vocation":"金融/投资/证券","money":"￥7680"},{"vocation":"金融/投资/证券","value":"￥7680"}]},{"name":"地区收入","value":[{"area":"北京","money":"￥5220"},{"area":"上海","money":"￥5170"}]}]';
                // console.log(a)
                var cc = '[{"行业收入":[{"name":"金融/投资/证券","money":"￥7680"},{"name":"金融/投资/证券","value":"￥7680"}]},{"地区收入":[{"name":"北京","money":"￥5220"},{"name":"上海","money":"￥5170"}]}]';
                var c = JSON.parse(cc) 
                console.log(c[0].行业收入);
                $("#test").html("<a>" + a.employmentIndustryDistribution + "</a>")
            }
        })
    }
</script>
<%--                测试--%>
<%--<div id="gghhh">
    <div>就爱上的就拉开数据来看大家爱死了</div>
    <div>就爱上的就拉开数据来看大家爱死了</div>
    <div>就爱上的就拉开数据来看大家爱死了</div>
    <div>就爱上的就拉开数据来看大家爱死了</div>
    <div>就爱上的就拉开数据来看大家爱死了</div>
    <div>就爱上的就拉开数据来看大家爱死了</div>
    <div>就爱上的就拉开数据来看大家爱死了</div>
</div>
<div class="col-xs-12 bg-white p-10 m-t-10 t-a-c"style="box-shadow: 0px 0px 0px #bdb8b8;">
    <div class="holder" style="text-align: center;"></div>
</div>
<script type="text/javascript">
    $(function() {
        /* initiate plugin assigning the desired button labels  */
        $("div.holder").jPages({
            containerID : "gghhh",
            perPage     : 5,
            first       : "首页",
            previous    : "上一页",
            next        : "下一页",
            last        : "尾页"
        });
    });
</script>--%>
<!-- 右侧边栏-->
<c:import url="../public/side_right.jsp"></c:import>
<!-- 页面底部-->
<c:import url="footer.jsp"></c:import>
</body>
</html>
