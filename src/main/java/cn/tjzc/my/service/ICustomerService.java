package cn.tjzc.my.service;

import cn.tjzc.common.pojo.Customer;

/**
 * Created by GrayF on 2017/8/3.
 */
public interface ICustomerService {

    public void addCustomer(Customer customer);

    public Customer getCustomerByloginName(String loginName);
}
