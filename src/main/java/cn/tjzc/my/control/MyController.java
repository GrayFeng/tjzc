package cn.tjzc.my.control;

import java.util.Map;
import java.util.List;
import cn.tjzc.common.pojo.Customer;
import cn.tjzc.common.pojo.Order;
import cn.tjzc.common.pojo.Result;
import cn.tjzc.rent.dao.IRentDao;
import com.google.common.collect.Maps;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by GrayF on 2017/7/8.
 */
@Controller
public class MyController {

    @Autowired
    private IRentDao rentDao;

    @RequestMapping("/my/index")
    public String index(){
        return "my";
    }


    @RequestMapping("/api/my/getOrderList")
    @ResponseBody
    private String getOrderList(HttpServletRequest request){
        Result result = Result.getSuccessResult();
        Customer customer = (Customer)request.getSession().getAttribute("customer");
        if(customer != null){
            Map<String,Object> map = Maps.newHashMap();
            map.put("customerId",customer.getId());
            List<Order> orderList = rentDao.getOrderList(map);
            result.setRe(orderList);
        }
        return result.toJSONString();
    }
}
