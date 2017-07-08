package cn.tjzc.my.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by GrayF on 2017/7/8.
 */
@Controller
public class MyController {

    @RequestMapping("/my/index")
    public String index(){
        return "my";
    }
}
