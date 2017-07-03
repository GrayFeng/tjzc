package cn.tjzc.test.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import cn.tjzc.common.annotation.MyBatisRepository;
import cn.tjzc.common.pojo.City;

/**
 * Description: ITestDao.java
 * All Rights Reserved.
 * @version 1.0  2014年7月25日 下午1:54:28  
 * @author Gray(tyfjy823@gmail.com)
 */

@Repository
@MyBatisRepository
public interface ITestDao {
	
	public List<City> getCityList();

}
