/**
 * Created by Gray on 2017/7/4.
 */

var Map = function(){
    var map;

    return {
        init: function(){
            if(map){
                return;
            }
            map = new BMap.Map("allmap");
            var point = new BMap.Point(117.218963, 39.143423);
            map.centerAndZoom(point, 10);
            map.addControl(new BMap.MapTypeControl());
            map.enableScrollWheelZoom(true);
            var marker = new BMap.Marker(point);
            map.addOverlay(marker);
        }
    }
}();

var index = {
    bindEvent: function(){
        //服务类型tab页切换
        $('#serviceTypeTabs a').click(function (e) {
            e.preventDefault()
            $(this).tab('show')
        });

        //地址选择
        $('#orderStartAddress').on('click',function(){
            $('#mapModal').modal();
            setTimeout(function(){
                Map.init();
            },1000);
        })
    }
};

(function(){
    index.bindEvent();
})();