package cn.tjzc.vehicle.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by GrayF on 2017/7/5.
 */
@Controller
public class VehicleListController {

    @RequestMapping("vehicle/list")
    public String index(){
        return "vehicleList";
    }
}
