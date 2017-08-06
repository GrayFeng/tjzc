/**
 * Created by Gray on 2017/7/4.
 */


var my = {
    orderStatus:['','等待处理','预约完成','订单完成','订单取消','订单终结'],
    orderType:['','日租包车','机场接送','车站接送','月租包车','企业包车'],
    pageCount:2,
    pageNum:1,
    status:0,
    bindEvent: function() {
        $('#startTime').datetimepicker({
            language: "zh-CN",
            format: "yyyy-mm-dd hh:00",
            autoclose: true,
            startDate:'-3m'
        });
        $('#endTime').datetimepicker({
            language: "zh-CN",
            format: "yyyy-mm-dd hh:00",
            autoclose: true
        });
        $("#searchBtn").on('click',function(){
            my.getList();
        });
        $("#statusUL li a").on('click',function(){
            $('#statusUL li').removeClass('active');
            my.status = $(this).attr('data-value');
            $(this).parent().addClass('active');
            my.getList();
        });
    },
    getList: function(){
        var param = {};
        param.pageNum = my.pageNum;
        param.pageCount = my.pageCount;
        if(my.status > 0){
            param.status = my.status;
        }
        var startTime = $('#startTime').val();
        var endTime = $('#endTime').val();
        if(startTime && !endTime){
            dxd.alert('请选择结束时间');
            return;
        }
        if(!startTime && endTime){
            dxd.alert('请选择开始时间');
            return;
        }
        if(startTime && endTime){
            param.startTime = startTime;
            param.endTime = endTime;
        }
        var dataList = $('#dataList');
        dataList.html('');
        $('.pagination').html('');
        //初始化车型
        dxd.ajax({
            url: contextPath + "/api/my/getOrderList.do",
            data:param,
            success: function (data) {
                if (data && data.re
                    && data.re.list
                    && data.re.list.length > 0) {
                    $.each(data.re.list,function(i,order){
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
                    my.pageNav(my.pageNum,my.pageCount,data.re.count);
                }
            }
        });
    },
    goto:function(pageNum){
        my.pageNum=pageNum;
        my.getList();
    },
    pageNav:function(pageNum,pageCount,totalCount){
        var totalPage = totalCount / pageCount;
        if(totalCount % pageCount > 0){
            totalPage += 1;
        }
        var pageArray = [];
        if(pageNum <= 3){
            for(var i = 1;i<= 5;i++){
                if(i > totalPage){
                    break;
                }
                pageArray.push(i);
            }
        }else if((pageNum + 2) > totalPage){
            for(var i = totalPage -4 ;i<=totalPage;i++){
                if(i < 1){
                    continue;
                }
                pageArray.push(i);
            }
        }else {
            for(var i = pageNum -2 ;i<= pageNum + 2;i++){
                if(i > totalPage){
                    break;
                }
                pageArray.push(i);
            }
        }
        var pageNavHtml = '<li><a href="javascript:my.goto(1)" aria-label="Previous"><span aria-hidden="true">&laquo;</span> </a> </li>';

        for(var i = 0;i<pageArray.length > 0;i++){
            if(pageNum == pageArray[i]){
                pageNavHtml += '<li><a class="cur" href="javascript:my.goto('+pageArray[i]+')">'+pageArray[i]+'</a></li>';
            }else{
                pageNavHtml += '<li><a href="javascript:my.goto('+pageArray[i]+')">'+pageArray[i]+'</a></li>';
            }
        }
        pageNavHtml += '<li><a href="javascript:my.goto('+totalPage+')" aria-label="Next"><span aria-hidden="true">&raquo;</span> </a> </li>';

        $('.pagination').html(pageNavHtml);

    }
};

(function(){
    my.bindEvent();
    my.getList();
})();