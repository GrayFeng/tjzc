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
    <link href="<%=request.getContextPath()%>/static/css/tours.css" rel="stylesheet">
    <title>旅游</title>
</head>
<body>

<%@include file="include/nav.jsp" %>
<!-- /.carousel -->

<c:if test="${domesticList != null}">
    <div name="domestic" class="container tours-domestic-box">
        <!-- START THE FEATURETTES -->
        <h3>国内游</h3>
        <div class="row tours-domestic">
            <div class="col-xs-12 col-md-12 tours-domestic-list">
                <c:forEach items="${domesticList}" var="domestic">
                    <div class="col-xs-3 col-md-3">
                        <a href="#" class="thumbnail">
                            <img alt="100%x180" src="${domestic.url}"/>
                        </a>
                        <div class="caption">
                            <p>${domestic.name}</p>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</c:if>

<c:if test="${abroadList != null}">
    <div name="abroad" id="abroad" class="container tours-abroad-box">
        <!-- START THE FEATURETTES -->
        <h3>出境游</h3>
        <div class="row tours-abroad">
            <div class="col-xs-12 col-md-12 tours-abroad-list">
                <c:forEach items="${abroadList}" var="abroad">
                    <div class="col-xs-3 col-md-3">
                        <a href="#" class="thumbnail">
                            <img alt="100%x180" src="${abroad.url}"/>
                        </a>
                        <div class="caption">
                            <p>${abroad.name}</p>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</c:if>

<c:if test="${businessList != null}">
    <div name="business" id="business" class="container tours-business-box">
        <!-- START THE FEATURETTES -->
        <h3>商务游</h3>
        <div class="row tours-business">
            <div class="col-xs-12 col-md-12 tours-domestic-list">
                <c:forEach items="${businessList}" var="business">
                    <div class="col-xs-3 col-md-3">
                        <a href="#" class="thumbnail">
                            <img alt="100%x180" src="${business.url}"/>
                        </a>
                        <div class="caption">
                            <p>${business.name}</p>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</c:if>
<!-- /.container -->

<%@include file="include/footer.jsp" %>

</body>
</html>
