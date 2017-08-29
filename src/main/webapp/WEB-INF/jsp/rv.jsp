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
    <link href="<%=request.getContextPath()%>/static/css/visa.css" rel="stylesheet">
    <title>房车出游</title>
</head>
<body>

<%@include file="include/nav.jsp" %>
<!-- /.carousel -->
<div class="container marketing">

    <!-- START THE FEATURETTES -->

    <h3>房车生活</h3>

    <div class="row visa-hot-country">
        <c:forEach items="${rvList}" var="rv">
            <div class="col-xs-4 col-md-4">
                <a href="#" class="thumbnail">
                    <img alt="100%x180" src="${rv.url}"/>
                </a>
                <div class="caption">
                    <p>${rv.name}</p>
                </div>
            </div>
        </c:forEach>
    </div>

    <h3>房车之旅</h3>

    <div class="row visa-hot-country">
        <div class="col-xs-4 col-md-4">
            <a href="#" class="thumbnail">
                <img alt="100%x180" src="<%=request.getContextPath()%>/static/image/rv/hot-01.jpg"/>
            </a>
            <div class="caption">
                <h4>活动1</h4>
            </div>
        </div>
        <div class="col-xs-4 col-md-4">
            <a href="#" class="thumbnail">
                <img alt="100%x180" src="<%=request.getContextPath()%>/static/image/rv/hot-02.jpg"/>
            </a>
            <div class="caption">
                <h4>活动2</h4>
            </div>
        </div>
        <div class="col-xs-4 col-md-4">
            <a href="#" class="thumbnail">
                <img alt="100%x180" src="<%=request.getContextPath()%>/static/image/rv/hot-03.jpg"/>
            </a>
            <div class="caption">
                <h4>活动3</h4>
            </div>
        </div>
    </div>
</div>
<!-- /.container -->

<%@include file="include/footer.jsp" %>

</body>
</html>
