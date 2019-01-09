package com.lqc.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.lqc.entity.User;
import com.lqc.service.ProductService;
import com.lqc.service.UserService;

/** 
 		* @author : lingQiCheng
 		* @Description : UserServlet
 		* @CreateDate : 2018年12月19日 下午11:25:21 
 		* @lastModified : 2018年12月19日 下午11:25:21 
 		* @version :   v1.0
 	*/  
@Controller
public class UserController {
	@Resource
	private UserService userService = null;
	@Resource
	private ProductService productService=null;
	
	/**
	 * @param firstName 姓氏
	 * @param lastName	名字
	 * @param inputEmail 邮箱
	 * @param inputPassword	密码
	 * @param request	
	 * @return 转发到登录界面
	 */
	@RequestMapping("addUserByEmail")
	public String addUserByEmail(String firstName,String lastName,String inputEmail,String inputPassword,HttpServletRequest request){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("name", firstName+lastName);
		map.put("email", inputEmail);
		map.put("password", inputPassword);
		System.out.println(map);
		userService.addUserByEmail(map);
		return "login";
	}
	
	/**
	 * @param code 获取激活码UUID UUID含义是通用唯一识别码 (Universally Unique Identifier)
	 * @param request
	 * @return 跳转到登录界面
	 */
	@RequestMapping("/{code}/activateUser")
	public String activateUser(@PathVariable String code,HttpServletRequest request){
		userService.activateUser(code);
		System.out.println("用户激活成功");
		return "redirect:/login.html";
	}
	
	/**
	 * @param inputEmail 用户名
	 * @param inputPassword 密码
	 * @param session 存登入用户信息
	 * @return 转发到登录界面
	 */
	@RequestMapping("userlogin")
	public String findUserByEmailAndPassword(String inputEmail,String inputPassword,HttpSession session,HttpServletRequest request){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("email", inputEmail);
		map.put("password", inputPassword);
		Map<String, Object> user = userService.findUserByEmailAndPassword(map);
		if(user==null||user.get("state").equals(0)){
			return "login";
		}
		List<Map<String, Object>> productAll = productService.findAllProduct();
		List<Map<String, Object>> productTypeAll = productService.findAllProductType();
		request.setAttribute("productAll", productAll);
		request.setAttribute("productTypeAll", productTypeAll);
		List<Map<String, Object>> userCart = productService.getProductCardByUid((int)user.get("id"));
		session.setAttribute("user", user);
		session.setAttribute("userCart", userCart);
		System.out.println(user);
		return "index";
	}
	/**
	 * @param inputEmail 用户邮箱  发送邮件让用户改密码
	 * @return  登录界面
	 */
	@RequestMapping("userUpdatePassword")
	public String userUpdatePasswordByEmail(String inputEmail){
		userService.SendCodeByEmail(inputEmail);
		return "login";
	}
	/**
	 * @param code UUID码
	 * @param redirectAttributes 传值到reset-password.html
	 * @return 用户密码重置界面
	 */
	@RequestMapping("/{code}/resetPassword")
	public String resetPasswordByCode(@PathVariable String code,RedirectAttributes redirectAttributes){
//		redirectAttributes.addAttribute("code",code);
		redirectAttributes.addFlashAttribute("code",code);
		System.out.println(code);
		return "redirect:/reset-password.html";
	}
	/**
	 * @param code
	 * @param inputPassword 用户重置的密码
	 * @return 登录界面
	 */
	@RequestMapping("userResetPassword")
	public String resetPasswordByCode(String code,String inputPassword){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("code", code);
		map.put("password", inputPassword);
		System.out.println(map);
		userService.updatePasswordByCode(map);
		return "login";
	}
	 /**
	 		* Description: 查询出所有用户 to 用户管理界面
	 		* Author: linQiCheng
	 		* Version: 1.0
	 		* Create Date Time: 2019年1月1日 上午10:25:36
	 	*/
	@RequestMapping("userManager")
	public String getAllUser(Model model){
		model.addAttribute("users", userService.getAllUser());
		return "userManager";
	}
	@RequestMapping("updateUser")
	public String updateUser(User user,Model model){
		System.out.println(user);
		userService.updateUserById(user);
		return "redirect:/userManager.html";
	}
}
