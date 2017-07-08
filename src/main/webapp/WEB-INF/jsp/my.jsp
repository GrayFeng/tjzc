<%--
  Created by IntelliJ IDEA.
  User: GrayF
  Date: 2017/7/5
  Time: 上午12:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <%@include file="include/header.jsp"%>
  <link href="<%=request.getContextPath()%>/static/css/my.css" rel="stylesheet">
  <title>我的中心</title>
</head>
<body>

<%@include file="include/nav.jsp" %>
<div class="my-center-box">
  <div class="container">
    <div class="col-lg-4 my-center-menu">
      <div class="list-group">
        <a href="#" class="list-group-item active">
          我的订单
        </a>
        <a href="#" class="list-group-item">我的订单</a>
        <a href="#" class="list-group-item">我的订单</a>
        <a href="#" class="list-group-item">我的订单</a>
        <a href="#" class="list-group-item">我的订单</a>
      </div>
    </div>
    <div class="col-lg-8 my-center-content">
      <div class="search-box">
        <div class="search-form">
          <input type="email" id="start-time" class="form-control" placeholder="起始时间" required autofocus>
          <input type="email" id="end-time" class="form-control" placeholder="截止时间" required autofocus>
          <button class="btn btn-success btn-block" type="submit">查询</button>
        </div>
      </div>
      <div class="search-order-status">
        <ul class="nav nav-pills">
          <li role="presentation" class="active"><a href="#">创建</a></li>
          <li role="presentation"><a href="#">派单</a></li>
          <li role="presentation"><a href="#">完成</a></li>
        </ul>
        </div>
      <table class="table table-bordered">
        <thead>
        <tr>
          <th width="15%">服务类型</th>
          <th>出发地址</th>
          <th>送达地址</th>
          <th>用车时间</th>
          <th width="10%">订单金额</th>
          <th width="10%">订单状态</th>
        </tr>
        </thead>
        <tr>
          <td>包车服务</td>
          <td>天津市滨江道</td>
          <td>天津滨海国际机场</td>
          <td>2017-01-01 10:00</td>
          <td>&yen100</td>
          <td>成功</td>
        </tr>
        <tr>
          <td>包车服务</td>
          <td>天津市滨江道</td>
          <td>天津滨海国际机场</td>
          <td>2017-01-01 10:00</td>
          <td>&yen100</td>
          <td>成功</td>
        </tr>
        <tr>
          <td>包车服务</td>
          <td>天津市滨江道</td>
          <td>天津滨海国际机场</td>
          <td>2017-01-01 10:00</td>
          <td>&yen100</td>
          <td>成功</td>
        </tr>
        <tr>
          <td>包车服务</td>
          <td>天津市滨江道</td>
          <td>天津滨海国际机场</td>
          <td>2017-01-01 10:00</td>
          <td>&yen100</td>
          <td>成功</td>
        </tr>
        <tr>
          <td>包车服务</td>
          <td>天津市滨江道</td>
          <td>天津滨海国际机场</td>
          <td>2017-01-01 10:00</td>
          <td>&yen100</td>
          <td>成功</td>
        </tr>
      </table>
      <nav class="page-navigation" aria-label="Page navigation">
        <ul class="pagination">
          <li>
            <a href="#" aria-label="Previous">
              <span aria-hidden="true">&laquo;</span>
            </a>
          </li>
          <li><a href="#">1</a></li>
          <li><a href="#">2</a></li>
          <li><a href="#">3</a></li>
          <li><a href="#">4</a></li>
          <li><a href="#">5</a></li>
          <li>
            <a href="#" aria-label="Next">
              <span aria-hidden="true">&raquo;</span>
            </a>
          </li>
        </ul>
      </nav>
    </div>
  </div> <!-- /container -->
</div>

<%@include file="include/footer.jsp"%>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="static/js/index/ie10-viewport-bug-workaround.js"></script>
</body>
