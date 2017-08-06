package cn.tjzc.my.control;

import java.util.Map;
import java.util.List;
import cn.tjzc.common.pojo.Customer;
import cn.tjzc.common.pojo.Order;
import cn.tjzc.common.pojo.Result;
import cn.tjzc.rent.dao.IRentDao;
import com.google.common.collect.Maps;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
    private String getOrderList(@RequestParam(defaultValue = "1") Integer pageNum,
                                @RequestParam(defaultValue = "2")Integer pageCount,
                                Integer status,
                                String startTime,
                                String endTime,
                                HttpServletRequest request){
        Result result = Result.getSuccessResult();
        Customer customer = (Customer)request.getSession().getAttribute("customer");
        if(customer != null){
            Map<String,Object> map = Maps.newHashMap();
            map.put("customerId",customer.getId());
            if(status != null && status > 0){
                map.put("status",status);
            }
            if(StringUtils.isNotEmpty(startTime) && StringUtils.isNotEmpty(endTime)){
                map.put("startTime",startTime);
                map.put("endTime",endTime);
            }
            int count = rentDao.getOrderListCount(map);
            if(count > 0){
                if((pageNum - 1) * pageCount > count){
                    pageNum = pageNum -1;
                }
                map.put("pageNum",pageNum-1);
                map.put("pageCount",pageCount);
                List<Order> orderList = rentDao.getOrderList(map);
                Map<String,Object> resultMap = Maps.newHashMap();
                resultMap.put("list",orderList);
                resultMap.put("count",count);
                result.setRe(resultMap);
            }
        }
        return result.toJSONString();
    }
}
