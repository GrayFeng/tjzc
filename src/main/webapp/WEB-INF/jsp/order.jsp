<%--
  Created by IntelliJ IDEA.
  User: GrayF
  Date: 2017/7/4
  Time: 上午1:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="container service-type-container">
    <div class="service-type-box">
        <ul class="nav nav-tabs" role="tablist" id="serviceTypeTabs">
            <li role="presentation" class="active">
                <a href="#home" aria-controls="home" role="tab" data-toggle="tab">日租包车</a>
            </li>
            <li role="presentation">
                <a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">接送机</a>
            </li>
            <li role="presentation">
                <a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">接送火车</a>
            </li>
            <li role="presentation">
                <a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">长租短租</a>
            </li>
            <li role="presentation">
                <a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">企业包车</a>
            </li>
        </ul>

        <!-- Tab panes -->
        <div class="tab-content">
                <div class="order-item">
                    <label class="order-item-label">用车时间</label><input id="orderTime" readonly="readonly" class="order-item-input form-control" type="text"
                                                                       placeholder="请选择用车时间">
                </div>
                <div class="order-item">
                    <label class="order-item-label">出发地点</label><input id="orderStartAddress" readonly="readonly" class="order-item-input form-control" type="text"
                                                                       placeholder="请选择出发地点">
                </div>
                <div class="order-item">
                    <label class="order-item-label">送达地点</label><input id="orderEndAddress" readonly="readonly" class="order-item-input form-control" type="text"
                                                                       placeholder="请选择送达地点">
                </div>
                <div class="order-item">
                    <label class="order-item-label">选择车型</label>
                    <select class="form-control order-item-input" id="orderVehicle">
                        <option value="0">宝马5系</option>
                        <option value="1">凯越</option>
                        <option value="2">GL8</option>
                    </select>
                </div>
                <div role="tabpanel" class="tab-pane active" id="home">
                    <div class="order-item" style="margin-top: 15px;" >
                        <label class="order-item-label">包车天数</label>
                        <span class="order-item-checkbox">
                          <input type="radio" name="type-radio" value="a"><label>单次</label>
                        </span>
                        <span class="order-item-checkbox">
                          <input type="radio" name="type-radio" value="b"><label>半天</label>
                        </span>
                        <span class="order-item-checkbox">
                          <input type="radio" name="type-radio" value="c"><label>全天</label>
                        </span>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="profile">
                    <div class="order-item">
                        <label class="order-item-label">航&nbsp;班&nbsp;号</label>
                        <input id="orderFlightNumbe" class="order-item-input form-control" type="text" placeholder="请输入航班号">
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="messages">
                    <div class="order-item">
                        <label class="order-item-label">车&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;次</label>
                        <input id="orderTrainNumbe" class="order-item-input form-control" type="text" placeholder="请输入车次">
                    </div>
                </div>
                <div class="order-item">
                    <button type="button" class="btn btn-lg btn-success">预订</button>
                </div>
        </div>

    </div>
</div>