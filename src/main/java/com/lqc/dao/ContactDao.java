package com.lqc.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.lqc.entity.Message;

public interface ContactDao {
	@Insert("INSERT INTO `lqcmall`.`message` (`message_email`, `message_content`) VALUES (#{message_email}, #{message_content})")
	public int addMessage(Message message);
	@Select("select * from message")
	public List<Map<String, Object>> getMessage();
	@Update("update message set message_state=1 where message_id=#{message_id}")
	public int updateMessage(int message_id);
	@Delete("delete from message where message_id=#{message_id}")
	public int deleteMessage(int message_id);
}
