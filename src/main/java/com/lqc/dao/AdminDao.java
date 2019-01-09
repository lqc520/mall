package com.lqc.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import com.lqc.entity.Admin;

public interface AdminDao {
	@Insert("insert into admin values(null,#{aname},#{amobile},#{apwd})")
	public int addAdmin(Admin admin);
	@Select("select * from admin where amobile=#{amobile} and apwd=#{apwd}")
	public Admin getAdmin(Admin admin);
}
