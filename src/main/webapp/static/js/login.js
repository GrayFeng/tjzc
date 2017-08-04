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
                $('#inputTel').show();
                $('#inputEmail').hide();
            }else{
                loginType = 1;
                $('#inputTel').hide();
                $('#inputEmail').show();
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
            var tel = $('#inputTel').val();
            var email = $('#inputEmail').val();
            var password = $('#inputPassword').val();
            var loginInfo = {};
            if(loginType == 0){
                loginInfo.loginName = tel;
            }else{
                loginInfo.loginName = email;
            }
            loginInfo.type = loginType;
            loginInfo.password = password;
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