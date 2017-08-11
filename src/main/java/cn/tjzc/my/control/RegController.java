package cn.tjzc.my.control;

import cn.tjzc.common.annotation.NotNeedLogin;
import cn.tjzc.common.enums.EEchoCode;
import cn.tjzc.common.pojo.Customer;
import cn.tjzc.common.pojo.Result;
import cn.tjzc.common.utils.SmsUtils;
import cn.tjzc.my.service.ICustomerService;
import org.apache.commons.lang.RandomStringUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

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
    public String add(Customer customer, HttpServletRequest request){
        Result result = Result.getSuccessResult();
        if(customer != null){
            String validateCode = (String)request.getSession().getAttribute("regValidateCode");
            if(StringUtils.isEmpty(validateCode)
                    || !validateCode.equalsIgnoreCase(customer.getValidateCode())){
                result.setStatus(EEchoCode.ERROR.getCode());
                result.setMsg("验证码错误");
            }else{
                Customer oldCustomer = customerService.getCustomerByloginName(customer.getLoginName());
                if(oldCustomer == null || oldCustomer.getId() == null){
                    customerService.addCustomer(customer);
                    result.setRe(customer.getId());
                }else{
                    result.setStatus(EEchoCode.ERROR.getCode());
                    result.setMsg("已存在相同用户");
                }
            }
        }
        return result.toJSONString();
    }

    @RequestMapping("/api/reg/sendValidateCode")
    @ResponseBody
    @NotNeedLogin
    public String add(String mobile, HttpServletRequest request){
        Result result = Result.getSuccessResult();
        if(StringUtils.isNotEmpty(mobile)){
            String code = RandomStringUtils.random(4,true,true);
            request.getSession().setAttribute("regValidateCode", code);
            String bizId = SmsUtils.send(mobile,"{ \"code\":\"" + code + "\"}","SMS_82240241");
            result.setRe(bizId);
        }
        return result.toJSONString();
    }

}
