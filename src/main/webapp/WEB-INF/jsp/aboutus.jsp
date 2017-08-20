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
  <link href="<%=request.getContextPath()%>/static/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
  <link href="<%=request.getContextPath()%>/static/css/my.css" rel="stylesheet">
  <title>企业简介</title>
</head>
<body>

<%@include file="include/nav.jsp" %>
<div class="my-center-box">
  <div class="container">
    <div class="my-center-menu">
      <div class="list-group">
        <a href="<%=request.getContextPath()%>/aboutus.do" class="list-group-item active">
          企业简介
        </a>
        <a href="<%=request.getContextPath()%>/contactus.do" class="list-group-item">联系我们</a>
        <a href="<%=request.getContextPath()%>/help.do" class="list-group-item">帮助中心</a>
      </div>
    </div>
    <div class="my-center-content">
      <p style="text-indent:25px">天津大行道出租车信息咨询服务有限公司于2004年在天津注册，注册资本100万（人民币），公司经营范围是：代理客户出租车订车服务；汽车租赁；代理客户订房、订车服务；汽车维修咨询服务；公路旅客运输；普通货物道路运输；商务信息咨询；物业管理；会议服务；展览展示服务；因私出入境中介服务。成立以来在京津冀及环渤海等地区已有超过百家知名中外企业及五星级酒店与我们建立了长期合作关系，并得到了中外众多宾客和企业一致首肯和赞誉。</p>
      <p style="text-indent:25px">公司经过多年从事涉外星级酒店，积累了丰富经验，并于2008年9月和2010年9月两次成功承接了天津达沃斯会议所有来宾的商务用车服务，得到了承办方领导和酒店领导的一致好评和认可。双方领导特别指出我公司的车辆和驾驶员服务是以往合作企业中管理最完善的。公司今年已承接全运会的用车服务，各大网络平台及专车与我司达成了战略性合作。</p>
      <p style="text-indent:25px">公司现备有各类九成新的高中档商务车辆、大中型客车等多种车型，帕萨特、迈腾、凯美瑞或同等车型50辆左右、奥迪A6L车型20辆左右、别克GL8车型30辆左右，高端车型包括奔驰S系列、宝马、劳斯莱斯幻影、奔驰维雅诺等，大中型客车包括全顺16座、九龙16座、奔驰斯宾特19座、考斯特19座、考斯特23座、金龙、宇通35-55座；每一辆车均有三者50万—100万、座位（司机、乘客）60万—100万的高额车辆保险；公司在职正式管理人员及司机有100余位，高中档商务车辆100余辆，临时派遣人员达到60人以上。我们以“诚信品质，创新高效”为经营理念，“服务至上”为公司之本，让每位乘客体验到“优质非凡的五星级服务”。并且公司拥有一整套完善的车辆及驾驶员管理系统、完善的车辆保险方案和规范化、专业化的服务流程。</p>
      <p style="text-indent:25px">公司的目标：秉承诚信的经营理念，提供安全快捷优质的服务，换取每个合作伙伴的满意微笑！是我们的一贯宗旨</p>
      <p style="text-indent:25px">公司的服务理念：</p>
      <p style="text-indent:120px;font-weight: bold">安全：安全是服务的基础，是诚信的保障。</p>
      <p style="text-indent:120px;font-weight: bold">品质：为乘客提供五星级私人定制服务。</p>
      <p style="text-indent:120px;font-weight: bold">高效：标准化、统一化管理，提供快速便捷周到的服务。</p>
      <p style="text-indent:120px;font-weight: bold">舒适：体现在每一项服务细节，为每位乘客提供优质舒适非凡的乘车体验。</p>
    </div>
  </div> <!-- /container -->
</div>

<%@include file="include/footer.jsp"%>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="<%=request.getContextPath()%>/static/js/index/ie10-viewport-bug-workaround.js"></script>
<script src="<%=request.getContextPath()%>/static/js/bootstrap-datetimepicker.min.js"></script>
<script src="<%=request.getContextPath()%>/static/js/bootstrap-datetimepicker.zh-CN.js"></script>
</body>
