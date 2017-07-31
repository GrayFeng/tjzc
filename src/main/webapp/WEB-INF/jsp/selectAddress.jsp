<%--
  Created by IntelliJ IDEA.
  User: GrayF
  Date: 2017/7/4
  Time: 上午1:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="<%=request.getContextPath()%>/static/css/selectAddress.css" rel="stylesheet">
<!--地图选择框-->
<div class="modal fade mapModal" id="mapModal" tabindex="-1" role="dialog" aria-labelledby="mapModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="mapModalLabel">选择地址</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-5 col-xs-5">
                        <div class="input-group">
                            <input id="keyword" type="text" class="form-control" aria-label="Text input with multiple buttons">
                            <div class="input-group-btn">
                                <button id="searchBtn" type="button" class="btn btn-default" aria-label="Bold"><span class="glyphicon glyphicon-search"></span></button>
                            </div>
                        </div>
                        <div id="addressList" class="list-group">

                        </div>
                    </div>
                    <div class="col-md-7 col-xs-7">
                        <div id="allmap" class="allmap"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="<%=request.getContextPath()%>/static/js/selectAddress.js"></script>

</body>
</html>
