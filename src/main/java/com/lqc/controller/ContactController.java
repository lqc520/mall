package com.lqc.controller;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lqc.entity.Message;
import com.lqc.service.ContactService;

/** 
 		* @author : lingQiCheng
 		* @Description : ContactController 
 		* @CreateDate : 2019年1月2日 下午1:53:20 
 		* @lastModified : 2019年1月2日 下午1:53:20 
 		* @version :   v1.0
 	*/  
@Controller
public class ContactController {
	@Resource
	private ContactService contactService = null;
	 /**
	 		* Description: 添加客户请求帮助信息
	 		* Author: linQiCheng
	 		* Version: 1.0
	 		* Create Date Time: 2019年1月2日 下午1:53:30
	 		* Update Date Time: 
	 	*/
	@RequestMapping("addMessage")
	public String addMessage(Message message){
		System.out.println(message);
		contactService.addMessage(message);
		return "contact";
	}
	 /**
	 		* Description: 获取客户请求帮助信息
	 		* Author: linQiCheng
	 		* Version: 1.0
	 		* Create Date Time: 2019年1月2日 下午1:54:01
	 		* Update Date Time: 
	 	*/
	@RequestMapping("indexManager")
	public String getMessage(Model model){
		List<Map<String, Object>> message = contactService.getMessage();
		System.out.println(message);
		model.addAttribute("message",message);
		return "indexManager";
	}
	
	 /**
	 		* Description: 处理Message 更改state
	 		* Author: linQiCheng
	 		* Version: 1.0
	 		* Create Date Time: 2019年1月2日 下午2:31:23
	 	*/
	@RequestMapping("/{id}/updateMessage")
	public String updateManager(@PathVariable int id){
		contactService.updateMessage(id);
		return "redirect:/indexManager.html";
	}
	 /**
	 		* Description: 删除message
	 		* Author: linQiCheng
	 		* Version: 1.0
	 		* Create Date Time: 2019年1月2日 下午2:31:48
	 	*/
	@RequestMapping("/{id}/deleteMessage")
	public String deleteManager(@PathVariable int id){
		contactService.deleteMessage(id);
		return "redirect:/productManager.html";
	}
}
