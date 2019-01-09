package com.lqc.service.Impl;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.lqc.dao.AdminDao;
import com.lqc.entity.Admin;
import com.lqc.service.AdminService;
@Service
public class AdminServiceImpl implements AdminService {
	@Resource
	AdminDao  adminDao =  null;
	@Override
	public boolean addAdmin(Admin admin) {
		return adminDao.addAdmin(admin)>0;
	}
	@Override
	public Admin getAdmin(Admin admin) {
		return adminDao.getAdmin(admin);
	}

}
