/**
 * Created by Gray on 2017/7/4.
 */


var login = {
    bindEvent: function(){
        $('.login-tab-box h2').click(function(){
            if($(this).hasClass('active')){
                return;
            }

            if($(this).hasClass('person')){
                $('#inputEmail').show();
                $('#inputCompany').hide();
            }else{
                $('#inputEmail').hide();
                $('#inputCompany').show();
            }
            $('.login-tab-box h2').each(function(i,o){
                if($(o).hasClass('active')){
                    $(o).removeClass('active');
                }else{
                    $(o).addClass('active');
                }
            })
        })
    }
};

(function(){
    login.bindEvent();
})();