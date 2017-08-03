package cn.tjzc.my.dao;

import cn.tjzc.common.annotation.MyBatisRepository;
import cn.tjzc.common.pojo.Customer;
import org.springframework.stereotype.Repository;

/**
 * Created by GrayF on 2017/8/3.
 */
@Repository
@MyBatisRepository
public interface ICustomerDao {

    public void addCustomer(Customer customer);

    public Customer getCustomerByloginName(String loginName);
}
