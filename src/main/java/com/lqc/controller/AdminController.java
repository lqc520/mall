package com.lqc.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lqc.entity.Admin;
import com.lqc.service.AdminService;

import com.lqc.utils.TelUtils;

/** 
 		* @author : lingQiCheng
 		* @Description : AdminController 
 		* @CreateDate : 2019年1月1日 上午9:56:34 
 		* @lastModified : 2019年1月1日 上午9:56:34 
 		* @version :   v1.0
 	*/  
@Controller
public class AdminController {
	@Resource
	AdminService  adminService = null;
	 /**
	 		* Description: 获取手机验证码
	 		* Author: linQiCheng
	 		* Version: 1.0
	 		* Create Date Time: 2019年1月1日 上午9:57:01
	 		* Update Date Time: 
	 		* @param tel 手机号
	 		* @param session 存验证码
	 	*/
	@RequestMapping("getTelCode")
	public void getTelCode(String tel,HttpSession session){
		String code = TelUtils.getRgeCode(tel);
		session.setAttribute("code", code);
		
	}
	 /**
	 		* Description: 添加管理员用户
	 		* Author: linQiCheng
	 		* Version: 1.0
	 		* Create Date Time: 2019年1月1日 上午9:57:33
	 		* Update Date Time: 
	 	*/
	@RequestMapping("addAdmin")
	public String addAdmin(Admin admin,HttpSession session){
		System.out.println(admin);
		String ucode = (String) session.getAttribute("code");
		if(ucode.equals(admin.getCode())){
			adminService.addAdmin(admin);
		}
		return "adminLogin";
	}
	 /**
	 		* Description: 管理员登入
	 		* Author: linQiCheng
	 		* Version: 1.0
	 		* Create Date Time: 2019年1月1日 上午9:57:52
	 		* Update Date Time: 
	 	*/
	@RequestMapping("adminLoging")
	@ResponseBody
	public String getAdmin(Admin admin1,HttpSession session){
		System.out.println(admin1);
		Admin admin = adminService.getAdmin(admin1);
		if(admin!=null){
			session.setAttribute("admin", admin);
			return "yes";
		}
		return "no";
	}
	 /**
	 		* Description: 管理员退出
	 		* Author: linQiCheng
	 		* Version: 1.0
	 		* Create Date Time: 2019年1月1日 上午9:10:52
	 	*/
	@RequestMapping("adminOut")
	@ResponseBody
	public String adminLogOut(HttpSession session){
		session.removeAttribute("admin");
		/*session.invalidate();*/
		return "ok";
	}
}
