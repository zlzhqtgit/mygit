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
<img src="../img/photo/school/10001/image/logo.jpg">
<img src="../img/photo/school/10001/life/2019_12_10_ca82eafb-7033-4046-bed1-8d0b3772e869.jpg">
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
                var dd='[{"name":"编辑/记者","value":"15.1%","occupation":"主编，责任编辑，编辑部主任"},{"name":"金融分析/研究","value":"8.8%","occupation":"研究员，行业研究，研究部总监，高级研究员"},{"name":"行政/后勤/文秘","value":"8.8%","occupation":"行政专员/助理，办公室助理，行政助理、文秘，助理秘书"},{"name":"项目管理/协调","value":"7.2%","occupation":"项目经理，部门经理，项目经理（兼职），可持续发展专员"},{"name":"教师","value":"5.2%","occupation":"职业中专/技校教师，兼职教师"},{"name":"其他","value":"54.9%","occupation":"人事行政部，人力资源专员/助理，薪酬福利专员/助理，人力资源经理"}]';
                // var b = JSON.stringify(a.employmentCareerDirection)
                var cc = '[{"年份":2019,"省份":"贵州省","录取类型":"文科","平均分":80,"最低分":70,"省控线":700,"最低位次":1500,"录取人数":500,"录取批次":"第一批次"},{"年份":2019,"省份":"贵州省","录取类型":"理科","平均分":80,"最低分":70,"省控线":700,"最低位次":1500,"录取人数":500,"录取批次":"第一批次"},{"年份":2020,"省份":"贵州省","录取类型":"文科","平均分":80,"最低分":70,"省控线":700,"最低位次":1500,"录取人数":500,"录取批次":"第一批次"}]';
                // console.log(a)
                var c = JSON.parse(cc)
                console.log(c[0].省份);
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
