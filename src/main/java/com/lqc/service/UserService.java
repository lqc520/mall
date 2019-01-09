package com.lqc.service;
import java.util.List;
import java.util.Map;

import com.lqc.entity.User;
/** 
 		* @author : lingQiCheng
 		* @Description : UserService 
 		* @CreateDate : 2018年12月19日 上午11:20:10 
 		* @lastModified : 2018年12月21日 下午12:16:45 
 		* @version :   V1.0
 	*/  
public interface UserService {
	public boolean addUserByEmail(Map<String,Object> map);
	public boolean activateUser(String code);
	public Map<String,Object> findUserByEmailAndPassword(Map<String, Object> map);
	public boolean updatePasswordByEmail(Map<String, Object> map);
	public String getCodeByEmail(String email);
	public boolean SendCodeByEmail(String email);
	public boolean updatePasswordByCode(Map<String, Object> map);
	public List<Map<String,Object>> getAllUser();
	public int updateUserById(User user);
}
