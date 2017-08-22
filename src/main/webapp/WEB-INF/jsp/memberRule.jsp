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
  <title>用户协议</title>
</head>
<body>

<%@include file="include/nav.jsp" %>
<div class="my-center-box">
  <div class="container">
    <h3 style="text-align: center">大行道会员注册协议</h3>
    <p>
      在您完成大行道用户注册之前，建议您仔细阅读本协议再进行注册。本协议在您接受注册时生效，将成为您和大行道之间具有法律意义的文件，您和大行道将同时受到本协议条款的约束。大行道有权根据需要不时地制订、修改本协议及各类规则，并以在本应用上公示的方式进行公告，不再单独通知您。变更后的协议和规则一经在本应用上发布后，立即自动生效。如您不同意相关变更，请停止使用大行道服务。如您继续使用大行道服务，即表示您接受经修订的协议。
      <br><br><b>第一条 定义  </b><br><br>
      “大行道”是指天津大行道租车信息咨询有限公司创建的用于提供汽车租赁信息服务的互联网站，包括大行道网络域名为www.daxingdaxinxi.com 的网站服务。 “用车信息服务”是指大行道利用电脑、服务器、互联网、电话等信息通讯设备，为注册用户快速寻找符合要求的待租汽车。大行道汽车租赁公司提供有合法资质的车辆和技术服务双达标的驾驶员为客户进行服务，且该等服务遵从租车协议的约定。 “会员”是指按照大行道的要求完成注册的大行道用户。用户可以通过电话注册和网上注册成为大行道会员，享受大行道为会员提供的服务。 
      <br><br><b>  第二条 会员享受的服务</b>  <br><br>
      会员可以享受如下服务：<br>
      (1) 在完成预约等相关程序并接受相关协议的基础上接受大行道提供的用车信息服务；<br>
       (2) 拥有会员信息管理系统，长期有效地保存在大行道网站数据库； <br>
       (3) 随时查询历史订车记录；<br>
      (4) 订车同时获得积分； <br>
       (5) 享受最新订车信息及优惠政策；<br>
       (6) “大行道”根据互联网站规划随时增添的其它服务。 <br>
      <br><b>第三条 会员注册</b><br><br>
      用户根据“大行道”会员注册的要求填写真实会员信息，并表示接受本协议后方可申请成为会员。 <br>
      申请成为“大行道”会员的具体流程如下： <br>
       第一步：点击“账户”栏中的“注册新用户”；<br>
       第二步：填写注册信息；<br>
       第三步：点击“同意服务协议并注册”。<br>
      <br> <b>第四条 会员的ID及密码的保管</b><br><br>
      会员的ID和密码由会员自行保管。禁止会员将自己的ID及密码交付第三人使用，若第三者凭正确的用户ID密码进行网络活动（网络预订等），将被大行道视为该会员自身行为，该行为引起的一切法律后果由会员承担。
      <br><br><b>第五条 会员的义务</b>  <br><br>
      会员不得从事以下行为，若发生下列行为，则会员应承担相应的法律责任。大行道有权限制或取消其会员权限：<br>
       (1) 申请或者变更会员信息时提供虚假信息；<br>
       (2) 盗用他人信息；<br>
       (3) 利用任何方式方法危害“大行道”网站系统的安全；<br>
       (4) 利用大行道损害任何第三人的合法权益。<br>
       (5) 在大行道网站上复制、发布任何形式的虚假信息，或复制、发布含有下列内容的信息： <br>
       &nbsp;&nbsp;&nbsp;&nbsp;a. 危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一；<br>
      &nbsp;&nbsp;&nbsp;&nbsp; b. 损害国家荣誉和利益；<br>
       &nbsp;&nbsp;&nbsp;&nbsp;c. 煽动民族仇恨、民族歧视，破坏民族团结；<br>
      &nbsp;&nbsp;&nbsp;&nbsp; d. 破坏国家宗教政策，宣扬邪教和封建迷信；<br>
       &nbsp;&nbsp;&nbsp;&nbsp;e. 散布谣言，扰乱社会秩序，破坏社会稳定；<br>
      &nbsp;&nbsp;&nbsp;&nbsp; f. 散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪；<br>
       &nbsp;&nbsp;&nbsp;&nbsp;g. 含有法律、行政法规禁止的其他内容。  <br>
      <br><b>第六条 大行道的义务</b><br><br>
      大行道保证遵从其在大行道站上公布的所有服务承诺，努力创建高效便捷的汽车租赁服务。 <br>
      在会员完整履行租车等程序后，在相关协议的框架下，我公司会为会员提供用车信息服务。<br>
      大行道为保障会员安全地使用其提供的网络服务，将建立保护会员信息（包括信用信息）的安全系统并定期进行维护。 <br>
      <br><b>  第七条 通知的发送</b><br><br>
      大行道通过会员注册时指定的邮箱通知栏向会员发送通知。大行道向多数会员发送通知时，可以在网站公告栏上公布该通知，该种通知模式与向会员发送个别通知具有同样的法律效力。 <br>
      用户完成网上注册，即表明您完全同意并自愿接大行道到向您发送的信息，如您不愿意接收该信息，可按信息中的指导退订。<br>
      <br><b>  第八条 隐私权政策  </b><br><br>
      1、本协议所指的“隐私”包括《电信和互联网用户个人信息保护规定》第4条规定的用户个人信息的内容以及未来不时制定或修订的法律法规中明确规定的隐私应包括的内容。 <br>
      2、本应用不对外公开或向第三方提供单个用户的注册资料及用户在使用网络服务时存储在本应用的非公开内容，但下列情况除外： <br>
       &nbsp;&nbsp;&nbsp;&nbsp;(1)事先获得用户的明确授权；<br>
      &nbsp;&nbsp;&nbsp;&nbsp; (2)根据有关的法律法规要求；<br>
       &nbsp;&nbsp;&nbsp;&nbsp;(3)按照相关政府主管部门的要求；<br>
       &nbsp;&nbsp;&nbsp;&nbsp;(4)为维护社会公众的利益。<br>
       3、本应用可能会与第三方合作向用户提供相关的网络服务，在此情况下，如该第三方同意承担与本应用同等的保护用户隐私的责任，则本应用有权将用户的注册资料等提供给该第三方。<br>
       4、在不透露单个用户隐私资料的前提下，大行道租车公司有权对整个用户数据库进行分析并对用户数据库进行商业上的利用。为进一步对本软件的功能和服务进行优化，我们可能通过本软件收集用户某些数据。这些收集的目的仅限于提高软件的功能和服务，均不指向任何特定用户。且本公司承诺不会公开或用于其他目的，这些数据将仅被用于提高软件的质量、改进软件性能，同时为用户提供更有价值的服务。 <br>
         <br><br>天津大行道租车信息咨询有限公司<br>
       2017年8月
    </p>
  </div>
</div>

<%@include file="include/footer.jsp"%>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="<%=request.getContextPath()%>/static/js/index/ie10-viewport-bug-workaround.js"></script>
<script src="<%=request.getContextPath()%>/static/js/bootstrap-datetimepicker.min.js"></script>
<script src="<%=request.getContextPath()%>/static/js/bootstrap-datetimepicker.zh-CN.js"></script>
</body>
