package cn.tjzc.tours.control;

import cn.tjzc.common.annotation.NotNeedLogin;
import cn.tjzc.common.pojo.Picture;
import cn.tjzc.common.pojo.Result;
import cn.tjzc.tours.dao.IPictureDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by GrayF on 2017/7/13.
 */
@Controller
public class ToursController {

    @Autowired
    private IPictureDao pictureDao;

    @RequestMapping("/tours/index")
    public ModelAndView index(){
        ModelAndView mav = new ModelAndView("tours");
        List<Picture> domesticList = pictureDao.getPictureList(1);
        if(domesticList != null && domesticList.size() > 0){
            mav.addObject("domesticList",domesticList);
        }

        List<Picture> abroadList = pictureDao.getPictureList(2);
        if(abroadList != null && abroadList.size() > 0){
            mav.addObject("abroadList",abroadList);
        }

        List<Picture> businessList = pictureDao.getPictureList(3);
        if(businessList != null && businessList.size() > 0){
            mav.addObject("businessList",businessList);
        }
        return mav;
    }


    @RequestMapping("/api/tours/getPicList")
    @ResponseBody
    @NotNeedLogin
    public String getPictureList(@RequestParam(defaultValue = "1")Integer type){
        Result result = Result.getSuccessResult();
        List<Picture> picList = pictureDao.getPictureList(type);
        result.setRe(picList);
        return result.toJSONString();
    }
}
