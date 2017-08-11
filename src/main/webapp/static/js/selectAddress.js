/**
 * Created by GrayF on 2017/7/23.
 */
var Map = function(){
    var map;

    return {
        init: function(){
            if(map){
                return;
            }else{
                map = new BMap.Map("allmap");
                map.addControl(new BMap.MapTypeControl());
                map.enableScrollWheelZoom(true);
            }
            var point = new BMap.Point(117.218963, 39.143423);
            map.centerAndZoom(point, 15);
            var marker = new BMap.Marker(point);
            map.addOverlay(marker);
        },
        search: function(keyword){
            var options = {
                onSearchComplete: function(results){
                    $('#addressList').html('');
                    // 判断状态是否正确
                    if (local.getStatus() == BMAP_STATUS_SUCCESS){
                        var s = [];
                        for (var i = 0; i < results.getCurrentNumPois(); i ++){
                            var address = $('<a class="list-group-item" href="javascript:void(0)"></a>');
                            var title = $('<h4 class="list-group-item-heading"></h4>');
                            title.text(results.getPoi(i).title);
                            address.append(title);
                            var addressDetail = $('<p class="list-group-item-text"></p>');
                            addressDetail.text(results.getPoi(i).address);
                            address.append(addressDetail);
                            address.attr('title',results.getPoi(i).title);
                            address.attr('address',results.getPoi(i).address);
                            address.attr('lng',results.getPoi(i).point.lng);
                            address.attr('lat',results.getPoi(i).point.lat);
                            $('#addressList').append(address);
                            address.on('mousemove',function(){
                                var _this = $(this);
                                var point = new BMap.Point(_this.attr('lng'),_this.attr('lat'));
                                map.centerAndZoom(point, 15);
                                var marker = new BMap.Marker(point);
                                map.clearOverlays();
                                map.addOverlay(marker);
                            });
                            address.on('click',function(){
                                var addressInput = $('#orderStartAddress');
                                if(selectAddress.getType() == 2){
                                    addressInput = $('#orderEndAddress');
                                }
                                var _this = $(this);
                                addressInput.val(_this.attr('title'));
                                addressInput.attr('address',_this.attr('address'));
                                addressInput.attr('lng',_this.attr('lng'));
                                addressInput.attr('lat',_this.attr('lat'));
                                var point = new BMap.Point(_this.attr('lng'),_this.attr('lat'));
                                map.centerAndZoom(point, 15);
                                var marker = new BMap.Marker(point);
                                map.clearOverlays();
                                map.addOverlay(marker);
                                $('#mapModal').modal('hide');

                            });
                        }
                    }
                }
            };
            var local = new BMap.LocalSearch(map, options);
            local.search(keyword);
        }
    }
}();


var selectAddress = function(){

    var keywordInput;
    var type = 1;

    function bindEvent(){

        $("#keyword").on("keydown",function(){
            window.clearTimeout(keywordInput);
            keywordInput = setTimeout(function(){
                var keyword = $("#keyword").val();
                if(keyword){
                    Map.search(keyword);
                }
            },300);
        });
        $("#searchBtn").on('click',function(){
            var keyword = $("#keyword").val();
            if(keyword){
                Map.search(keyword);
            }
        });
    }

    return {
        init: function(type){
            this.type = type;
            $('#mapModal').modal();
            setTimeout(function(){
                Map.init();
            },1000);
        },
        bindEvent:function(){
            bindEvent();
        },
        getType: function(){
            return this.type;
        }
    }
}();
(function(){
    selectAddress.bindEvent();
})();