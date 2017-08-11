package cn.tjzc.rent.control;

import cn.tjzc.common.annotation.NotNeedLogin;
import cn.tjzc.common.pojo.CarType;
import cn.tjzc.common.pojo.Customer;
import cn.tjzc.common.pojo.Order;
import cn.tjzc.common.pojo.Result;
import cn.tjzc.rent.dao.IRentDao;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by GrayF on 2017/7/23.
 */
@Controller
public class RentController {

    @Autowired
    private IRentDao rentDao;


    @RequestMapping("/rent/index")
    public String index(){
        return "rent";
    }


    @RequestMapping("/api/rent/getCarTypeList")
    @ResponseBody
    @NotNeedLogin
    private String getCarTypeList(){
        Result result = Result.getSuccessResult();
        List<CarType> carTypeList = rentDao.getCarTypeList();
        result.setRe(carTypeList);
        return result.toJSONString();
    }


    @RequestMapping("/api/rent/addOrder")
    @ResponseBody
    private String addOrder(Order order,HttpServletRequest request){
        Result result = Result.getSuccessResult();
        Customer customer = (Customer)request.getSession().getAttribute("customer");
        if(customer != null && order != null){
            order.setCustomerId(customer.getId());
            order.setCustomerType(String.valueOf(customer.getType()));
            order.setCustomerName(customer.getDisplayName());
            if("0".equals(order.getCustomerType())){
                order.setCustomerMobile(customer.getLoginName());
            }else{
                order.setCustomerMobile(customer.getContactMobile());
            }
            String orderSeq = rentDao.selectSeq("seq_order_no");
            int length = 8-orderSeq.length();
            for(int i = 0 ;i < length;i++){
                orderSeq = "0" + orderSeq;
            }
            order.setOrderNo("NO" + orderSeq);
            rentDao.addOrder(order);
            result.setRe(order.getId());
        }
        return result.toJSONString();
    }
}
