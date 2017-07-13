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
    <link href="<%=request.getContextPath()%>/static/css/visa.css" rel="stylesheet">
    <title>签证</title>
</head>
<body>

<%@include file="include/nav.jsp" %>
<!-- Carousel
================================================== -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img src="<%=request.getContextPath()%>/static/image/visa/visa-banner-01.jpg">
        </div>
        <div class="item">
            <img src="<%=request.getContextPath()%>/static/image/banner-02.jpg">
        </div>
        <div class="item">
            <img src="<%=request.getContextPath()%>/static/image/banner-03.jpg">
        </div>
    </div>
</div>
<!-- /.carousel -->
<div class="container marketing">

    <!-- START THE FEATURETTES -->

    <h3>热门国家</h3>

    <div class="row visa-hot-country">
        <div class="col-xs-3 col-md-3">
            <a href="#" class="thumbnail">
                <img alt="100%x180" src="<%=request.getContextPath()%>/static/image/visa/hot-usa.jpg"/>
            </a>
            <div class="caption">
                <h4>美国签证</h4>
            </div>
        </div>
        <div class="col-xs-3 col-md-3">
            <a href="#" class="thumbnail">
                <img alt="100%x180" src="<%=request.getContextPath()%>/static/image/visa/hot-tg.jpg"/>
            </a>
            <div class="caption">
                <h4>泰国签证</h4>
            </div>
        </div>
        <div class="col-xs-3 col-md-3">
            <a href="#" class="thumbnail">
                <img alt="100%x180" src="<%=request.getContextPath()%>/static/image/visa/hot-fg.jpg"/>
            </a>
            <div class="caption">
                <h4>法国签证</h4>
            </div>
        </div>
        <div class="col-xs-3 col-md-3">
            <a href="#" class="thumbnail">
                <img alt="100%x180" src="<%=request.getContextPath()%>/static/image/visa/hot-az.jpg"/>
            </a>
            <div class="caption">
                <h4>澳大利亚签证</h4>
            </div>
        </div>
        <div class="col-xs-3 col-md-3">
            <a href="#" class="thumbnail">
                <img alt="100%x180" src="<%=request.getContextPath()%>/static/image/visa/hot-jp.jpg"/>
            </a>
            <div class="caption">
                <h4>日本签证</h4>
            </div>
        </div>
        <div class="col-xs-3 col-md-3">
            <a href="#" class="thumbnail">
                <img alt="100%x180" src="<%=request.getContextPath()%>/static/image/visa/hot-yg.jpg"/>
            </a>
            <div class="caption">
                <h4>英国签证</h4>
            </div>
        </div>
        <div class="col-xs-3 col-md-3">
            <a href="#" class="thumbnail">
                <img alt="100%x180" src="<%=request.getContextPath()%>/static/image/visa/hot-flb.jpg"/>
            </a>
            <div class="caption">
                <h4>菲律宾签证</h4>
            </div>
        </div>
        <div class="col-xs-3 col-md-3">
            <a href="#" class="thumbnail">
                <img alt="100%x180" src="<%=request.getContextPath()%>/static/image/visa/hot-ml.jpg"/>
            </a>
            <div class="caption">
                <h4>马来西亚签证</h4>
            </div>
        </div>

    </div>

</div>
<!-- /.container -->

<%@include file="include/footer.jsp" %>
<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
<script src="../../dist/js/bootstrap.min.js"></script>-->
<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
<script src="static/js/index/holder.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="static/js/index/ie10-viewport-bug-workaround.js"></script>

<script src="static/js/index/index.js"></script>

</body>
</html>
