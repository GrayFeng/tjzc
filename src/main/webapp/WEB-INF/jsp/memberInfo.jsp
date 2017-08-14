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
  <title>我的信息</title>
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
        <a href="<%=request.getContextPath()%>/my/memberInfo.do" class="list-group-item active">我的信息</a>
        <a href="<%=request.getContextPath()%>/my/modifyPwd.do" class="list-group-item">修改密码</a>
      </div>
    </div>
    <div class="my-center-content">
      <div id="person">
        <form class="form-horizontal">
        <c:choose>
            <c:when test="${customer.type == 0}">
              <div class="form-group">
                <label for="inputTel" class="col-sm-2 control-label">手机号:</label>
                <div class="col-sm-10">
                  <input type="tel" class="form-control" id="inputTel" readonly="readonly" value="${customer.loginName}" placeholder="请输入手机号">
                </div>
              </div>
              <div class="form-group">
                <label for="inputName" class="col-sm-2 control-label">姓名:</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" id="inputName" readonly="readonly" value="${customer.displayName}" placeholder="请输入姓名">
                </div>
              </div>
              <div class="form-group">
                <label for="inputIdNum" class="col-sm-2 control-label">身份证号码:</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" id="inputIdNum" readonly="readonly" value="${customer.idNumber}" placeholder="请输入身份证号码">
                </div>
              </div>
            </c:when>
          <c:otherwise>
            <div class="form-group">
              <label for="inputCompanyName" class="col-sm-2 control-label">企业全称:</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" id="inputCompanyName" readonly="readonly" value="${customer.displayName}" placeholder="请输入企业全称">
              </div>
            </div>
            <div class="form-group">
              <label for="inputSH" class="col-sm-2 control-label">税号:</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" id="inputSH" readonly="readonly" value="${customer.taxId}" placeholder="请输入税号">
              </div>
            </div>
            <div class="form-group">
              <label for="inputLXR" class="col-sm-2 control-label">联系人:</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" id="inputLXR" value="${customer.contact}" placeholder="请输入联系人">
              </div>
            </div>
            <div class="form-group">
              <label for="inputLXDH" class="col-sm-2 control-label">联系电话:</label>
              <div class="col-sm-10">
                <input type="tel" class="form-control" id="inputLXDH" value="${customer.contactMobile}" placeholder="请输入联系电话">
              </div>
            </div>
            <div class="form-group">
              <div class="col-sm-offset-2 col-sm-10">
                <button id="updateBtn" type="button" class="btn btn-lg btn-success">保存</button>
              </div>
            </div>
          </c:otherwise>
          </c:choose>
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
    regInfo.contact=$('#inputLXR').val();
    regInfo.contactMobile=$('#inputLXDH').val();
    dxd.ajax({
      url : contextPath + '/api/my/updateMemberInfo.do',
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
