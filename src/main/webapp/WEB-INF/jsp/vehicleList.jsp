<%--
  Created by IntelliJ IDEA.
  User: GrayF
  Date: 2017/7/5
  Time: 上午12:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <%@include file="include/header.jsp"%>
  <link href="<%=request.getContextPath()%>/static/css/vehicleList.css" rel="stylesheet">
  <title>列表</title>
</head>
<body>
<%@include file="include/nav.jsp"%>
<div class="container vehicle-list">
  <div class="vehicle-list-order-info">
    <div class="col-md-5">
      <div class="order-item">
        <label class="order-item-label">xxxx</label><input class="order-item-input form-control" type="text" placeholder="">
      </div>
      <div class="order-item">
        <label class="order-item-label">xxxx</label><input class="order-item-input form-control" type="text"  placeholder="">
      </div>
    </div>
    <div class="col-md-5">
      <div class="order-item">
        <label class="order-item-label">xxxx</label><input class="order-item-input form-control" type="text"  placeholder="">
      </div>
      <div class="order-item">
        <label class="order-item-label">xxxx</label>
        <span class="order-item-checkbox">
          <input type="radio" name="type-radio" value="a"><label>xxxx</label>
        </span>
        <span class="order-item-checkbox">
          <input type="radio" name="type-radio" value="b"><label>xxxx</label>
        </span>
        <span class="order-item-checkbox">
          <input type="radio" name="type-radio" value="c"><label>xxxx</label>
        </span>
      </div>
    </div>
    <div class="col-md-2">
      <button class="btn btn-lg btn-success btn-block">check it</button>
    </div>
  </div>
  <div class="col-md-9 vehicle-list-box">
    <div class="list-group">
      <div class="media">
        <div class="media-left">
          <a href="#">
            <img class="media-object" src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9InllcyI/PjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB3aWR0aD0iNjQiIGhlaWdodD0iNjQiIHZpZXdCb3g9IjAgMCA2NCA2NCIgcHJlc2VydmVBc3BlY3RSYXRpbz0ibm9uZSI+PCEtLQpTb3VyY2UgVVJMOiBob2xkZXIuanMvNjR4NjQKQ3JlYXRlZCB3aXRoIEhvbGRlci5qcyAyLjYuMC4KTGVhcm4gbW9yZSBhdCBodHRwOi8vaG9sZGVyanMuY29tCihjKSAyMDEyLTIwMTUgSXZhbiBNYWxvcGluc2t5IC0gaHR0cDovL2ltc2t5LmNvCi0tPjxkZWZzPjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyI+PCFbQ0RBVEFbI2hvbGRlcl8xNWQxMzIwNmU0YyB0ZXh0IHsgZmlsbDojQUFBQUFBO2ZvbnQtd2VpZ2h0OmJvbGQ7Zm9udC1mYW1pbHk6QXJpYWwsIEhlbHZldGljYSwgT3BlbiBTYW5zLCBzYW5zLXNlcmlmLCBtb25vc3BhY2U7Zm9udC1zaXplOjEwcHQgfSBdXT48L3N0eWxlPjwvZGVmcz48ZyBpZD0iaG9sZGVyXzE1ZDEzMjA2ZTRjIj48cmVjdCB3aWR0aD0iNjQiIGhlaWdodD0iNjQiIGZpbGw9IiNFRUVFRUUiLz48Zz48dGV4dCB4PSIxMy40Njg3NSIgeT0iMzYuNSI+NjR4NjQ8L3RleHQ+PC9nPjwvZz48L3N2Zz4=" alt="...">
          </a>
        </div>
        <div class="media-body vehicle-list-item-info">
          <div class="col-md-3 vehicle-list-item-title">
            <h4 class="media-heading">Media heading</h4>
            ...
          </div>
          <div class="col-md-6 vehicle-list-item-price">
            <h4 class="media-heading">Media heading</h4>
            ...
          </div>
          <div class="col-md-3 vehicle-list-item-btn">
            <button class="btn btn-lg btn-success btn-block">check it</button>
          </div>
        </div>
      </div>
      <div class="media">
        <div class="media-left">
          <a href="#">
            <img class="media-object" src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9InllcyI/PjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB3aWR0aD0iNjQiIGhlaWdodD0iNjQiIHZpZXdCb3g9IjAgMCA2NCA2NCIgcHJlc2VydmVBc3BlY3RSYXRpbz0ibm9uZSI+PCEtLQpTb3VyY2UgVVJMOiBob2xkZXIuanMvNjR4NjQKQ3JlYXRlZCB3aXRoIEhvbGRlci5qcyAyLjYuMC4KTGVhcm4gbW9yZSBhdCBodHRwOi8vaG9sZGVyanMuY29tCihjKSAyMDEyLTIwMTUgSXZhbiBNYWxvcGluc2t5IC0gaHR0cDovL2ltc2t5LmNvCi0tPjxkZWZzPjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyI+PCFbQ0RBVEFbI2hvbGRlcl8xNWQxMzIwNmU0YyB0ZXh0IHsgZmlsbDojQUFBQUFBO2ZvbnQtd2VpZ2h0OmJvbGQ7Zm9udC1mYW1pbHk6QXJpYWwsIEhlbHZldGljYSwgT3BlbiBTYW5zLCBzYW5zLXNlcmlmLCBtb25vc3BhY2U7Zm9udC1zaXplOjEwcHQgfSBdXT48L3N0eWxlPjwvZGVmcz48ZyBpZD0iaG9sZGVyXzE1ZDEzMjA2ZTRjIj48cmVjdCB3aWR0aD0iNjQiIGhlaWdodD0iNjQiIGZpbGw9IiNFRUVFRUUiLz48Zz48dGV4dCB4PSIxMy40Njg3NSIgeT0iMzYuNSI+NjR4NjQ8L3RleHQ+PC9nPjwvZz48L3N2Zz4=" alt="...">
          </a>
        </div>
        <div class="media-body vehicle-list-item-info">
          <div class="col-md-3 vehicle-list-item-title">
            <h4 class="media-heading">Media heading</h4>
            ...
          </div>
          <div class="col-md-6 vehicle-list-item-price">
            <h4 class="media-heading">Media heading</h4>
            ...
          </div>
          <div class="col-md-3 vehicle-list-item-btn">
            <button class="btn btn-lg btn-success btn-block">check it</button>
          </div>
        </div>
      </div>
      </div>
  </div>
  <div class="col-md-3 vehicle-list-lbs">
  </div>
</div>
<%@include file="include/footer.jsp"%>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="<%=request.getContextPath()%>/static/js/index/ie10-viewport-bug-workaround.js"></script>
</body>
