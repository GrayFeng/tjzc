/**
 * Created by Gray on 2017/7/4.
 */


var login = {
    bindEvent: function(){
        var loginType = 0;
        $('.login-tab-box h2').click(function(){
            if($(this).hasClass('active')){
                return;
            }

            if($(this).hasClass('person')){
                loginType = 0;
                $('.tel-input-group').show();
                $('.email-input-group').hide();
            }else{
                loginType = 1;
                $('.tel-input-group').hide();
                $('.email-input-group').show();
            }

            $('.login-tab-box h2').each(function(i,o){
                if($(o).hasClass('active')){
                    $(o).removeClass('active');
                }else{
                    $(o).addClass('active');
                }
            })
        })

        $('#loginBtn').on('click',function(){
            var validate = true;
            var tel = $('#inputTel').val1();
            var email = $('#inputEmail').val1();
            var password = $('#inputPassword').val1();
            var loginInfo = {};
            if(loginType == 0){
                loginInfo.loginName = tel;
                if(!loginInfo.loginName){
                    $('#inputTel').validateNotify('请输入手机号');
                    validate = false
                }
            }else{
                loginInfo.loginName = email;
                if(!loginInfo.loginName){
                    $('#inputEmail').validateNotify('请输入邮箱');
                    validate = false
                }
            }
            loginInfo.type = loginType;
            loginInfo.password = password;
            if(!loginInfo.password){
                $('#inputPassword').validateNotify('请输入密码');
                validate = false
            }
            if(!validate){
                return;
            }
            dxd.ajax({
                url : contextPath + '/api/login.do',
                data: loginInfo,
                success:function(data){
                    if(data && data.re){
                        window.location.href = contextPath + '/';
                    }else{
                        dxd.alert(data.msg);
                    }
                }
            })
        });
    },
};

(function(){
    login.bindEvent();
})();