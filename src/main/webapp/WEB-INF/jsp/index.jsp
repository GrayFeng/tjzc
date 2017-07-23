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

    <h3>精彩活动</h3>

    <div class="row featurette hot-car-box">
        <div class="col-md-5">
            <img class="featurette-image img-responsive center-block" src="<%=request.getContextPath()%>/static/image/hot-top.jpg"
                 alt="Generic placeholder image">
        </div>
        <div class="col-md-7">
            <div>
                <span><img src="<%=request.getContextPath()%>/static/image/hot-01.jpg" width="363px" height="197px"></span>
                <span><img src="<%=request.getContextPath()%>/static/image/hot-02.jpg" width="363px" height="197px"></span>
            </div>
            <div>
                <span><img src="<%=request.getContextPath()%>/static/image/hot-03.jpg" width="363px" height="197px"></span>
                <span><img src="<%=request.getContextPath()%>/static/image/hot-04.jpg" width="363px" height="197px"></span>
            </div>
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
<script src="static/js/index/holder.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="static/js/index/ie10-viewport-bug-workaround.js"></script>
<script src="<%=request.getContextPath()%>/static/js/index/index.js"></script>


</body>
</html>
