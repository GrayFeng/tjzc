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
  <title>联系我们</title>
</head>
<body>

<%@include file="include/nav.jsp" %>
<div class="my-center-box">
  <div class="container">
    <div class="my-center-menu">
      <div class="list-group">
        <a href="<%=request.getContextPath()%>/aboutus.do" class="list-group-item">
          企业简介
        </a>
        <a href="<%=request.getContextPath()%>/contactus.do" class="list-group-item active">联系我们</a>
        <a href="<%=request.getContextPath()%>/help.do" class="list-group-item">帮助中心</a>
      </div>
    </div>
    <div class="my-center-content">
      <p>服务热线：022-23556703</p>
      <p>在线客服：QQ2963007610</p>
      <p>公司传真：022-23347817</p>
      <p>渠道合作：022-23556705</p>
      <p>公司地址：天津市南开区复康路八里台中天大厦A座13层</p>
      <p>公众邮箱：daxingdaodingche@163.com</p>
      </div>
  </div> <!-- /container -->
</div>

<%@include file="include/footer.jsp"%>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="<%=request.getContextPath()%>/static/js/index/ie10-viewport-bug-workaround.js"></script>
<script src="<%=request.getContextPath()%>/static/js/bootstrap-datetimepicker.min.js"></script>
<script src="<%=request.getContextPath()%>/static/js/bootstrap-datetimepicker.zh-CN.js"></script>
</body>
