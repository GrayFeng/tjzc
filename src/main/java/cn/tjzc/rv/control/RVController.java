package cn.tjzc.rv.control;

import cn.tjzc.common.pojo.Picture;
import cn.tjzc.tours.dao.IPictureDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import java.util.List;

/**
 * Created by GrayF on 2017/8/14.
 */
@Controller
public class RVController {

    @Autowired
    private IPictureDao pictureDao;


    @RequestMapping("/rv/index.do")
    public ModelAndView index(){
        ModelAndView mav = new ModelAndView("rv");
        List<Picture> list = pictureDao.getPictureList(5);
        mav.addObject("rvList",list);
        return mav;
    }
}
