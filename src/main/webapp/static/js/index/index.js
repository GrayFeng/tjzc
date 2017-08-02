/**
 * Created by Gray on 2017/7/4.
 */


var index = {
    bindEvent: function(){
        //服务类型tab页切换
        $('#serviceTypeTabs a').click(function (e) {
            e.preventDefault();
            //$(this).tab('show')
            var tabFlag = $(this).attr('aria-controls');
                if(tabFlag == 'czdz'||tabFlag == 'qybc'){
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
            autoclose: true
        });
    }
};

(function(){
    index.bindEvent();
})();