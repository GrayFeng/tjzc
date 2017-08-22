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
  <title>帮助中心</title>
</head>
<body>

<%@include file="include/nav.jsp" %>
<div class="my-center-box">
  <div class="container">
    <div class="my-center-menu">
      <div class="list-group">
        <a href="<%=request.getContextPath()%>/aboutus.do" class="list-group-item">
          企业简介
        </a>
        <a href="<%=request.getContextPath()%>/contactus.do" class="list-group-item">联系我们</a>
        <a href="<%=request.getContextPath()%>/help.do" class="list-group-item active">帮助中心</a>
      </div>
    </div>
    <div class="my-center-content">
      <p>
        <h5>1.修该订单</h5>
      用户点击用车须知跳转在我的中心页面，有需要改动或变更的信息在我的中心里调整，如果自行无法更改的，需致电客服23556703更改。
      </p>
      <p>
        <h5>2.查询订单</h5>
      点击我的中心跳转到页面在对话框山输入起始时间和结束时间，系统会显示所差时段所有的用车行程。
      </p>
      <p>
        <h5>3.取消订单</h5>
      用户点击进去会跳转到一个页面，内容显示：因后台原因暂不支持自主取消，须致电客服022-23556703协助取消，给您带来诸多不便还请谅解，我们会尽快完善这一功能！
      </p>
      <p>
      <h5>4.常与问题</h5>
      4.1.如何预租车？（用户点开问题会显示一下答复）<br>
      答：1）通过www.daxigndaoxinxi.com网站进行预约<br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2）致电022-23556703电话预约<br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3）发送邮件到daxingdaodingche@163.com<br><br>
      4.2.请问租车有地域限制吗？<br>
      答：没有<br><br>
      4.3.“预约中”是否代表已经“预约成功”？<br>
      答：是的。<br><br>
      4.4我可以通过网站更改或取消吗？<br>
      答：非常抱歉，因后台原因暂不支持，须致电客服022-23556703辅助更改或取消，给您带来诸多不便还请谅解，谢谢！<br><br>
      4.5.如果租车过程中，车辆半路抛锚怎么办？<br>
      答：若果出现这种突发状况，请您及时客服联系，给您调配离您所在位置的最近车辆，以供使用。<br><br>
      4.6.长期租车会有优惠吗？<br>
      答：会的，详细时间和行程用多久，您可以致电客服给您核算出最优惠的价格。<br><br>
      4.7.我们租用的车辆是否保险齐全？<br>
      答：请您放心，公司的所有车辆保险齐全，而且我司会有专门的负责人负责所有车辆的保险以及定期去4S店做维修护理。<br><br>
      4.8.忘记密码和账户怎么办？<br>
      答：登陆www.daxingdaoxinxi.com进入登陆页面，点击首页的“忘记密码”，按提示填写验证信息后可找回密码。<br><br>
      4.9.如果账户被锁怎么办？<br>
      答：您的账户被锁，请及时致电客服，在完成相关的验证后解除所定。<br>
      </p>
    </div>
  </div>
  </div> <!-- /container -->
</div>

<%@include file="include/footer.jsp"%>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="<%=request.getContextPath()%>/static/js/index/ie10-viewport-bug-workaround.js"></script>
<script src="<%=request.getContextPath()%>/static/js/bootstrap-datetimepicker.min.js"></script>
<script src="<%=request.getContextPath()%>/static/js/bootstrap-datetimepicker.zh-CN.js"></script>
</body>
