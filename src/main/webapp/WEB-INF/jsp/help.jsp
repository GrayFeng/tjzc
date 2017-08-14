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
  <title>联系我们</title>
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
        <h5>a.在哪里叫车</h5>
        1.自己叫车,请安装APP或用手机登陆<br>
        2.为他人叫车,登陆网页版：网站链接
      </p>
      <p>
        <h5>b、如何叫车</h5>
        1) 登陆网站或APP<br>
        选择您所乘坐的车型，输入您的目的地,确认呼叫用车
      </p>
      <p>
        <h5>c、支付方式和报销</h5>
        您呼叫订单符合您的用车权限，则行程结束的支付页面，会提示您使用“企业支付”，由您的企业账户为您支付相应的订单<br>
        如企业余额不足，将提示个人垫付，通过提交企业报销在申请<br>
        如果未提示，请联系您的客服为您开通使用权限
      </p>
      <p>
      <h5>e、如何申请发票</h5>
        1） 需要提供哪些材料<br>
        贵司如需开取增值税普通发票，请提供以下内容：<br>
        1、开票信息：发票抬头（须同签约公司名称一致）、开票金额（须满一千元及以上）<br>
        2、资质文件：签约公司的营业执照和组织机构代码证二选一，上述文件，均需提供电子扫描件（盖有公章的复印件）<br>
        贵司如需开取增值税专用发票，请提供以下内容：<br>
        1、开票信息：发票抬头（须同签约公司名称一致）、纳税人识别号、公司注册地、公司电话、开户行名称（精确到支行）、开户行帐号、开票金额（须满一千元及以上）<br>
        2、资质文件：签约公司的营业执照和组织机构代码证二选一，税务登记证、一般纳税人证明，上述文件，均需提供电子扫描件（盖有公章的复印件）<br>
        2） 申请流程<br>
        请您先登陆滴滴企业版网页版，登陆之后，点击财务—发票管理正常申请发票，发票类型分为：增值税普通发票和增值税专用发票两种，按照网页提示将信息以及资质上传提交申请即可。邮寄地区暂不支持港澳台。<br>
        3） 完成申请
      </p>
      <p>
        <h5>f、注意</h5>
        乘车中遇到问题如何处理<br>
        遇到任何问题如物品遗失等，请联系022-23556705或23556703<br>
        2）如系统出现问题或不懂如何使用，请联系022-23556705或23556703
      </p>
      <p>
        <h5>g、提交订单</h5>
        1.注册/登录→2.选择时间/地点/车型→3.确认相应价格→ 4.提交订单
      </p>
      <p>
        <h5>h、订单查询、信息修改两项</h5>
        因公司后天原因目前只支持人工电话查看信息和信息修改，给您带来诸多不变还请谅解，我们会尽快完成自主修改信息流程，谢谢！
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
