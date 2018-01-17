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
  <title>帮助中心</title>
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
        <a href="<%=request.getContextPath()%>/contactus.do" class="list-group-item">联系我们</a>
        <a href="<%=request.getContextPath()%>/help.do" class="list-group-item active">帮助中心</a>
      </div>
    </div>
    <div class="my-center-content">
      <p>
        <h5>问：如何预租车？</h5>
      答：1.通过www.daxingdaoxinxi.com网上预约订车<br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.致电022-23556703电话预约<br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.发送邮件到daxingdaodingche@163.com<br>
      </p>
      <p>
        <h5>问：如何修改订单</h5>
      答：点击用车须知我的中心页面进行更改。无法更改时，请致电客服022-23556703更改。
      </p>
      <p>
        <h5>问：如何查询订单</h5>
      答：点击我的中心输入起止时间，查询行程
      </p>
      <p>
      <h5>问：如何取消订单</h5>
      答：因后台原因，现在用户无法自行取消订单，请致电客服022-23556703协助取消，带来的不便敬请谅解。
      </p>
      <p>
      <h5>问：忘记密码怎么办？</h5>
      答：点击“忘记密码” ，按提示填写验证信息，找回密码。
      </p>
      <p>
      <h5>问：如果帐户被锁怎么办？</h5>
      答：请致电客服022-23556703，在完成相关的验证之后解除锁定。
      </p>
      <p>
      <h5>问：我们租用的车辆是否保险齐全？</h5>
      答：公司的所有车辆保险齐全，而且我司会有专人负责所有车辆的保险以及定期去4S店做维修护理。
      </p>
    </div>
  </div>
  </div> <!-- /container -->
</div>

<%@include file="include/footer.jsp"%>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="<%=request.getContextPath()%>/static/js/index/ie10-viewport-bug-workaround.js"></script>
<script src="<%=request.getContextPath()%>/static/js/bootstrap-datetimepicker.min.js"></script>
<script src="<%=request.getContextPath()%>/static/js/bootstrap-datetimepicker.zh-CN.js"></script>
</body>
