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
  <link href="<%=request.getContextPath()%>/static/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
  <link href="<%=request.getContextPath()%>/static/css/my.css" rel="stylesheet">
  <title>我的中心</title>
</head>
<body>

<%@include file="include/nav.jsp" %>
<div class="my-center-box">
  <div class="container">
    <div class="my-center-menu">
      <div class="list-group">
        <a href="#" class="list-group-item active">
          我的订单
        </a>
        <a href="#" class="list-group-item">我的信息</a>
        <a href="#" class="list-group-item">修改密码</a>
      </div>
    </div>
    <div class="my-center-content">
      <div class="search-box">
        <div class="search-form">
          <input type="email" id="startTime" class="form-control" placeholder="起始时间" required>
          <input type="email" id="endTime" class="form-control" placeholder="截止时间" required>
          <button id="searchBtn" class="btn btn-success btn-block" type="submit">查询</button>
        </div>
      </div>
      <div class="search-order-status">
        <ul id="statusUL" class="nav nav-pills">
          <li role="presentation"class="active" ><a href="javascript:void(0)" data-value="0">全部</a></li>
          <li role="presentation"><a href="javascript:void(0)" data-value="1">等待处理</a></li>
          <li role="presentation"><a href="javascript:void(0)" data-value="2">预约完成</a></li>
          <li role="presentation"><a href="javascript:void(0)" data-value="3">订单完成</a></li>
          <li role="presentation"><a href="javascript:void(0)" data-value="4">订单取消</a></li>
          <li role="presentation"><a href="javascript:void(0)" data-value="5">订单终结</a></li>
        </ul>
        </div>
      <table class="table table-bordered">
        <thead>
        <tr>
          <th width="15%">订单号码</th>
          <th>用车时间</th>
          <th>出发地点</th>
          <th>送达地点</th>
          <th width="10%">服务类型</th>
          <th width="10%">车型</th>
          <th width="10%">订单金额</th>
          <th width="10%">订单状态</th>
        </tr>
        </thead>
        <tbody id="dataList"></tbody>
      </table>
      <nav class="page-navigation" aria-label="Page navigation">
        <ul class="pagination">
        </ul>
      </nav>
    </div>
  </div> <!-- /container -->
</div>

<%@include file="include/footer.jsp"%>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="<%=request.getContextPath()%>/static/js/index/ie10-viewport-bug-workaround.js"></script>
<script src="<%=request.getContextPath()%>/static/js/bootstrap-datetimepicker.min.js"></script>
<script src="<%=request.getContextPath()%>/static/js/bootstrap-datetimepicker.zh-CN.js"></script>
<script src="<%=request.getContextPath()%>/static/js/my.js"></script>
</body>
