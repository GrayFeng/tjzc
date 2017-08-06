package cn.tjzc.common.filter;

import org.apache.commons.lang.StringUtils;
import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Description: UserAgentFilter.java
 * All Rights Reserved.
 * @version 1.0  2014年3月10日 下午1:06:31  
 * @author Gray(jy.feng@zuche.com) 
 */

public class UserAgentFilter implements Filter{

	/**
	 * 移动设备User-Agent匹配正则
	 */
	private static String regex = "[\\w\\W]+(Android|iPhone|BlackBerry|PlayBook|BB10|Symbian|IEMobile|Kindle|Maemo|UCWEB)[\\w\\W]+";


	@Override
	public void destroy() {
	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse rep,
			FilterChain fc) throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest)req;
		HttpServletResponse response = (HttpServletResponse)rep;
		String userAgent = getUserAgent(request);
		if(userAgent != null
				&& !request.getRequestURI().contains("/api")
				&& isMobileBrowser(userAgent)){
			String path = request.getContextPath() + "/h5/index.html";
			response.sendRedirect(path);
			return;
		}
		fc.doFilter(req, rep);
	}
	
	@Override
	public void init(FilterConfig arg0) throws ServletException {
	}

	/**
	 * 验证指定的userAgent信息是否属于移动浏览器
	 * @param userAgent
	 * @return
	 */
	public static boolean isMobileBrowser(String userAgent){
		if(StringUtils.isNotEmpty(userAgent)){
			return userAgent.matches(regex);
		}
		return false;
	}

	/**
	 * 读取http请求头中的User-Agent信息
	 * @param request
	 * @return
	 */
	public static String getUserAgent(HttpServletRequest request){
		String userAgent = request.getHeader("User-Agent");
		if(StringUtils.isNotEmpty(userAgent)){
			return  userAgent;
		}
		return null;
	}

}
