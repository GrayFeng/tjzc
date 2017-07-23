package cn.tjzc.rent.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by GrayF on 2017/7/23.
 */
@Controller
public class RentController {


    @RequestMapping("/rent/index")
    public String index(){
        return "rent";
    }
}
