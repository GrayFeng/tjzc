package cn.tjzc.visa.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by GrayF on 2017/7/12.
 */
@Controller
public class VisaController {

    @RequestMapping("/visa/index")
    public String index(){
        return "visa";
    }
}
