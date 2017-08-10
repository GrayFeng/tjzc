package cn.tjzc.tours.dao;

import cn.tjzc.common.annotation.MyBatisRepository;
import cn.tjzc.common.pojo.Picture;
import org.springframework.stereotype.Repository;
import java.util.List;

/**
 * Created by GrayF on 2017/8/10.
 */

@Repository
@MyBatisRepository
public interface IPictureDao {


    public List<Picture> getPictureList(Integer type);
}
