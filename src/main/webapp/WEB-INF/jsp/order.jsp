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
                <a href="#rzbc" aria-controls="rzbc" role="tab" data-toggle="tab">日租包车</a>
            </li>
            <li role="presentation">
                <a href="#jcjs" aria-controls="jcjs" role="tab" data-toggle="tab">机场接送</a>
            </li>
            <li role="presentation">
                <a href="#czjs" aria-controls="czjs" role="tab" data-toggle="tab">车站接送</a>
            </li>
            <li role="presentation">
                <a href="#czdz" aria-controls="czdz" role="tab" data-toggle="tab">长租短租</a>
            </li>
            <li role="presentation">
                <a href="#qybc" aria-controls="qybc" role="tab" data-toggle="tab">企业包车</a>
            </li>
        </ul>

        <!-- Tab panes -->
        <div class="tab-content">
            <div id="common-order-item">
                <div class="order-item">
                    <label class="order-item-label">用车时间</label><input id="orderTime" readonly="readonly" class="order-item-input form-control" type="text"
                                                                       placeholder="请选择用车时间">
                </div>
                <div class="order-item">
                    <label class="order-item-label">出发地点</label><input id="orderStartAddress" readonly="readonly" class="order-item-input form-control" type="text"
                                                                       placeholder="请选择出发地点">
                </div>
                <div class="order-item">
                    <label class="order-item-label">出发地点</label><input id="orderEndAddress" readonly="readonly" class="order-item-input form-control" type="text"
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
                </div>
                <div role="tabpanel" class="tab-pane active" id="rzbc">
                    <div class="order-item" style="margin-bottom: 25px;" >
                        <label class="order-item-label">包车天数</label>
                        <span class="order-item-checkbox" style="margin-left: 13px;">
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
                <div role="tabpanel" class="tab-pane" id="jcjs">
                    <div class="order-item">
                        <label class="order-item-label">航&nbsp;&nbsp;班&nbsp;&nbsp;号</label>
                        <input id="orderFlightNumbe" class="order-item-input form-control" type="text" placeholder="请输入航班号">
                    </div>
                    <div class="order-item">
                        <span class=" order-item-checkbox-small">
                          <input type="radio" name="type-radio" value="a"><label>接机</label>
                        </span>
                        <span class="order-item-checkbox-small ">
                          <input type="radio" name="type-radio" value="b"><label>送机</label>
                        </span>
                        |
                         <span class="order-item-checkbox-small">
                          <input type="radio" name="type-radio" value="a"><label>单程</label>
                        </span>
                        <span class="order-item-checkbox-small">
                          <input type="radio" name="type-radio" value="b"><label>往返</label>
                        </span>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="czjs">
                    <div class="order-item">
                        <label class="order-item-label">车&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;次</label>
                        <input id="orderTrainNumbe" class="order-item-input form-control" type="text" placeholder="请输入车次">
                    </div>
                    <div class="order-item">
                        <span class=" order-item-checkbox-small">
                          <input type="radio" name="type-radio" value="a"><label>接站</label>
                        </span>
                        <span class="order-item-checkbox-small ">
                          <input type="radio" name="type-radio" value="b"><label>送站</label>
                        </span>
                        |
                         <span class="order-item-checkbox-small">
                          <input type="radio" name="type-radio" value="a"><label>单程</label>
                        </span>
                        <span class="order-item-checkbox-small">
                          <input type="radio" name="type-radio" value="b"><label>往返</label>
                        </span>
                    </div>
                </div>
            <div role="tabpanel" class="tab-pane" id="czdz">
                <div class="order-item" style="margin-top: 30px;">
                    <label class="order-item-label">用车时间</label><input id="orderCZTime" readonly="readonly" class="order-item-input form-control" type="text"
                                                                       placeholder="请选择用车时间">
                </div>
                <div class="order-item" style="margin-top: 30px;">
                    <label class="order-item-label">选择车型</label>
                    <select class="form-control order-item-input" id="orderCZVehicle">
                        <option value="0">宝马5系</option>
                        <option value="1">凯越</option>
                        <option value="2">GL8</option>
                    </select>
                </div>
                <div class="order-item" style="margin-top: 30px;margin-bottom: 30px;">
                    <label class="order-item-label">选择租期</label>
                    <select class="form-control order-item-input" id="orderZQ">
                        <option value="1">1个月 短租</option>
                        <option value="2">2个月 短租</option>
                        <option value="3">3个月 短租</option>
                        <option value="4">4个月 长租</option>
                        <option value="5">5个月 长租</option>
                        <option value="6">6个月 长租</option>
                    </select>
                </div>
            </div>
            <div role="tabpanel" class="tab-pane" id="qybc">
                <div class="order-item" style="margin-top: 30px;">
                    <label class="order-item-label">车&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;型</label>
                    <input id="orderQYBCVehicle" class="order-item-input form-control" type="text" placeholder="请输入车型">
                </div>

                <div class="order-item" style="margin-top: 30px;">
                    <label class="order-item-label">其他需求</label>
                    <input id="orderQYBCOther" class="order-item-input form-control" type="text" placeholder="请输入其他需求">
                </div>
                <div class="order-item" style="margin-top: 30px;margin-bottom: 30px">
                    <label class="order-item-label">选择租期</label>
                    <select class="form-control order-item-input" id="orderQYBCZQ">
                        <option value="3">3年</option>
                        <option value="4">4年</option>
                        <option value="5">5年</option>
                        <option value="6">6年</option>
                        <option value="7">7年</option>
                        <option value="8">8年</option>
                    </select>
                </div>
            </div>
                <div class="order-item">
                    <button type="button" class="btn btn-lg btn-success">预订</button>
                </div>
        </div>

    </div>
</div>