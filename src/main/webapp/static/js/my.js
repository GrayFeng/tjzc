/**
 * Created by Gray on 2017/7/4.
 */


var my = {
    orderStatus:['','等待处理'],
    orderType:['','日租包车','机场接送','车站接送','月租包车','企业包车'],
    bindEvent: function() {
        //初始化车型
        dxd.ajax({
            url: contextPath + "/api/my/getOrderList.do",
            success: function (data) {
                if (data && data.re && data.re.length > 0) {
                    var dataList = $('#dataList');
                    dataList.html('');
                    $.each(data.re,function(i,order){
                        var tr = $('<tr>');
                        order.startTime = order.startTime || '';
                        order.startAddress = order.startAddress || '';
                        order.endAddress = order.endAddress || '';
                        order.customerCarType = order.customerCarType || '';
                        order.type = order.type || '1';
                        order.status = order.status || '1';
                        order.total = order.total || 0.0;

                        tr.append('<td>'+order.orderNo+'</td>');
                        tr.append('<td>'+order.startTime+'</td>');
                        tr.append('<td>'+order.startAddress+'</td>');
                        tr.append('<td>'+order.endAddress+'</td>');
                        tr.append('<td>'+my.orderType[order.type]+'</td>');
                        tr.append('<td>'+order.customerCarType+'</td>');
                        tr.append('<td>'+order.total+'</td>');
                        tr.append('<td>'+my.orderStatus[order.status]+'</td>');
                        dataList.append(tr);
                    });
                }
            }
        });
    }
};

(function(){
    my.bindEvent();
})();