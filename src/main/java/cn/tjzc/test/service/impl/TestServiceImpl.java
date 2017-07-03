package cn.tjzc.test.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tjzc.common.pojo.City;
import cn.tjzc.test.dao.ITestDao;
import cn.tjzc.test.service.ITestService;

/**
 * Description: TestServiceImpl.java
 * All Rights Reserved.
 * @version 1.0  2014年7月25日 下午1:36:39  
 * @author Gray(tyfjy823@gmail.com)
 */

@Service
public class TestServiceImpl implements ITestService{
	
	@Autowired
	private ITestDao testDao;

	@Override
	public void test() {
		List<City> cityList = testDao.getCityList();
		if(cityList != null){
			for(City city : cityList){
				System.out.println(city.getName());
			}
		}
	}

}
