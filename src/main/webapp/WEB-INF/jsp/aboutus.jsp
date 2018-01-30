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
      <p style="text-indent:25px">天津大行道出租车信息咨询服务有限公司成立于2004年。大行道出租车信息咨询有限公司总部设于天津。做为汽车租赁服务的提供商，大行道公司一直秉承着“安全诚信”的经营理念，为顾客打造“量身定制式”的服务。</p>
      <p style="text-indent:25px">公司多年服务于世界500强公司及涉外星级酒店，积累了丰富经验，并于2008年9月和2010年9月两次成功承接了天津达沃斯会议所有来宾的商务用车服务，得到了承办方领导和酒店领导的一致好评和认可。双方领导特别指出我司的车辆和司机服务是以往合作企业中管理最完善的。并且在京津冀及环渤海等地区已有超过百家知名中外企业及五星级酒店与我们建立了长期合作关系，并得到了众多中外宾客和企业的一致首肯和赞誉。</p>
      <p style="text-indent:25px">随着公司的不断发展壮大，首先感谢客户对我们一如既往的支持，我们将提供更加完善的服务，满足您多方位的需求，让我们成为您居家旅行、商务用车、大型会议用车、企业用车的最佳选择。我们主要车型有：帕萨特、迈腾、凯美瑞、奥迪A6L、别克GL8、奔驰、宝马、中大型通勤班车等80%全新车，百万保险，4S店专业维护与保养，解决了客户租车的后顾之忧。主要服务内容：点对点接送、接送机服务、长短期包车服务等。车辆齐全，配套完善。并且公司拥有一整套完善的车辆及驾驶员管理系统、完善的车辆保险方案和规范化、专业化的服务流程。</p>
      <p style="text-indent:25px">公司的目标：秉承“服务至上”“安全诚信”理念，以推动互联网绿色新能源出行为特色，提供安全快捷优质的服务，致力成为消费者首选的中国汽车租赁的放心品牌。</p>
      <!--
      <p style="text-indent:120px;font-weight: bold">安全：安全是服务的基础，是诚信的保障。</p>
      <p style="text-indent:120px;font-weight: bold">品质：为乘客提供五星级私人定制服务。</p>
      <p style="text-indent:120px;font-weight: bold">高效：标准化、统一化管理，提供快速便捷周到的服务。</p>
      <p style="text-indent:120px;font-weight: bold">舒适：体现在每一项服务细节，为每位乘客提供优质舒适非凡的乘车体验。</p>
    --></div>
  </div> <!-- /container -->
</div>

<%@include file="include/footer.jsp"%>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="<%=request.getContextPath()%>/static/js/index/ie10-viewport-bug-workaround.js"></script>
<script src="<%=request.getContextPath()%>/static/js/bootstrap-datetimepicker.min.js"></script>
<script src="<%=request.getContextPath()%>/static/js/bootstrap-datetimepicker.zh-CN.js"></script>
</body>
