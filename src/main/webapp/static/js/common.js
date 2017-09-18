/**
 * Created by GrayF on 2017/8/3.
 */
var dxd ={};


dxd.ajax = function(options){

    var onsuccess = function (data) {

        if(data && data.status == 200){
            typeof options.success === 'function' && options.success(data);
        }else{
            onerror(data, data.status, data.msg);
        }
    };

    /*
     * 接口返回错误数据
     */
    var onerror = function (xhr, msg, errorThrown) {
        // 如果有自定义的错误处理
        if (typeof options.error === 'function') {
            options.error(xhr, msg, errorThrown);
        } else {
            dxd.alert(errorThrown);
        }
    };

    var opts = $.extend({
        type: 'POST',
        cache: false,
        dataType: 'json',
        timeout: 20000
    }, options, {
        success: onsuccess,
        error  : onerror
    });
    $.ajax(opts);
};

dxd.alert = function(msg){
    var html = '<div id="dxd-common-alert" class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">'+
    '<div class="modal-dialog modal-sm" role="document">'+
    '<div class="modal-content"><div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-label="Close">' +
        '<span aria-hidden="true">×</span></button></div><div class="modal-body"></div</div></div></div>';
    if(!$('#dxd-common-alert').html()){
        $(html).appendTo(document.body);
    }
    $('#dxd-common-alert .modal-body').html(msg);
    $('#dxd-common-alert').modal('show')

};


dxd.messaageBox = function(msg){
    var html = '<div id="dxd-common-alert" class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">'+
        '<div class="modal-dialog" role="document">'+
        '<div class="modal-content"><div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-label="Close">' +
        '<span aria-hidden="true">×</span></button></div><div class="modal-body" style="font-size: 32px;height: 150px;"><i class="success-icon"></i><p></p></div></div></div></div>';
    if(!$('#dxd-common-alert').html()){
        $(html).appendTo(document.body);
    }
    $('#dxd-common-alert .modal-body p').html(msg);
    $('#dxd-common-alert').modal('show')

};

dxd.getNowDateTime = function(){
    var now = new Date();
    var year = now.getFullYear();
    var munth = now.getMonth() + 1;
    var date = now.getDate();
    var hour = now.getHours();
    var mintue = now.getMinutes();
    munth = munth < 10 ? '0' + munth : munth;
    date = date < 10 ? '0' + date : date;
    hour = hour < 10 ? '0' + hour : hour;
    mintue = mintue < 10 ? '0' + mintue : mintue;
    return year + '-' + munth + '-' + date + ' ' + hour + ':' + mintue;
};
dxd.myValidata = {
    isMobile: function (val) {
        var myreg = /^((13[0-9])|(14[0-9])|(15[^4,\D])|(16[0-9])|(17[0-9])|(18[0,1-9]))\d{8}$/;
        return (myreg.test(val));
    },
    isEmail: function (val) {
        var pass = 0;
        if (window.RegExp) {
            var tempS = "a";
            var tempReg = new RegExp(tempS);
            if (tempReg.test(tempS)) {

                pass = 1;
            }
        }
        if (!pass) {

            return (val.indexOf(".") > 2) && (val.indexOf("@") > 0);
        }
        var r1 = new RegExp("(@.*@)|(\\.\\.)|(@\\.)|(^\\.)");
        var r2 = new RegExp("^[a-zA-Z0-9\\.\\!\\#\\$\\%\\&\\??\\*\\+\\-\\/\\=\\?\\^\\_\\`\\{\\}\\~]*[a-zA-Z0-9\\!\\#\\$\\%\\&\\??\\*\\+\\-\\/\\=\\?\\^\\_\\`\\{\\}\\~]\\@(\\[?)[a-zA-Z0-9\\-\\.]+\\.([a-zA-Z]{2,3})(\\]?)$");
        return (!r1.test(val) && r2.test(val));
    },
    checkIDCard: function (idcard) {
        if (typeof(idcard) != "string") {
            return false;
        }
        idcard = idcard.toUpperCase();
        var Errors = new Array("身份证号码验证通过!", "您的身份证号码不正确，请重新输入!", "您的身份证号码不正确，请重新输入!", "您的身份证号码不正确，请重新输入!", "您的身份证号码不正确，请重新输入!");
        var area = {
            11: "北京",
            12: "天津",
            13: "河北",
            14: "山西",
            15: "内蒙古",
            21: "辽宁",
            22: "吉林",
            23: "黑龙江",
            31: "上海",
            32: "江苏",
            33: "浙江",
            34: "安徽",
            35: "福建",
            36: "江西",
            37: "山东",
            41: "河南",
            42: "湖北",
            43: "湖南",
            44: "广东",
            45: "广西",
            46: "海南",
            50: "重庆",
            51: "四川",
            52: "贵州",
            53: "云南",
            54: "西藏",
            61: "陕西",
            62: "甘肃",
            63: "青海",
            64: "宁夏",
            65: "新疆",
            71: "台湾",
            81: "香港",
            82: "澳门"
        };
        var Y, JYM;
        var ereg;
        var S, M;
        var str;
        var idcard_array = [];
        idcard_array = idcard.split("");
        if (!area[parseInt(idcard.substr(0, 2))]) {
            return false;
        }
        switch (idcard.length) {
            case 15:
                if ((parseInt(idcard.substr(6, 2)) + 1900) % 4 == "0" || ((parseInt(idcard.substr(6, 2)) + 1900) % 100 == "0" && (parseInt(idcard.substr(6, 2)) + 1900) % 4 == "0" )) {
                    ereg = /^[1-9][0-9]{5}[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))[0-9]{3}$/;//测试出生日期的合法性
                } else {
                    ereg = /^[1-9][0-9]{5}[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))[0-9]{3}$/;//测试出生日期的合法性
                }
                if (ereg.test(idcard)) {
                    return true;
                } else {
                    return false;
                }
                break;
            case 18:
                if (parseInt(idcard.substr(6, 4)) % 4 == "0" || (parseInt(idcard.substr(6, 4)) % 100 == "0" && parseInt(idcard.substr(6, 4)) % 4 == "0" )) {
                    ereg = /^[1-9][0-9]{5}19|20[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))[0-9]{3}[0-9Xx]$/;//闰年出生日期的合法性正则表达式
                } else {
                    ereg = /^[1-9][0-9]{5}19|20[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))[0-9]{3}[0-9Xx]$/;//平年出生日期的合法性正则表达式
                }
                if (ereg.test(idcard)) {
                    S = (parseInt(idcard_array[0]) + parseInt(idcard_array[10])) * 7 + (parseInt(idcard_array[1]) + parseInt(idcard_array[11])) * 9 + (parseInt(idcard_array[2]) + parseInt(idcard_array[12])) * 10 + (parseInt(idcard_array[3]) + parseInt(idcard_array[13])) * 5 + (parseInt(idcard_array[4]) + parseInt(idcard_array[14])) * 8 + (parseInt(idcard_array[5]) + parseInt(idcard_array[15])) * 4 + (parseInt(idcard_array[6]) + parseInt(idcard_array[16])) * 2 + parseInt(idcard_array[7]) * 1 + parseInt(idcard_array[8]) * 6 + parseInt(idcard_array[9]) * 3;
                    Y = S % 11;
                    M = "F";
                    JYM = "10X98765432";
                    M = JYM.substr(Y, 1);
                    if (M == idcard_array[17]) {
                        return true;
                    } else {
                        return false;
                    }
                } else {
                    return false;
                }
                break;
            default:
                return false;
        }
    }
}


$.fn.validateNotify = function(msg){
    $(this).addClass('validate-error');
    $(this).attr('has-tooltip',true);
    $(this).tooltip({title:msg,placement:'bottom'});
}

$.fn.val1 = function(){
    var placeholder = $(this).attr('placeholder');
    var val = $(this).val();
    if(val == placeholder){
        val = '';
    }
    return val;
};

$('input').on('click',function(){
    var hasTooltip = $(this).attr('has-tooltip');
    if(hasTooltip){
        $(this).removeAttr('has-tooltip');
        $(this).removeClass('validate-error');
        $(this).tooltip('destroy');
    }
});


(function(){
    if(navigator.userAgent.indexOf('MSIE 8.0') > -1
        || navigator.userAgent.indexOf('MSIE 9.0') > -1){
        $.each($('input'),function(i,input){
            var placeholder = $(this).attr('placeholder');
            if($(input).val() == ''){
                if($(input).attr('type') == 'password'){
                    return;
                }
                $(input).val(placeholder);
                $(input).addClass('color-gray');
            }
        });
        $('input').on('focus',function(){
            var placeholder = $(this).attr('placeholder');
            if($(this).val() == placeholder){
                $(this).val('');
                $(this).removeClass('color-gray');
            }
        }).on('blur',function(){
            var placeholder = $(this).attr('placeholder');
            if($(this).val() == ''){
                if($(this).attr('type') == 'password'){
                    return;
                }
                $(this).val(placeholder);
                $(this).addClass('color-gray');
            }
        });
    }
})();
