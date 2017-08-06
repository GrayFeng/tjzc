/**
 * Created by Gray on 2017/7/4.
 */


var index = {
    tabFlag: 'rzbc',
    bindEvent: function(){
        //服务类型tab页切换
        $('#serviceTypeTabs a').click(function (e) {
            e.preventDefault();
            //$(this).tab('show')
            index.tabFlag = $(this).attr('aria-controls');
                if(index.tabFlag == 'czdz'||index.tabFlag == 'qybc'){
                    $('#common-order-item').hide();
                }else{
                    $('#common-order-item').show();
                }
        });

        //地址选择
        $('#orderStartAddress').on('click',function(){
            selectAddress.init();
        })

        //地址选择
        $('#orderEndAddress').on('click',function(){
            selectAddress.init(2);
        })

        $('#orderTime,#orderCZTime').datetimepicker({
            language: "zh-CN",
            format: "yyyy-mm-dd hh:00",
            autoclose: true,
            startDate:fecha.format(new Date(), 'YYYY-MM-DD HH:mm')
        });
        //初始化车型
        dxd.ajax({
           url: contextPath + "/api/rent/getCarTypeList.do",
           success:function(data){
               if(data && data.re){
                   var carTypeList = $('#orderVehicle');
                   var carTypeList1 = $('#orderCZVehicle');
                   carTypeList.html('');
                   carTypeList1.html('');
                   $.each(data.re,function(i,carType){
                      var option = '<option value="'+carType.type+'">'+carType.type+'</option>';
                       carTypeList.append(option);
                       carTypeList1.append(option);
                   });
               }
           }
        });

        $('#rentBtn').on('click',function(){
            var orderInfo = {};
            if(document.cookie.indexOf('loginName') == -1){
                dxd.alert('请先登录');
                return;
            }
            console.info(index.tabFlag);
            if(index.tabFlag == 'rzbc'){
                orderInfo.type = '1';
                orderInfo.startTime = $('#orderTime').val();
                orderInfo.startAddress = $('#orderStartAddress').val();
                orderInfo.endAddress = $('#orderEndAddress').val();
                orderInfo.customerCarType = $('#orderVehicle').val();
                orderInfo.tenancy = $('input[name="type-radio"]:checked').val();
            }else if(index.tabFlag == 'jcjs'){
                orderInfo.type = '2';
                orderInfo.startTime = $('#orderTime').val();
                orderInfo.startAddress = $('#orderStartAddress').val();
                orderInfo.endAddress = $('#orderEndAddress').val();
                orderInfo.customerCarType = $('#orderVehicle').val();
                orderInfo.flightTrain = $('#orderFlightNumbe').val();
                orderInfo.fetchSend = $('input[name="fetchSend-fly-type-radio"]:checked').val();
                orderInfo.single = $('input[name="single-fly-type-radio"]:checked').val();
            }else if(index.tabFlag == 'czjs'){
                orderInfo.type = '3';
                orderInfo.startTime = $('#orderTime').val();
                orderInfo.startAddress = $('#orderStartAddress').val();
                orderInfo.endAddress = $('#orderEndAddress').val();
                orderInfo.customerCarType = $('#orderVehicle').val();
                orderInfo.flightTrain = $('#orderTrainNumbe').val();
                orderInfo.fetchSend = $('input[name="fetchSend-type-radio"]:checked').val();
                orderInfo.single = $('input[name="single-type-radio"]:checked').val();
            }else if(index.tabFlag == 'czdz'){
                orderInfo.type = '4';
                orderInfo.startTime = $('#orderCZTime').val();
                orderInfo.customerCarType = $('#orderCZVehicle').val();
                orderInfo.tenancy = $('#orderZQ').val();
            }else if(index.tabFlag == 'qybc'){
                orderInfo.type = '5';
                orderInfo.remark = $('#orderQYBCVehicle').val();
                orderInfo.customerCarType = $('#orderQYBCOther').val();
                orderInfo.tenancy = $('#orderQYBCZQ').val();
            }
            console.info(orderInfo);
            index.addOrder(orderInfo);
        });
    },
    addOrder : function(orderInfo){
        dxd.ajax({
           url: contextPath + '/api/rent/addOrder.do',
            data: orderInfo,
            success: function(data){
                dxd.alert(data);
            }
        });
    }
};

(function(){
    index.bindEvent();
})();