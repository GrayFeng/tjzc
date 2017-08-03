package cn.tjzc.my.service.impl;

import cn.tjzc.common.pojo.Customer;
import cn.tjzc.my.dao.ICustomerDao;
import cn.tjzc.my.service.ICustomerService;
import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by GrayF on 2017/8/3.
 */
@Service
public class CustomerService implements ICustomerService{

    @Autowired
    private ICustomerDao customerDao;

    @Override
    @Transactional(readOnly=false,rollbackFor=Throwable.class)
    public void addCustomer(Customer customer) {
        if(customer != null
                && StringUtils.isNotEmpty(customer.getPassword())){
            customer.setPassword(DigestUtils.md5Hex(customer.getPassword()));
        }
        customerDao.addCustomer(customer);
    }

    @Override
    public Customer getCustomerByloginName(String loginName) {
        return customerDao.getCustomerByloginName(loginName);
    }
}
