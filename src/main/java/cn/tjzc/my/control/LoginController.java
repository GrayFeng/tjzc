package cn.tjzc.my.control;

import cn.tjzc.common.annotation.NotNeedLogin;
import cn.tjzc.common.pojo.Customer;
import cn.tjzc.common.pojo.Result;
import cn.tjzc.my.service.ICustomerService;
import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;

/**
 * Created by GrayF on 2017/7/5.
 */
@Controller
public class LoginController {

    @Autowired
    private ICustomerService customerService;

    @RequestMapping("login")
    public String index(){
        return "login";
    }


    @RequestMapping("/api/login")
    @ResponseBody
    @NotNeedLogin
    public String login(String loginName,
                        String password,
                        Integer type,
                        HttpServletRequest request,
                        HttpServletResponse response){
        Result result = Result.getSuccessResult();
        if(StringUtils.isNotEmpty(loginName)
                && StringUtils.isNotEmpty(password)){
            password = DigestUtils.md5Hex(password);
            Customer customer = customerService.getCustomerByloginName(loginName);
            if(customer != null
                    && password.equals(customer.getPassword())
                    && customer.getType() == type){
                if(StringUtils.isNotEmpty(customer.getDisplayName())){
                    try {
                        loginName = URLEncoder.encode(customer.getDisplayName(), "utf-8");
                    } catch (UnsupportedEncodingException e) {
                        e.printStackTrace();
                    }
                }else{
                    customer.setDisplayName(loginName);
                }
                result.setRe(loginName);
                Cookie cookie = new Cookie("loginName",loginName);
                cookie.setPath("/");
                response.addCookie(cookie);
                request.getSession().setAttribute("customer",customer);
                return result.toJSONString();
            }
        }
        result.setMsg("用户名或密码错误");
        return result.toJSONString();
    }


    @RequestMapping("/logout")
    public String logout(HttpServletRequest request,
                         HttpServletResponse response){
        request.getSession().removeAttribute("customer");
        Cookie cookie = new Cookie("loginName",null);
        cookie.setPath("/");
        cookie.setMaxAge(0);
        response.addCookie(cookie);
        return "index";
    }
}
