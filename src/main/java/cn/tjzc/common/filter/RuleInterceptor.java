package cn.tjzc.common.filter;

import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.tjzc.common.pojo.Customer;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import cn.tjzc.common.annotation.NotNeedLogin;
import cn.tjzc.common.annotation.NotNeedUID;
import cn.tjzc.common.cache.MemberCache;
import cn.tjzc.common.enums.EEchoCode;
import cn.tjzc.common.pojo.Result;
import cn.tjzc.common.utils.ResultUtil;

/**
 * Description: 登录拦截器
 */
public class RuleInterceptor extends HandlerInterceptorAdapter{

	private Logger logger = LoggerFactory.getLogger(RuleInterceptor.class);
	
	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler)
			throws Exception {
		String uid = request.getParameter("uid");
		String uri = request.getRequestURI();
		Customer customer = (Customer)request.getSession().getAttribute("customer");
		printRequestParams(request);
		HandlerMethod handlerMethod =  (HandlerMethod)handler;
		Result result = null;
		if(uri.contains("/api/")){
			if(handlerMethod.getMethodAnnotation(NotNeedLogin.class) == null
					&& customer == null){
					result = new Result(EEchoCode.NOT_LOGIN.getCode(),"用户未登录");
			}
			if(result != null){
				response.setContentType("text/plain;charset=UTF-8");  
				OutputStream os = response.getOutputStream();
				os.write(ResultUtil.getJsonString(result).getBytes(Charset.forName("UTF-8")));
				os.flush();
				os.close();
				response.flushBuffer();
				return false;
			}
		}else if(uri.contains("/my/") && customer == null){
			response.sendRedirect(request.getContextPath() + "/login.do");
			return false;
		}
		return true;
	}
	
	private void printRequestParams(HttpServletRequest req){
		StringBuffer sb = new StringBuffer();
		Map<String,String[]> paramsMap = req.getParameterMap();
		if(paramsMap != null){
			for(Object key : paramsMap.keySet()){
				String[] values = paramsMap.get(key);
				if(values != null){
					for(String value : values){
						sb.append(key + "=" + value +";");
					}
					sb.append("&");
				}
			}
		}
		sb.append(req.getQueryString());
		logger.info("api-rev:" + sb.toString());
	}
}
