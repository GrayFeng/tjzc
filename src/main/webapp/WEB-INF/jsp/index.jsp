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
    <link href="static/css/index.css" rel="stylesheet">
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

<div class="container service-type-container">
    <div class="service-type-box">
        <ul class="nav nav-tabs" role="tablist" id="serviceTypeTabs">
            <li role="presentation" class="active">
                <a href="#home" aria-controls="home" role="tab" data-toggle="tab">日租包车</a>
            </li>
            <li role="presentation">
                <a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">接送机</a>
            </li>
            <li role="presentation">
                <a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">接送火车</a>
            </li>
            <li role="presentation">
                <a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">长租短租</a>
            </li>
            <li role="presentation">
                <a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">企业包车</a>
            </li>
        </ul>

        <!-- Tab panes -->
        <div class="tab-content">
            <div role="tabpanel" class="tab-pane active" id="home">
                <div class="order-item">
                    <label class="order-item-label">用车时间</label><input class="order-item-input form-control" type="text"
                                                                       placeholder="">
                </div>
                <div class="order-item">
                    <label class="order-item-label">出发地点</label><input class="order-item-input form-control" type="text"
                                                                       placeholder="">
                </div>
                <div class="order-item">
                    <label class="order-item-label">送达地点</label><input class="order-item-input form-control" type="text"
                                                                       placeholder="">
                </div>
                <div class="order-item" style="margin-top: 15px;">
                    <label class="order-item-label">包车天数</label>
                    <span class="order-item-checkbox">
                      <input type="radio" name="type-radio" value="a"><label>单次</label>
                    </span>
                    <span class="order-item-checkbox">
                      <input type="radio" name="type-radio" value="b"><label>半天</label>
                    </span>
                    <span class="order-item-checkbox">
                      <input type="radio" name="type-radio" value="c"><label>全天</label>
                    </span>
                </div>
                <div class="order-item">
                    <button type="button" class="btn btn-lg btn-success">预订</button>
                </div>
            </div>
            <div role="tabpanel" class="tab-pane" id="profile">profile</div>
            <div role="tabpanel" class="tab-pane" id="messages">messages</div>
        </div>

    </div>
</div>

<div class="container marketing">

    <h3>热门车型</h3>

    <div class="row hot-car-list">
        <div class="col-xs-2 col-md-2">
            <a href="#" class="thumbnail">
                <img src="<%=request.getContextPath()%>/static/image/index/01.jpg">
            </a>
            <div class="caption">
                <h4>宝马5系</h4>
            </div>
        </div>
        <div class="col-xs-2 col-md-2">
            <a href="#" class="thumbnail">
                <img src="<%=request.getContextPath()%>/static/image/index/02.jpg">
            </a>
            <div class="caption">
                <h4>别克GL8</h4>
            </div>
        </div>
        <div class="col-xs-2 col-md-2">
            <a href="#" class="thumbnail">
                <img src="<%=request.getContextPath()%>/static/image/index/05.jpg">
            </a>
            <div class="caption">
                <h4>别克凯越</h4>
            </div>
        </div>
        <div class="col-xs-2 col-md-2">
            <a href="#" class="thumbnail">
                <img src="<%=request.getContextPath()%>/static/image/index/06.jpg">
            </a>
            <div class="caption">
                <h4>奥迪A6L</h4>
            </div>
        </div>
        <div class="col-xs-2 col-md-2">
            <a href="#" class="thumbnail">
                <img src="<%=request.getContextPath()%>/static/image/index/07.jpg">
            </a>
            <div class="caption">
                <h4>雪弗兰景程</h4>
            </div>
        </div>
        <div class="col-xs-2 col-md-2">
            <a href="#" class="thumbnail">
                <img src="<%=request.getContextPath()%>/static/image/index/08.jpg">
            </a>
            <div class="caption">
                <h4>大众帕萨特</h4>
            </div>
        </div>
    </div>
    <!-- START THE FEATURETTES -->

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
