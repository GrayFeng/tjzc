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
  <%@include file="include/header.jsp"%>
  <link href="static/css/index/index.css" rel="stylesheet">
  <title>首页</title>
</head>
<body>

<%@include file="include/nav.jsp"%>
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

    </div>
    <div class="item">

    </div>
    <div class="item">

    </div>
  </div>
</div><!-- /.carousel -->

<div class="service-type-box">
  <ul class="nav nav-tabs" role="tablist" id="serviceTypeTabs">
    <li role="presentation" class="active">
      <a href="#home" aria-controls="home" role="tab" data-toggle="tab">Home</a>
    </li>
    <li role="presentation">
      <a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Profile</a>
    </li>
    <li role="presentation">
      <a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">Messages</a>
    </li>
  </ul>

  <!-- Tab panes -->
  <div class="tab-content">
    <div role="tabpanel" class="tab-pane active" id="home">
      <div class="order-item">
        <label class="order-item-label">xxxx</label><input class="order-item-input form-control" type="text" placeholder="">
      </div>
      <div class="order-item">
        <label class="order-item-label">xxxx</label><input class="order-item-input form-control" type="text"  placeholder="">
      </div>
      <div class="order-item">
        <label class="order-item-label">xxxx</label><input class="order-item-input form-control" type="text"  placeholder="">
      </div>
      <div class="order-item">
        <label class="order-item-label">xxxx</label>
        <span class="order-item-checkbox">
          <input type="checkbox"><label>xxxx</label>
        </span>
        <span class="order-item-checkbox">
          <input type="checkbox"><label>xxxx</label>
        </span>
        <span class="order-item-checkbox">
          <input type="checkbox"><label>xxxx</label>
        </span>
      </div>
      <div class="order-item">
        <button type="button" class="btn btn-lg btn-success">Success</button>
      </div>

    </div>
    <div role="tabpanel" class="tab-pane" id="profile">profile</div>
    <div role="tabpanel" class="tab-pane" id="messages">messages</div>
  </div>

</div>

<div class="container marketing">

  <!-- START THE FEATURETTES -->

  <h3>Example heading</h3>

  <div class="row featurette hot-car-box">
    <div class="col-md-5">
      <img class="featurette-image img-responsive center-block" data-src="holder.js/500x500/auto" alt="Generic placeholder image">
    </div>
    <div class="col-md-7">
      <div>
        <span></span>
        <span></span>
      </div>
      <div>
        <span></span>
        <span></span>
      </div>
    </div>
  </div>

</div><!-- /.container -->

<%@include file="include/footer.jsp"%>
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
