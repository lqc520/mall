package lqcmall.service;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.lqc.service.UserService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:config/applicationContext.xml")
public class UserServiceTest {
	@Resource
	private UserService userService = null;
	/*private Logger log = LoggerFactory.getLogger(this.getClass());*/
	
	@Test
	public void findUserByEmailAndPassword(){
		Map<String, Object> map1 = new HashMap<String, Object>();
		String email="1402548358@qq.com";
		String password="11";
		map1.put("email", email);
		map1.put("password", password);
		Map<String, Object> map = userService.findUserByEmailAndPassword(map1);
		System.out.println(map);
	}
	@Test
	public void updatePasswordByCode(){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("code", "49e7b5b1a4594f99b897a63e9fe6fde4");
		map.put("password", "123456");
		System.out.println(map);
		userService.updatePasswordByCode(map);
	}
	@Test
	public void activateUser(){
		userService.activateUser("49e7b5b1a4594f99b897a63e9fe6fde4");
	}
}
