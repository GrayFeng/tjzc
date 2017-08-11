package cn.tjzc.rent.dao;

import cn.tjzc.common.annotation.MyBatisRepository;
import cn.tjzc.common.pojo.CarType;
import java.util.List;
import java.util.Map;

import cn.tjzc.common.pojo.Order;
import org.springframework.stereotype.Repository;

/**
 * Created by GrayF on 2017/8/4.
 */
@Repository
@MyBatisRepository
public interface IRentDao {


    public void addOrder(Order order);


    public List<CarType> getCarTypeList();

    public List<Order> getOrderList(Map<String,Object> map);

    public int getOrderListCount(Map<String,Object> map);

    public String selectSeq(String name);
}
