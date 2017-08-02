package cn.tjzc.my.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by GrayF on 2017/8/3.
 */
@Controller
public class RegController {

    @RequestMapping("reg")
    public String login(){
        return "reg";
    }
}
