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
    <link href="<%=request.getContextPath()%>/static/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/static/css/index.css" rel="stylesheet">
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=TR8b21eM8ofQ1sPEND1udSrixkwGEEIQ"></script>
    <title>首页</title>
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
            <img src="<%=request.getContextPath()%>/static/image/banner-01.jpg">
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
<%@include file="order.jsp"%>

<div class="container marketing">

    <h3>热门车型</h3>

    <div class="row hot-car-list">
        <div class="col-xs-3 col-md-3">
            <a href="#" class="thumbnail">
                <img src="<%=request.getContextPath()%>/static/image/index/01.jpg">
            </a>
            <div class="caption">
                <h4>宝马5系</h4>
            </div>
        </div>
        <div class="col-xs-3 col-md-3">
            <a href="#" class="thumbnail">
                <img src="<%=request.getContextPath()%>/static/image/index/02.jpg">
            </a>
            <div class="caption">
                <h4>别克GL8</h4>
            </div>
        </div>
        <div class="col-xs-3 col-md-3">
            <a href="#" class="thumbnail">
                <img src="<%=request.getContextPath()%>/static/image/index/05.jpg">
            </a>
            <div class="caption">
                <h4>别克凯越</h4>
            </div>
        </div>
        <div class="col-xs-3 col-md-3">
            <a href="#" class="thumbnail">
                <img src="<%=request.getContextPath()%>/static/image/index/06.jpg">
            </a>
            <div class="caption">
                <h4>奥迪A6L</h4>
            </div>
        </div>
        <div class="col-xs-3 col-md-3">
            <a href="#" class="thumbnail">
                <img src="<%=request.getContextPath()%>/static/image/index/07.jpg">
            </a>
            <div class="caption">
                <h4>雪弗兰景程</h4>
            </div>
        </div>
        <div class="col-xs-3 col-md-3">
            <a href="#" class="thumbnail">
                <img src="<%=request.getContextPath()%>/static/image/index/08.jpg">
            </a>
            <div class="caption">
                <h4>大众帕萨特</h4>
            </div>
        </div>
        <div class="col-xs-3 col-md-3">
            <a href="#" class="thumbnail">
                <img src="<%=request.getContextPath()%>/static/image/index/07.jpg">
            </a>
            <div class="caption">
                <h4>雪弗兰景程</h4>
            </div>
        </div>
        <div class="col-xs-3 col-md-3">
            <a href="#" class="thumbnail">
                <img src="<%=request.getContextPath()%>/static/image/index/08.jpg">
            </a>
            <div class="caption">
                <h4>大众帕萨特</h4>
            </div>
        </div>
    </div>
</div>
    <!-- START THE FEATURETTES -->

<div class="container marketing">

    <h3>精彩活动</h3>

    <div class="row featurette hot-car-box">
        <div class="col-md-3">
            <a href="<%=request.getContextPath()%>/rent/index.do">
                <img class="featurette-image img-responsive center-block" src="<%=request.getContextPath()%>/static/image/hot-top.jpg"
                 alt="Generic placeholder image">
            </a>
        </div>
        <div class="col-md-6">
            <div>
                <a href="<%=request.getContextPath()%>/tours/index.do">
                    <span><img src="<%=request.getContextPath()%>/static/image/hot-01.jpg"></span>
                </a>
                <a href="<%=request.getContextPath()%>/tours/index.do#business">
                    <span><img src="<%=request.getContextPath()%>/static/image/hot-02.jpg"></span>
                </a>
            </div>
            <div>
                <a href="<%=request.getContextPath()%>/tours/index.do#abroad">
                    <span><img src="<%=request.getContextPath()%>/static/image/hot-03.jpg"></span>
                </a>
                <a href="<%=request.getContextPath()%>/visa/index.do">
                    <span><img src="<%=request.getContextPath()%>/static/image/hot-04.jpg"></span>
                </a>
            </div>
        </div>
        <div class="col-md-3">
            <a href="<%=request.getContextPath()%>/rv/index.do">
                <img class="featurette-image img-responsive center-block" src="<%=request.getContextPath()%>/static/image/hot-top.jpg"
                     alt="Generic placeholder image">
            </a>
        </div>
    </div>

</div>
<!-- /.container -->
<%@include file="selectAddress.jsp"%>

<%@include file="include/footer.jsp" %>
<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
<script src="../../dist/js/bootstrap.min.js"></script>-->
<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
<script src="<%=request.getContextPath()%>/static/js/bootstrap-datetimepicker.min.js"></script>
<script src="<%=request.getContextPath()%>/static/js/bootstrap-datetimepicker.zh-CN.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="static/js/index/ie10-viewport-bug-workaround.js"></script>
<script src="<%=request.getContextPath()%>/static/js/index/index.js"></script>
</body>
</html>
