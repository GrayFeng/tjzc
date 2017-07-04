package cn.tjzc.login.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by GrayF on 2017/7/5.
 */
@Controller
public class LoginController {

    @RequestMapping("login")
    public String login(){
        return "login";
    }
}
