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
                    <li><a href="<%=request.getContextPath()%>/reg.do">注册</a></li>
                    <li><a href="<%=request.getContextPath()%>/my/index.do">我的中心</a></li>
                    <li class="nav-tel-icon"><a href="#"><i></i></a></li>
                    <li class="nav-tel-number"><a href="#">400-000-0000</a></li>
                </ul>
            </div>
            <div class="navbar-box">
            <div class="container navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="<%=request.getContextPath()%>/">首页</a></li>
                        <li class="dropdown">
                            <a href="<%=request.getContextPath()%>/rent/index.do" class="dropdown-toggle" data-toggle="dropdown" role="button"
                               aria-haspopup="true" aria-expanded="false">我要用车</a>
                            <ul class="dropdown-menu">
                                <li><a href="<%=request.getContextPath()%>/rent/index.do">日租包车</a></li>
                                <li><a href="<%=request.getContextPath()%>/rent/index.do">机场接送</a></li>
                                <li><a href="<%=request.getContextPath()%>/rent/index.do">车站接送</a></li>
                                <li><a href="<%=request.getContextPath()%>/rent/index.do">短租长租</a></li>
                                <li><a href="<%=request.getContextPath()%>/rent/index.do">企业包车</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="<%=request.getContextPath()%>/tours/index.do" class="dropdown-toggle" data-toggle="dropdown" role="button"
                               aria-haspopup="true" aria-expanded="false">定制旅行</a>
                            <ul class="dropdown-menu">
                                <li><a href="<%=request.getContextPath()%>/tours/index.do">国内旅游</a></li>
                                <li><a href="<%=request.getContextPath()%>/tours/index.do">出境旅游</a></li>
                                <li><a href="<%=request.getContextPath()%>/tours/index.do">商务旅游</a></li>
                                <li><a href="<%=request.getContextPath()%>/visa/index.do">签证办理</a></li>
                            </ul>
                        </li>
                        <li><a href="#contact">房车出游</a></li>
                        <li><a href="#contact">企业服务</a></li>
                        <li class="dropdown">
                            <a href="<%=request.getContextPath()%>/tours/index.do" class="dropdown-toggle" data-toggle="dropdown" role="button"
                               aria-haspopup="true" aria-expanded="false">关于我们</a>
                            <ul class="dropdown-menu">
                                <li><a href="<%=request.getContextPath()%>/tours/index.do">联系我们</a></li>
                                <li><a href="<%=request.getContextPath()%>/tours/index.do">帮助中心</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
                </div>
        </nav>
</div>