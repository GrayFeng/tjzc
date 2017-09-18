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
            startDate:new Date()
        });
        //初始化车型
        //dxd.ajax({
        //   url: contextPath + "/api/rent/getCarTypeList.do",
        //   success:function(data){
        //       if(data && data.re){
        //           var carTypeList = $('#orderVehicle');
        //           var carTypeList1 = $('#orderCZVehicle');
        //           carTypeList.html('');
        //           carTypeList1.html('');
        //           $.each(data.re,function(i,carType){
        //              var option = '<option value="'+carType.type+'">'+carType.type+'</option>';
        //               carTypeList.append(option);
        //               carTypeList1.append(option);
        //           });
        //       }
        //   }
        //});

        $('#rentBtn').on('click',function(){
            var orderInfo = {};
            var validate = true;
            if(document.cookie.indexOf('loginName') == -1){
                dxd.alert('请先登录');
                return;
            }
            //console.info(index.tabFlag);
            if(index.tabFlag == 'rzbc'){
                orderInfo.type = '1';
                orderInfo.startTime = $('#orderTime').val1();
                orderInfo.startAddress = $('#orderStartAddress').val1();
                orderInfo.endAddress = $('#orderEndAddress').val1();
                orderInfo.customerCarType = $('#orderVehicle').val1();
                orderInfo.tenancy = $('input[name="type-radio"]:checked').val1();
                if(!orderInfo.startTime){
                    $('#orderTime').validateNotify('请选择用车时间');
                    validate = false
                }
                if(!orderInfo.startAddress){
                    $('#orderStartAddress').validateNotify('请选择出发地点');
                    validate = false
                }
                if(!orderInfo.endAddress){
                    $('#orderEndAddress').validateNotify('请选择送达地点');
                    validate = false
                }
            }else if(index.tabFlag == 'jcjs'){
                orderInfo.type = '2';
                orderInfo.startTime = $('#orderTime').val1();
                orderInfo.startAddress = $('#orderStartAddress').val1();
                orderInfo.endAddress = $('#orderEndAddress').val1();
                orderInfo.customerCarType = $('#orderVehicle').val1();
                orderInfo.flightTrain = $('#orderFlightNumbe').val1();
                orderInfo.fetchSend = $('input[name="fetchSend-fly-type-radio"]:checked').val1();
                orderInfo.single = $('input[name="single-fly-type-radio"]:checked').val1();
                if(!orderInfo.startTime){
                    $('#orderTime').validateNotify('请选择用车时间');
                    validate = false
                }
                if(!orderInfo.startAddress){
                    $('#orderStartAddress').validateNotify('请选择出发地点');
                    validate = false
                }
                if(!orderInfo.endAddress){
                    $('#orderEndAddress').validateNotify('请选择送达地点');
                    validate = false
                }
                if(!orderInfo.flightTrain){
                    $('#orderFlightNumbe').validateNotify('请输入航班号');
                    validate = false
                }
            }else if(index.tabFlag == 'czjs'){
                orderInfo.type = '3';
                orderInfo.startTime = $('#orderTime').val1();
                orderInfo.startAddress = $('#orderStartAddress').val1();
                orderInfo.endAddress = $('#orderEndAddress').val1();
                orderInfo.customerCarType = $('#orderVehicle').val1();
                orderInfo.flightTrain = $('#orderTrainNumbe').val1();
                orderInfo.fetchSend = $('input[name="fetchSend-type-radio"]:checked').val1();
                orderInfo.single = $('input[name="single-type-radio"]:checked').val1();
                if(!orderInfo.startTime){
                    $('#orderTime').validateNotify('请选择用车时间');
                    validate = false
                }
                if(!orderInfo.startAddress){
                    $('#orderStartAddress').validateNotify('请选择出发地点');
                    validate = false
                }
                if(!orderInfo.endAddress){
                    $('#orderEndAddress').validateNotify('请选择送达地点');
                    validate = false
                }
                if(!orderInfo.flightTrain){
                    $('#orderTrainNumbe').validateNotify('请输入车次');
                    validate = false
                }
            }else if(index.tabFlag == 'czdz'){
                orderInfo.type = '4';
                orderInfo.startTime = $('#orderCZTime').val1();
                orderInfo.customerCarType = $('#orderCZVehicle').val1();
                orderInfo.tenancy = $('#orderZQ').val1();
                if(!orderInfo.startTime){
                    $('#orderCZTime').validateNotify('请选择用车时间');
                    validate = false
                }
            }else if(index.tabFlag == 'qybc'){
                orderInfo.type = '5';
                orderInfo.customerCarType = $('#orderQYBCVehicle').val1();
                orderInfo.remark = $('#orderQYBCOther').val1();
                orderInfo.tenancy = $('#orderQYBCZQ').val1();
                if(!orderInfo.customerCarType){
                    $('#orderQYBCVehicle').validateNotify('请输入车型');
                    validate = false
                }
            }
            //console.info(orderInfo);
            if(orderInfo.startTime
                && orderInfo.startTime < dxd.getNowDateTime()){
                $('#orderTime').validateNotify('请选择一个有效时间');
                validate = false
            }
            if(!validate){
                return;
            }
            index.addOrder(orderInfo);
        });
    },
    addOrder : function(orderInfo){
        dxd.ajax({
           url: contextPath + '/api/rent/addOrder.do',
            data: orderInfo,
            success: function(data){
                if(data && data.status == "200" && data.re){
                    dxd.messaageBox("预定成功")
                }
            }
        });
    }
};

(function(){
    index.bindEvent();
})();