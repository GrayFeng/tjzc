package cn.tjzc.test.control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.tjzc.test.service.ITestService;

/**
 * Description: TestController.java
 * All Rights Reserved.
 * @version 1.0  2014年7月25日 下午1:35:29  
 * @author Gray(tyfjy823@gmail.com)
 */


@Controller
@RequestMapping("/api")
public class TestController {

	@Autowired
	private ITestService testService;
	
	@ResponseBody
	@RequestMapping("test")
	public String test(){
		testService.test();
		return "test";
	}
}
