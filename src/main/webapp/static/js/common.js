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

}