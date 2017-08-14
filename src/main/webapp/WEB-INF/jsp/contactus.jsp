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
      <p>
        <h5>1.用车须知</h5>
        半日租为4小时用车，所限公里数为50公里，整日租为何小时用车，所限公里为100公里，区域只限于市内六区，如超出范围，其所用行程的费用另行计算；<br>
        如用车时间超出规定时间和公里数，按超小时计算和超公里计算，详细超时超公里费用可咨询客服
      </p>
      <p>
        <h5>2.修改订单、取消订单</h5>
        目前只支持线下修改和取消，为了避免延误用车行程请随时拨打电话联系客服，及时修改最新的用车时间及行程安排。
      </p>
      <p>
        <h5>3.联系我们</h5>
        a.拨打022-23556705或23556703转接客服专员<br>
        b.发送邮件至daxingdaodingche@163.com<br>
        备注：如行程有变用车人必须第一时间联系客服，如果没有及时通知，延误了行程其后果用车人自行承担。
      </p>
      </div>
  </div> <!-- /container -->
</div>

<%@include file="include/footer.jsp"%>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="<%=request.getContextPath()%>/static/js/index/ie10-viewport-bug-workaround.js"></script>
<script src="<%=request.getContextPath()%>/static/js/bootstrap-datetimepicker.min.js"></script>
<script src="<%=request.getContextPath()%>/static/js/bootstrap-datetimepicker.zh-CN.js"></script>
</body>
