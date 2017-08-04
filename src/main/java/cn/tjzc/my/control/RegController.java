package cn.tjzc.my.control;

import cn.tjzc.common.annotation.NotNeedLogin;
import cn.tjzc.common.enums.EEchoCode;
import cn.tjzc.common.pojo.Customer;
import cn.tjzc.common.pojo.Result;
import cn.tjzc.my.service.ICustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by GrayF on 2017/8/3.
 */
@Controller
public class RegController {

    @Autowired
    private ICustomerService customerService;

    @RequestMapping("reg")
    public String login(){
        return "reg";
    }

    @RequestMapping("/api/reg/add")
    @ResponseBody
    @NotNeedLogin
    public String add(Customer customer){
        Result result = Result.getSuccessResult();
        Customer oldCustomer = customerService.getCustomerByloginName(customer.getLoginName());
        if(oldCustomer == null || oldCustomer.getId() == null){
            customerService.addCustomer(customer);
            result.setRe(customer.getId());
        }else{
            result.setStatus(EEchoCode.ERROR.getCode());
            result.setMsg("已存在相同用户");
        }
        return result.toJSONString();
    }
}
