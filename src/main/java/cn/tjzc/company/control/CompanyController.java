package cn.tjzc.company.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by GrayF on 2017/8/14.
 */
@Controller
public class CompanyController {

    @RequestMapping("/company/index")
    public String index(){
        return "company";
    }
}
