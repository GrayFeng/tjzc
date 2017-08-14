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
    <title>签证</title>
</head>
<body>

<%@include file="include/nav.jsp" %>
<!-- Carousel
================================================== -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img src="<%=request.getContextPath()%>/static/image/visa/visa-banner-01.jpg">
        </div>
    </div>
</div>
<!-- /.carousel -->
<div class="container marketing">

    <!-- START THE FEATURETTES -->

    <h3>热门国家</h3>

    <div class="row visa-hot-country">


    </div>

</div>
<!-- /.container -->

<%@include file="include/footer.jsp" %>
<script type="text/javascript">
    dxd.ajax({
        url: contextPath + '/api/tours/getPicList.do',
        data: {
            type:4
        },
        success: function(data){
            if(data && data.status == "200"
                    && data.re
                    && data.re.length > 0){
                $.each(data.re,function(i,obj){
                    var html = $('.visa-hot-country').html();
                        html += '<div class="col-xs-3 col-md-3">';
                        html+='<a href="#" class="thumbnail">';
                        html+='<img alt="100%x180" src="'+obj.url+'"/>';
                        html+='</a><div class="caption"><h4>'+obj.name+'</h4></div></div>';
                    console.info(html)
                    $('.visa-hot-country').html(html);
                });
            }
        }
    });
</script>

</body>
</html>
