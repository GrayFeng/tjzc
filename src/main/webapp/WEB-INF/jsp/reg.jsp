<%--
  Created by IntelliJ IDEA.
  User: GrayF
  Date: 2017/7/4
  Time: 上午1:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <%@include file="include/header.jsp" %>
    <link href="<%=request.getContextPath()%>/static/css/reg.css" rel="stylesheet">
    <title>首页</title>
</head>
<body>

<%@include file="include/nav.jsp" %>

<div class="container reg-box">
    <ul class="nav nav-tabs" role="tablist">
        <li role="presentation" class="active">
            <a href="#person" aria-controls="person" role="tab" data-toggle="tab">个人注册</a>
        </li>
        <li role="presentation">
            <a href="#company" aria-controls="company" role="tab" data-toggle="tab">企业注册</a>
        </li>
    </ul>
    <div class="tab-content">
        <div role="tabpanel" class="tab-pane active" id="person">
            <form class="form-horizontal">
                <div class="form-group">
                    <label for="inputTel" class="col-sm-2 control-label">手机号:</label>

                    <div class="col-sm-10">
                        <input type="tel" class="form-control" id="inputTel" placeholder="请输入手机号">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputName" class="col-sm-2 control-label">姓名:</label>

                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="inputName" placeholder="请输入姓名">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputIdNum" class="col-sm-2 control-label">身份证号码:</label>

                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="inputIdNum" placeholder="请输入身份证号码">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="button" class="btn btn-lg btn-success">注册</button>
                    </div>
                </div>
            </form>
        </div>

        <div role="tabpanel" class="tab-pane" id="company">
            <form class="form-horizontal">
                <div class="form-group">
                    <label for="inputEmail" class="col-sm-2 control-label">电子邮箱:</label>

                    <div class="col-sm-10">
                        <input type="tel" class="form-control" id="inputEmail" placeholder="请输入电子邮箱">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputCompanyName" class="col-sm-2 control-label">企业全称:</label>

                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="inputCompanyName" placeholder="请输入企业全称">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputSH" class="col-sm-2 control-label">税号:</label>

                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="inputSH" placeholder="请输入税号">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputLXR" class="col-sm-2 control-label">联系人:</label>

                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="inputLXR" placeholder="请输入联系人">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputLXDH" class="col-sm-2 control-label">联系电话:</label>

                 <div class="col-sm-10">
                        <input type="tel" class="form-control" id="inputLXDH" placeholder="请输入联系电话">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="button" class="btn btn-lg btn-success">注册</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<%@include file="include/footer.jsp" %>
<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
<script src="../../dist/js/bootstrap.min.js"></script>-->
<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
<script src="static/js/index/holder.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="static/js/index/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
