package com.lqc.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.lqc.entity.User;

 
/** 
 		* @author : lingQiCheng
 		* @Description : UserDao
 		* @CreateDate : 2018年12月19日 下午11:25:09 
 		* @lastModified : 2018年12月19日 下午11:25:09 
 		* @version :   v1.0
 	*/  
public interface UserDao {
	@Insert("insert into user(telphone,password) values(#{tel},#{pwd})")
	public int addUserByTelPhone(Map<String,Object> map);
	@Insert("insert into user(name,email,password,code) values(#{name},#{email},#{password},#{code})")
	public int addUserByEmail(Map<String,Object> map);
	@Update("update user set state = 1 where code=#{code}")
	public int activateUser(String code);
	@Update("update user set password=#{password} where code=#{code}")
	public Integer updatePasswordByCode(Map<String, Object> map);
	@Update("update user set password=#{password} where email=#{email} and code=#{code}")
	public int updatePasswordByEmail(Map<String, Object> map);
	@Select("select * from user where email=#{email} and password=#{password}")
	public Map<String,Object> findUserByEmailAndPassword(Map<String, Object> map);
	@Select("select code from user where email=#{email}")
	public String getCodeByEmail(String email);
	@Select("select * from `user`")
	public List<Map<String,Object>> getAllUser();
	@Update("update user set email=#{email},password=#{password},name=#{name},state=#{state} where id=#{id}")
	public int updateUserById(User user);
	
}
	
