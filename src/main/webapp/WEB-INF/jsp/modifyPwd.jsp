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
  <title>修改密码</title>
</head>
<body>

<%@include file="include/nav.jsp" %>
<div class="my-center-box">
  <div class="container">
    <div class="my-center-menu">
      <div class="list-group">
        <a href="<%=request.getContextPath()%>/my/index.do" class="list-group-item">
          我的订单
        </a>
        <a href="<%=request.getContextPath()%>/my/memberInfo.do" class="list-group-item">我的信息</a>
        <a href="<%=request.getContextPath()%>/my/modifyPwd.do" class="list-group-item active">修改密码</a>
        <a href="<%=request.getContextPath()%>/my/rentRule.do" class="list-group-item">服务协议</a>
      </div>
    </div>
    <div class="my-center-content">
      <div id="person">
        <form class="form-horizontal">
          <div class="form-group">
            <label for="inputOldPassword" class="col-sm-2 control-label">原密码:</label>

            <div class="col-sm-10">
              <input type="password" class="form-control" id="inputOldPassword" placeholder="请输入原密码">
            </div>
          </div>
          <div class="form-group">
            <label for="inputPassword2" class="col-sm-2 control-label">新密码:</label>

            <div class="col-sm-10">
              <input type="password" class="form-control" id="inputPassword2" placeholder="请输入新密码">
            </div>
          </div>
          <div class="form-group">
            <label for="inputPassword3" class="col-sm-2 control-label">确认密码:</label>

            <div class="col-sm-10">
              <input type="password" class="form-control" id="inputPassword3" placeholder="请输入确认密码">
            </div>
          </div>
            <div class="form-group">
              <div class="col-sm-offset-2 col-sm-10">
                <button id="updateBtn" type="button" class="btn btn-lg btn-success">保存</button>
              </div>
            </div>
        </form>
      </div>
    </div>
  </div>
  </div><!-- /container -->
<%@include file="include/footer.jsp"%>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="<%=request.getContextPath()%>/static/js/index/ie10-viewport-bug-workaround.js"></script>
<script src="<%=request.getContextPath()%>/static/js/bootstrap-datetimepicker.min.js"></script>
<script src="<%=request.getContextPath()%>/static/js/bootstrap-datetimepicker.zh-CN.js"></script>
<script src="<%=request.getContextPath()%>/static/js/my.js"></script>
<script type="text/javascript">
  $('#updateBtn').on('click',function(){
    var regInfo = {};
    regInfo.oldPassword=$('#inputOldPassword').val1();
    regInfo.newPassword=$('#inputPassword2').val1();
    regInfo.newPassword1=$('#inputPassword3').val1();
    if(!regInfo.oldPassword){
      dxd.alert('请输入原密码');
      return;
    }
    if(!regInfo.newPassword){
      dxd.alert('请输入新密码');
      return;
    }
    if(regInfo.newPassword != regInfo.newPassword1){
      dxd.alert('两次密码不一致');
      return;
    }
    dxd.ajax({
      url : contextPath + '/api/my/modifyPassword.do',
      data: regInfo,
      success:function(data){
        if(data && data.status == '200'){
          dxd.alert("修改成功");
        }else if(data && data.status == '910'){
          window.location.href=contextPath+"/login.do";
        }else{
          dxd.alert(data.msg);
        }
      }
    })
  });

</script>
</body>
