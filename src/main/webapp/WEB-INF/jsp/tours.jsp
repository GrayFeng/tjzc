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
<div class="container tours-abroad-box">
    <!-- START THE FEATURETTES -->
    <h3>出境游</h3>
    <div class="row tours-abroad">
        <div class="col-xs-3 col-md-3 tours-abroad-header">
            <a href="#" class="thumbnail">
                <img src="<%=request.getContextPath()%>/static/image/tours/cg-header.jpg"/>
            </a>
        </div>
        <div class="col-xs-9 col-md-9 tours-abroad-list">
            <div class="col-xs-3 col-md-3">
                <a href="#" class="thumbnail">
                    <img alt="100%x180" src="<%=request.getContextPath()%>/static/image/tours/abroad-01.jpg"/>
                </a>
                <div class="caption">
                    <p>德国一地魅力全景12日游【一价全含/20人小团组/汉莎四星】</p>
                </div>
            </div>
            <div class="col-xs-3 col-md-3">
                <a href="#" class="thumbnail">
                    <img alt="100%x180" src="<%=request.getContextPath()%>/static/image/tours/abroad-02.jpg"/>
                </a>
                <div class="caption">
                    <p>克罗地亚+斯洛文尼亚+波捷奥匈斯14日游</p>
                </div>
            </div>
            <div class="col-xs-3 col-md-3">
                <a href="#" class="thumbnail">
                    <img alt="100%x180" src="<%=request.getContextPath()%>/static/image/tours/abroad-03.jpg"/>
                </a>
                <div class="caption">
                    <p>美国东西+大瀑布11日【七大名城/最IN汉堡/川普大厦/费城】</p>
                </div>
            </div>
            <div class="col-xs-3 col-md-3">
                <a href="#" class="thumbnail">
                    <img alt="100%x180" src="<%=request.getContextPath()%>/static/image/tours/abroad-04.jpg"/>
                </a>
                <div class="caption">
                    <p>乐趣日本双古都双温泉乐园游7日</p>
                </div>
            </div>
            <div class="col-xs-3 col-md-3">
                <a href="#" class="thumbnail">
                    <img alt="100%x180" src="<%=request.getContextPath()%>/static/image/tours/abroad-05.jpg"/>
                </a>
                <div class="caption">
                    <p>初见东瀛/大阪/东京6日【日本东京一日游,榻榻米,温泉】 </p>
                </div>
            </div>
            <div class="col-xs-3 col-md-3">
                <a href="#" class="thumbnail">
                    <img alt="100%x180" src="<%=request.getContextPath()%>/static/image/tours/abroad-06.jpg"/>
                </a>
                <div class="caption">
                    <p>台湾臻选环岛8日游【国航午去晚回/2晚五花/阳明山】</p>
                </div>
            </div>
            <div class="col-xs-3 col-md-3">
                <a href="#" class="thumbnail">
                    <img alt="100%x180" src="<%=request.getContextPath()%>/static/image/tours/abroad-07.jpg"/>
                </a>
                <div class="caption">
                   <p>巴厘岛蓝梦岛7日游【升级独栋别墅+海边五星/纯玩/SPA】</p>
                </div>
            </div>
            <div class="col-xs-3 col-md-3">
                <a href="#" class="thumbnail">
                    <img alt="100%x180" src="<%=request.getContextPath()%>/static/image/tours/abroad-08.jpg"/>
                </a>
                <div class="caption">
                    <p>经典三国泰新马10日游【正班直飞/升级4-5星/全程无自费】</p>
                </div>
            </div>
        </div>
    </div>

</div>



<div class="container tours-domestic-box">
    <!-- START THE FEATURETTES -->
    <h3>国内游</h3>
    <div class="row tours-domestic">
        <div class="col-xs-3 col-md-3 tours-domestic-header">
            <a href="#" class="thumbnail">
                <img src="<%=request.getContextPath()%>/static/image/tours/gn-header.jpg"/>
            </a>
        </div>
        <div class="col-xs-9 col-md-9 tours-domestic-list">
            <div class="col-xs-3 col-md-3">
                <a href="#" class="thumbnail">
                    <img alt="100%x180" src="<%=request.getContextPath()%>/static/image/tours/domestic-01.jpg"/>
                </a>
                <div class="caption">
                    <p>【三亚一地】5日【全程海景房/经典景点全含】</p>
                </div>
            </div>
            <div class="col-xs-3 col-md-3">
                <a href="#" class="thumbnail">
                    <img alt="100%x180" src="<%=request.getContextPath()%>/static/image/tours/domestic-02.jpg"/>
                </a>
                <div class="caption">
                    <p>丽江泸沽湖5日游【玉龙雪山/泸沽湖环湖游/漫品泸沽湖】</p>
                </div>
            </div>
            <div class="col-xs-3 col-md-3">
                <a href="#" class="thumbnail">
                    <img alt="100%x180" src="<%=request.getContextPath()%>/static/image/tours/domestic-03.jpg"/>
                </a>
                <div class="caption">
                    <p>长白山西北坡镜泊湖软卧6日游</p>
                </div>
            </div>
            <div class="col-xs-3 col-md-3">
                <a href="#" class="thumbnail">
                    <img alt="100%x180" src="<%=request.getContextPath()%>/static/image/tours/domestic-04.jpg"/>
                </a>
                <div class="caption">
                    <p>武夷山厦门鼓浪屿土楼卧高飞6日</p>
                </div>
            </div>
            <div class="col-xs-3 col-md-3">
                <a href="#" class="thumbnail">
                    <img alt="100%x180" src="<%=request.getContextPath()%>/static/image/tours/domestic-05.jpg"/>
                </a>
                <div class="caption">
                    <p>南宁/德天跨国瀑布/通灵峡谷/桂林大漓江/阳朔双卧8日</p>
                </div>
            </div>
            <div class="col-xs-3 col-md-3">
                <a href="#" class="thumbnail">
                    <img alt="100%x180" src="<%=request.getContextPath()%>/static/image/tours/domestic-06.jpg"/>
                </a>
                <div class="caption">
                    <p>华东五市/宿西塘双高5日游【江南船奇/水乡乌镇】</p>
                </div>
            </div>
            <div class="col-xs-3 col-md-3">
                <a href="#" class="thumbnail">
                    <img alt="100%x180" src="<%=request.getContextPath()%>/static/image/tours/domestic-07.jpg"/>
                </a>
                <div class="caption">
                    <p>三亚一地双飞5日游【海景时光/海岛雨林/呀诺达观光车】</p>
                </div>
            </div>
            <div class="col-xs-3 col-md-3">
                <a href="#" class="thumbnail">
                    <img alt="100%x180" src="<%=request.getContextPath()%>/static/image/tours/domestic-08.jpg"/>
                </a>
                <div class="caption">
                    <p>云南昆明/西双版纳升级版6日游</p>
                </div>
            </div>
        </div>
    </div>

</div>
<!-- /.container -->

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

<script src="static/js/index/index.js"></script>

</body>
</html>
