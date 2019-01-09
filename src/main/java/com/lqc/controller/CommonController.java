package com.lqc.controller;
import javax.servlet.http.HttpServletRequest;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
 
/** 
 		* @author : lingQiCheng
 		* @Description : CommonServlet 
 		* @CreateDate : 2018年12月19日 下午11:25:34 
 		* @lastModified : 2018年12月19日 下午11:25:34 
 		* @version :   v1.0
 	*/  
@Controller
public class CommonController {
	
	/**
	 * @param request ServletPath
	 * @return ServletPath
	 */
	@RequestMapping("/*")
	public String doForward(HttpServletRequest request){
		String servletPath = request.getServletPath();
		String url = servletPath.replace(".html", "");
		return url;
	}
}
