/**
 * Created by Gray on 2017/7/4.
 */


var index = {
    bindEvent: function(){
        //服务类型tab页切换
        $('#serviceTypeTabs a').click(function (e) {
            e.preventDefault()
            //$(this).tab('show')
            console.info('1');
        });

        //地址选择
        $('#orderStartAddress').on('click',function(){
            selectAddress.init();
        })

        //地址选择
        $('#orderEndAddress').on('click',function(){
            selectAddress.init(2);
        })
    }
};

(function(){
    index.bindEvent();
})();