package com.lqc.service.Impl;

import java.util.List;
import java.util.Map;
import java.util.UUID;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.lqc.dao.UserDao;
import com.lqc.entity.User;
import com.lqc.service.UserService;
import com.lqc.utils.EmailUtils;
import com.lqc.utils.MailUtils;

/** 
 		* @author : lingQiCheng
 		* @Description : UserServiceImpl 
 		* @CreateDate : 2018年12月19日 下午11:20:06 
 		* @lastModified : 2018年12月19日 下午11:20:06 
 		* @version :   v1.0
 	*/  
@Service
public class UserServiceImpl implements UserService{
	@Resource
	private UserDao userDao = null;
	@Override
	public boolean addUserByEmail(Map<String, Object> map) {
//		UUID含义是通用唯一识别码 (Universally Unique Identifier)
		String code =UUID.randomUUID().toString().replace("-", "");
		map.put("code", code);
		if(userDao.addUserByEmail(map)>0){
			/*方式一 */
			String content = "<html><head></head><body><h1>这是一封激活邮件,激活请点击以下链接</h1><h3><a href='http://lqcnb.cn:8080/lqcmall/code="
			+ code +"/activateUser.html"+ "'>http://lqcnb.cn:8080/lqcmall/" + code +"/activateUser.html"
			+ "</href></h3></body></html>";
			new Thread(new MailUtils((String)map.get("email"),content)).start();
			
			//方式二  比较慢
			/*String content = "<html><head></head><body><h1>这是一封激活邮件,激活请点击以下链接</h1><h3><a href='http://localhost:8080/lqcmall/code="
					+ code +"/activateUser.html"+ "'>http://localhost:8080/lqcmall/" + code +"/activateUser.html"
					+ "</href></h3></body></html>";
			EmailUtils.sendEmail((String)map.get("email"), "账号激活", content);*/
			return true;
		}
		return false;
		
	}
	@Override
	public boolean activateUser(String code) {
		return userDao.activateUser(code)>0;
	}
	@Override
	public Map<String, Object> findUserByEmailAndPassword(Map<String, Object> map) {
		return userDao.findUserByEmailAndPassword(map);
	}
	@Override
	public boolean updatePasswordByEmail(Map<String, Object> map) {
		String code = (String) map.get("code");
		String content="您的验证码是 :"+code;
		EmailUtils.sendEmail((String)map.get("email"), "重置密码", content);
		return userDao.updatePasswordByEmail(map)>0;
	}
	@Override
	public String getCodeByEmail(String email) {
		return userDao.getCodeByEmail(email);
	}
	@Override
	public boolean SendCodeByEmail(String email) {
		String code=userDao.getCodeByEmail(email);
		if(code!=null){
			String content = "<html><head></head><body><h1>这是一封重置密码邮件,激活请点击以下链接</h1><h3><a href='http://lqcnb.cn:8080/lqcmall/code="
					+ code +"/resetPassword.html"+ "'>http://lqcnb.cn:8080/lqcmall/" + code +"/resetPassword.html"
					+ "</href></h3></body></html>";
			new Thread(new MailUtils(email,content)).start();
			return true;
		}else{
			return false;
		}
	}
	@Override
	public boolean updatePasswordByCode(Map<String, Object> map) {
		return userDao.updatePasswordByCode(map)>0;
	}
	@Override
	public List<Map<String, Object>> getAllUser() {
		return userDao.getAllUser();
	}
	@Override
	public int updateUserById(User user) {
		return userDao.updateUserById(user);
	}
	
	

}
