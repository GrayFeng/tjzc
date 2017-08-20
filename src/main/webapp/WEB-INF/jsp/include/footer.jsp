<%--
  Created by IntelliJ IDEA.
  User: GrayF
  Date: 2017/7/4
  Time: 上午1:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
  <!-- /END THE FEATURETTES -->
  <!-- FOOTER -->
  <footer>
    <div class="container footer-characteristic">
      <div class="row hot-car-list">
        <div class="col-xs-2 col-md-2">
          <img src="<%=request.getContextPath()%>/static/image/footer-icon-cx1.png">
          <div class="caption">
            <h4>多种车型</h4>
          </div>
        </div>
        <div class="col-xs-2 col-md-2">
            <img src="<%=request.getContextPath()%>/static/image/footer-icon-fc.png">
          <div class="caption">
            <h4>房车出游</h4>
          </div>
        </div>
        <div class="col-xs-2 col-md-2">
            <img src="<%=request.getContextPath()%>/static/image/footer-icon-bz.png">
          <div class="caption">
            <h4>安全保障</h4>
          </div>
        </div>
        <div class="col-xs-2 col-md-2">
            <img src="<%=request.getContextPath()%>/static/image/footer-icon-24.png">
          <div class="caption">
            <h4>24小时服务</h4>
          </div>
        </div>
        <div class="col-xs-2 col-md-2">
            <img src="<%=request.getContextPath()%>/static/image/footer-icon-kj1.png">
          <div class="caption">
            <h4>快速快捷</h4>
          </div>
        </div>
      </div>
    </div>
    <div class="container footer-info-box">
      <dl>
        <dt>用户指南</dt>
        <dd>
          <a href="<%=request.getContextPath()%>/reg.do">用户注册</a>
          <a href="<%=request.getContextPath()%>/help.do">提交订单</a>
          <a href="<%=request.getContextPath()%>/help.do">修改密码</a>
        </dd>
      </dl>
      <dl>
        <dt>帮助中心</dt>
        <dd>
          <a href="<%=request.getContextPath()%>/contactus.do">修改订单</a>
          <a href="<%=request.getContextPath()%>/contactus.do">取消订单</a>
          <a href="<%=request.getContextPath()%>/contactus.do">联系我们</a>
        </dd>
      </dl>
      <dl>
        <dt>我的中心</dt>
        <dd>
          <a href="<%=request.getContextPath()%>/help.do">订单查询</a>
          <a href="<%=request.getContextPath()%>/help.do">信息修改</a>
          <a href="<%=request.getContextPath()%>/contactus.do">用车须知</a>
        </dd>
      </dl>
      <dl>
        <dd>
          <a href="#" class="thumbnail">
            <img src="<%=request.getContextPath()%>/static/image/footer-qrcode.jpg">
          </a>
        </dd>
      </dl>
      <dl>
        <dd style="text-align: left;padding-left: 30px;">
          <br> QQ:<br>11111111<br><br>
          联系电话:<br>4000000000
        </dd>
      </dl>
      </div>
    <!--<p class="pull-right"><a href="#">Back to top</a></p>-->
    <p>&copy; 2017 大行道, Inc. &middot; <a href="#">津ICP备000000000号</a><!-- &middot; <a href="#">Terms</a>--></p>
  </footer>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="<%=request.getContextPath()%>/static/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/static/js/common.js"></script>
