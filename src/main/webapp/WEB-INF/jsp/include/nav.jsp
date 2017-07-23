<%--
  Created by IntelliJ IDEA.
  User: Gray
  Date: 2017/7/4
  Time: 14:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="navbar-wrapper">
        <nav class="navbar navbar-default navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <a class="navbar-brand" href="<%=request.getContextPath()%>/">
                        <img src="<%=request.getContextPath()%>/static/image/logo.png" width="260px" height="50px">
                    </a>
                </div>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="<%=request.getContextPath()%>/login.do">登录</a></li>
                    <li><a href="#">注册</a></li>
                    <li><a href="<%=request.getContextPath()%>/my/index.do">我的中心</a></li>
                    <li class="nav-tel-icon"><a href="#"><i></i></a></li>
                    <li class="nav-tel-number"><a href="#">400-000-0000</a></li>
                </ul>
            </div>
            <div class="navbar-box">
            <div class="container navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="<%=request.getContextPath()%>/">首页</a></li>
                        <li><a href="<%=request.getContextPath()%>/rent/index.do">租车服务</a></li>
                        <li><a href="<%=request.getContextPath()%>/tours/index.do">旅游服务</a></li>
                        <li><a href="<%=request.getContextPath()%>/visa/index.do">签证服务</a></li>
                        <li><a href="#contact">房车服务</a></li>
                        <li><a href="#contact">企业服务</a></li>
                        <!--
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                               aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li role="separator" class="divider"></li>
                                <li class="dropdown-header">Nav header</li>
                                <li><a href="#">Separated link</a></li>
                                <li><a href="#">One more separated link</a></li>
                            </ul>
                        </li>-->
                    </ul>
                </div>
                </div>
        </nav>
</div>