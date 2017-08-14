<%--
  Created by IntelliJ IDEA.
  User: GrayF
  Date: 2017/7/4
  Time: 上午1:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <%@include file="include/header.jsp" %>
    <link href="<%=request.getContextPath()%>/static/css/company.css" rel="stylesheet">
    <title>企业服务</title>
</head>
<body>

<%@include file="include/nav.jsp" %>
<!-- /.carousel -->
<div class="container marketing">

    <!-- START THE FEATURETTES -->

    <h3>服务项目</h3>

    <div class="row service-icon">
        <div class="col-xs-3 col-md-3">
            <a href="#" class="thumbnail">
                <img src="<%=request.getContextPath()%>/static/image/company/icon-1.png"/>
            </a>
            <div class="caption">
                <h4>接送服务</h4>
            </div>
        </div>
        <div class="col-xs-3 col-md-3">
            <a href="#" class="thumbnail">
                <img alt="100%x180" src="<%=request.getContextPath()%>/static/image/company/icon-4.png"/>
            </a>
            <div class="caption">
                <h4>商务用车</h4>
            </div>
        </div>
        <div class="col-xs-3 col-md-3">
            <a href="#" class="thumbnail">
                <img alt="100%x180" src="<%=request.getContextPath()%>/static/image/company/icon-2.png"/>
            </a>
            <div class="caption">
                <h4>企业班车</h4>
            </div>
        </div>
        <div class="col-xs-3 col-md-3">
            <a href="#" class="thumbnail">
                <img alt="100%x180" src="<%=request.getContextPath()%>/static/image/company/icon-41.png"/>
            </a>
            <div class="caption">
                <h4>定制包车</h4>
            </div>
        </div>
        <div class="col-xs-3 col-md-3">
            <a href="#" class="thumbnail">
                <img alt="100%x180" src="<%=request.getContextPath()%>/static/image/company/icon-5.png"/>
            </a>
            <div class="caption">
                <h4>商之旅</h4>
            </div>
        </div>
        <div class="col-xs-3 col-md-3">
            <a href="#" class="thumbnail">
                <img alt="100%x180" src="<%=request.getContextPath()%>/static/image/company/icon-6.png"/>
            </a>
            <div class="caption">
                <h4>自由行</h4>
            </div>
        </div>
        <div class="col-xs-3 col-md-3">
            <a href="#" class="thumbnail">
                <img alt="100%x180" src="<%=request.getContextPath()%>/static/image/company/icon-7.png"/>
            </a>
            <div class="caption">
                <h4>办签证</h4>
            </div>
        </div>
        <div class="col-xs-3 col-md-3">
            <a href="#" class="thumbnail">
                <img alt="100%x180" src="<%=request.getContextPath()%>/static/image/company/icon-8.png"/>
            </a>
            <div class="caption">
                <h4>房车游</h4>
            </div>
        </div>
    </div>

    <h3>合作伙伴</h3>

    <div class="row visa-hot-country">
        <div class="col-xs-3 col-md-3">
            <a href="#" class="thumbnail">
                <img alt="100%x180" src="<%=request.getContextPath()%>/static/image/company/p1.png"/>
            </a>
            <div class="caption">
                <h4>渣打银行</h4>
            </div>
        </div>
        <div class="col-xs-3 col-md-3">
            <a href="#" class="thumbnail">
                <img alt="100%x180" src="<%=request.getContextPath()%>/static/image/company/p2.png"/>
            </a>
            <div class="caption">
                <h4>天津波音复合材料有限责任公司</h4>
            </div>
        </div>
        <div class="col-xs-3 col-md-3">
            <a href="#" class="thumbnail">
                <img alt="100%x180" src="<%=request.getContextPath()%>/static/image/company/p3.png"/>
            </a>
            <div class="caption">
                <h4>富士通点电子有限公司</h4>
            </div>
        </div>
        <div class="col-xs-3 col-md-3">
            <a href="#" class="thumbnail">
                <img alt="100%x180" src="<%=request.getContextPath()%>/static/image/company/p4.png"/>
            </a>
            <div class="caption">
                <h4>柯梅令（天津）高分子型材有限公司</h4>
            </div>
        </div>
        <div class="col-xs-3 col-md-3">
            <a href="#" class="thumbnail">
                <img alt="100%x180" src="<%=request.getContextPath()%>/static/image/company/p5.png"/>
            </a>
            <div class="caption">
                <h4>雀巢普瑞纳宠物食品有限公司</h4>
            </div>
        </div>
        <div class="col-xs-3 col-md-3">
            <a href="#" class="thumbnail">
                <img alt="100%x180" src="<%=request.getContextPath()%>/static/image/company/p6.png" style="width:150px"/>
            </a>
            <div class="caption">
                <h4>天津利顺德大饭店</h4>
            </div>
        </div>
        <div class="col-xs-3 col-md-3">
            <a href="#" class="thumbnail">
                <img alt="100%x180" src="<%=request.getContextPath()%>/static/image/company/p7.png"/>
            </a>
            <div class="caption">
                <h4>日航酒店</h4>
            </div>
        </div>
    </div>
</div>
<!-- /.container -->

<%@include file="include/footer.jsp" %>

</body>
</html>
