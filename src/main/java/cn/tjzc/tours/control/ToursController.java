package cn.tjzc.tours.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by GrayF on 2017/7/13.
 */
@Controller
public class ToursController {

    @RequestMapping("/tours/index")
    public String index(){
        return "tours";
    }
}
