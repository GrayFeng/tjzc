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
  <link href="static/css/login.css" rel="stylesheet">
  <title>登陆</title>
</head>
<body>

<%@include file="include/nav.jsp" %>

<div class="container login-box">
  <div class="login-banner">
      <img src="<%=request.getContextPath()%>/static/image/login1.jpg">
  </div>
  <div class="form-signin">
    <div class="login-tab-box">
      <h2 class="form-signin-heading active person">个人</h2>
      <h2 class="form-signin-heading company">企业</h2>
    </div>
    <div class="login-content-box">
      <div class="input-group  tel-input-group">
        <span class="input-group-addon" id="basic-addon1">账号:</span>
        <input type="tel" id="inputTel" class="form-control" placeholder="手机号" aria-describedby="basic-addon1" required autofocus>
      </div>
      <div class="input-group  email-input-group" style="display: none;">
        <span class="input-group-addon" id="basic-addon2">邮箱:</span>
        <input type="email" id="inputEmail" class="form-control" placeholder="电子邮箱" aria-describedby="basic-addon2" required autofocus>
      </div>
      <div class="input-group  password-input-group">
        <span class="input-group-addon" id="basic-addon3">密码:</span>
        <input type="password" id="inputPassword" class="form-control" placeholder="密码" aria-describedby="basic-addon3" required>
      </div>


      <!--<div class="checkbox">
        <label>
          <input type="checkbox" value="remember-me"> 记住我
        </label>
      </div>
      -->
      <button class="btn btn-lg btn-success btn-block" type="submit" id="loginBtn">登录</button>
    </div>
  </div>

</div> <!-- /container -->

<%@include file="include/footer.jsp"%>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="static/js/index/ie10-viewport-bug-workaround.js"></script>
<script src="static/js/login.js"></script>
</body>
