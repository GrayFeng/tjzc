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

  <div class="form-signin">
    <div class="login-tab-box">
      <h2 class="form-signin-heading active person">个人</h2>
      <h2 class="form-signin-heading company">企业</h2>
    </div>
    <div class="login-content-box">
      <input type="email" id="inputEmail" class="form-control display-none" placeholder="电子邮箱" required autofocus>
      <input type="tel" id="inputTel" class="form-control" placeholder="手机号" required autofocus>
      <input type="password" id="inputPassword" class="form-control" placeholder="密码" required>
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
