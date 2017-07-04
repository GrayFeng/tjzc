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
  <title>登陆</title>
  <style type="text/css">
    .login-box{
      height: 500px;
      width: 100%;
      background-color: #ccc;
      margin-top: 55px;
    }
    .form-signin{
      width: 400px;
      display: block;
      position: absolute;
      right: 50px;
      top: 130px;
      background-color: #fff;
      height: 350px;
      padding: 15px 30px 15px 30px;
    }
    .form-signin .form-control{
      margin-bottom: 20px;
      height: 45px;
    }
    .form-signin button{
      border-radius: 0;
    }
    .form-signin .checkbox {
      margin-top: 20px;
    }
  </style>
</head>
<body>
<div class="navbar-wrapper">
  <div class="container">
    <nav class="navbar navbar-default navbar-static-top">
      <div class="container">
        <div class="navbar-header">
          <a class="navbar-brand" href="#">Project name</a>
        </div>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#">Link</a></li>
            <li><a href="#">Link</a></li>
            <li><a href="#">Link</a></li>
          </ul>
        </div>
    </nav>
  </div>
</div>

<div class="container login-box">

  <form class="form-signin">
    <h2 class="form-signin-heading">Please sign in</h2>
    <label for="inputEmail" class="sr-only">Email address</label>
    <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
    <label for="inputPassword" class="sr-only">Password</label>
    <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
    <div class="checkbox">
      <label>
        <input type="checkbox" value="remember-me"> Remember me
      </label>
    </div>
    <button class="btn btn-lg btn-success btn-block" type="submit">Sign in</button>
  </form>

</div> <!-- /container -->

<%@include file="include/footer.jsp"%>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="static/js/index/ie10-viewport-bug-workaround.js"></script>
</body>
