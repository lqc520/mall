package com.lqc.service;

import java.util.List;
import java.util.Map;

import com.lqc.entity.Message;

public interface ContactService {
	public boolean addMessage(Message message);
	public List<Map<String, Object>> getMessage();
	public boolean updateMessage(int message_id);
	public boolean deleteMessage(int message_id);
}
