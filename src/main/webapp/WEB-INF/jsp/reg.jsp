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
    <link href="<%=request.getContextPath()%>/static/css/reg.css" rel="stylesheet">
    <title>用户注册</title>
</head>
<body>

<%@include file="include/nav.jsp" %>

<div class="container reg-box">
    <ul class="nav nav-tabs" role="tablist" id="regTypeNav">
        <li role="presentation" class="active">
            <a href="#person" aria-controls="person" role="tab" data-toggle="tab">个人注册</a>
        </li>
        <li role="presentation">
            <a href="#company" aria-controls="company" role="tab" data-toggle="tab">企业注册</a>
        </li>
    </ul>
    <div class="tab-content">
        <div role="tabpanel" class="tab-pane active" id="person">
            <form class="form-horizontal">
                <div class="form-group">
                    <label for="inputTel" class="col-sm-2 control-label">手机号:</label>

                    <div class="col-sm-10">
                        <input type="tel" class="form-control" id="inputTel" placeholder="请输入手机号">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputTel" class="col-sm-2 control-label">验证码:</label>
                    <div class="col-sm-8">
                        <input type="text" id="vCode"  class="form-control" placeholder="请输入验证码">
                    </div>
                    <button type="button" id="vCodebtn" class="col-sm-2 btn btn-success">发送验证码</button>
                </div>
                <div class="form-group">
                    <label for="inputPassword" class="col-sm-2 control-label">密码:</label>

                    <div class="col-sm-10">
                        <input type="password" class="form-control" id="inputPassword" placeholder="请输入密码">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword1" class="col-sm-2 control-label">确认密码:</label>

                    <div class="col-sm-10">
                        <input type="password" class="form-control" id="inputPassword1" placeholder="请输入确认密码">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputName" class="col-sm-2 control-label">姓名:</label>

                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="inputName" placeholder="请输入姓名">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputIdNum" class="col-sm-2 control-label">身份证号码:</label>

                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="inputIdNum" placeholder="请输入身份证号码">
                    </div>
                </div>
                <div class="checkbox" style="text-align: center;margin-bottom: 20px; width: 53%">
                    <label>
                        <input type="checkbox" id="memberRule"> <a target="_blank" href="<%=request.getContextPath()%>/memberRule.do">《大行道会员注册协议》</a>
                    </label>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button id="personRegBtn" type="button" class="btn btn-lg btn-success">注册</button>
                    </div>
                </div>
            </form>
        </div>

        <div role="tabpanel" class="tab-pane" id="company">
            <form class="form-horizontal">
                <div class="form-group">
                    <label for="inputEmail" class="col-sm-2 control-label">电子邮箱:</label>

                    <div class="col-sm-10">
                        <input type="tel" class="form-control" id="inputEmail" placeholder="请输入电子邮箱">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword2" class="col-sm-2 control-label">密码:</label>

                    <div class="col-sm-10">
                        <input type="password" class="form-control" id="inputPassword2" placeholder="请输入密码">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">确认密码:</label>

                    <div class="col-sm-10">
                        <input type="password" class="form-control" id="inputPassword3" placeholder="请输入确认密码">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputCompanyName" class="col-sm-2 control-label">企业全称:</label>

                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="inputCompanyName" placeholder="请输入企业全称">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputSH" class="col-sm-2 control-label">税号:</label>

                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="inputSH" placeholder="请输入税号">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputLXR" class="col-sm-2 control-label">联系人:</label>

                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="inputLXR" placeholder="请输入联系人">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputLXDH" class="col-sm-2 control-label">联系电话:</label>

                 <div class="col-sm-10">
                        <input type="tel" class="form-control" id="inputLXDH" placeholder="请输入联系电话">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputTel" class="col-sm-2 control-label">验证码:</label>
                    <div class="col-sm-8">
                        <input type="text" id="cVCode" class="form-control" placeholder="请输入验证码">
                    </div>
                    <button type="button" id="cVCodebtn" class="col-sm-2 btn btn-success">发送验证码</button>
                </div>
                <div class="checkbox" style="text-align: center;margin-bottom: 20px; width: 53%">
                    <label>
                        <input type="checkbox" id="companyMemberRule"> <a target="_blank" href="<%=request.getContextPath()%>/memberRule.do">《大行道会员注册协议》</a>
                    </label>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button id="companyRegBtn" type="button" class="btn btn-lg btn-success">注册</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

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

<script>

    $('#personRegBtn').on('click',function(){
        var validate = true;
        var regInfo = {};
        regInfo.loginName=$('#inputTel').val1();
        regInfo.displayName=$('#inputName').val1();
        regInfo.password=$('#inputPassword').val1();
        regInfo.idNumber=$('#inputIdNum').val1();
        regInfo.validateCode =$('#vCode').val1();
        if(!regInfo.loginName){
            $('#inputTel').validateNotify('请输入手机号');
            validate = false
        }else if(!dxd.myValidata.isMobile(regInfo.loginName)){
            $('#inputTel').validateNotify('手机号格式不正确');
            validate = false
        }
        if(!regInfo.displayName){
            $('#inputName').validateNotify('请输入姓名');
            validate = false
        }
        if(!regInfo.password){
            $('#inputPassword').validateNotify('请输入密码');
            validate = false
        }
        if(regInfo.password != $('#inputPassword1').val1()){
            $('#inputPassword1').validateNotify('两次密码不一致');
            validate = false
        }
        if(!regInfo.idNumber){
            $('#inputIdNum').validateNotify('请输入身份证号');
            validate = false
        }else if(!dxd.myValidata.checkIDCard(regInfo.idNumber)){
            $('#inputIdNum').validateNotify('身份证格式不正确');
            validate = false
        }
        if(!regInfo.validateCode){
            $('#vCode').validateNotify('请输入验证码');
            validate = false
        }
        regInfo.type = 0;
        if(!validate){
            return;
        }
        if(!$('#memberRule').prop('checked')){
            dxd.alert('请勾选会员协议');
            return;
        }
        reg(regInfo);

    });

    $('#companyRegBtn').on('click',function(){
        var regInfo = {};
        var validate = true;
        regInfo.loginName=$('#inputEmail').val1();
        regInfo.displayName=$('#inputCompanyName').val1();
        regInfo.password=$('#inputPassword2').val1();
        regInfo.taxId=$('#inputSH').val1();
        regInfo.contact=$('#inputLXR').val1();
        regInfo.contactMobile=$('#inputLXDH').val1();
        regInfo.validateCode =$('#cVCode').val1();
        regInfo.type = 1;
        if(!regInfo.loginName){
            $('#inputEmail').validateNotify('请输入邮箱');
            validate = false
        }else if(!dxd.myValidata.isEmail(regInfo.loginName)){
            $('#inputEmail').validateNotify('邮箱格式不正确');
            validate = false
        }
        if(!regInfo.displayName){
            $('#inputCompanyName').validateNotify('请输入企业名称');
            validate = false
        }
        if(!regInfo.password){
            $('#inputPassword2').validateNotify('请输入密码');
            validate = false
        }
        if(regInfo.password != $('#inputPassword3').val1()){
            $('#inputPassword3').validateNotify('两次密码不一致');
            validate = false
        }
        if(!regInfo.taxId){
            $('#inputSH').validateNotify('请输入税号');
            validate = false
        }
        if(!regInfo.contact){
            $('#inputLXR').validateNotify('请输入联系人');
            validate = false
        }
        if(!regInfo.contactMobile){
            $('#inputLXDH').validateNotify('请输入联系人手机号');
            validate = false
        }else if(!dxd.myValidata.isMobile(regInfo.contactMobile)){
            $('#inputLXDH').validateNotify('手机号格式不正确');
            validate = false
        }
        if(!regInfo.validateCode){
            $('#cVCode').validateNotify('请输入验证码');
            validate = false
        }
        if(!validate){
            return;
        }
        if(!$('#companyMemberRule').prop('checked')){
            dxd.alert('请勾选会员协议');
            return;
        }
        reg(regInfo);
    });

    $('#vCodebtn').on('click',function(){
        send(0);
    });

    $('#cVCodebtn').on('click',function(){
        send(1);
    });


    var sendIng = false;
    function send(type){
        var $btn = $('#vCodebtn');
        var mobile = $('#inputTel').val1();
        if(type == 1){
            $btn = $('#cVCodebtn');
            mobile = $('#inputLXDH').val1();
        }
        if(!mobile){
            dxd.alert('请先输入手机号');
            return;
        }
        if(sendIng){
            return;
        }
        dxd.ajax({
            url : contextPath + '/api/reg/sendValidateCode.do',
            data: {mobile:mobile},
            success:function(data){
                if(data && data.re){
                    $btn.html('已发送(60)');
                    $btn.removeClass('btn-success');
                    $btn.addClass('btn-default');
                    var count = 60;
                    sendIng = true;
                    function countFn(){
                        setTimeout(function(){
                            count -= 1;
                            if(count == 0){
                                $btn.html('发送验证码');
                                $btn.removeClass('btn-default');
                                $btn.addClass('btn-success');
                                sendIng = false;
                            }else{
                                $btn.html('已发送('+count+')');
                                countFn();
                            }
                        },1000)
                    }
                    countFn();
                }else{
                    dxd.alert(data.msg);
                }
            }
        })
    }


    function reg(regInfo){
        dxd.ajax({
            url : contextPath + '/api/reg/add.do',
            data: regInfo,
            success:function(data){
                if(data && data.re){
//                    dxd.alert("注册成功");
                    location.href = contextPath + "/login.do";
                }else{
                    dxd.alert(data.msg);
                }
            }
        })
    }

</script>
</body>
</html>
