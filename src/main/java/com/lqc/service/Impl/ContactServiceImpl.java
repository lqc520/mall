package com.lqc.service.Impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lqc.dao.ContactDao;
import com.lqc.entity.Message;
import com.lqc.service.ContactService;
@Service
public class ContactServiceImpl implements ContactService {
	@Resource
	private ContactDao contactDao = null;
	@Override
	public boolean addMessage(Message message) {
		return contactDao.addMessage(message)>0;
	}

	@Override
	public List<Map<String, Object>> getMessage() {
		return contactDao.getMessage();
	}

	@Override
	public boolean updateMessage(int message_id) {
		return contactDao.updateMessage(message_id)>0;
	}

	@Override
	public boolean deleteMessage(int message_id) {
		return contactDao.deleteMessage(message_id)>0;
	}

	

}
