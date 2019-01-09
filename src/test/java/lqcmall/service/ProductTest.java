package lqcmall.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.lqc.service.ProductService;

import net.sf.json.JSONArray;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:config/applicationContext.xml")
public class ProductTest {
	@Resource
	private ProductService productService = null;
	@Test
	public void findProductByProductTypeId(){
		List<Map<String, Object>> map_women = productService.findProductByProductTypeId(1);
//		System.out.println(map_women);
		JSONArray product_women = JSONArray.fromObject(map_women);
		System.out.println(product_women);
	}
	@Test
	public void findDeailProduct(){
		Map<String,Object> list = productService.findDeailProductByDid(1);
		System.out.println(list);
	}
	@Test
	public void findDeailImg(){
		 List<Map<String, Object>> list = productService.findDeailImg(1);
		System.out.println(list);
	}
	@Test
	public void getPage(){
		List<Map<String, Object>> page = productService.getProductPage(1, 8);
		System.out.println(page);
		List<Map<String, Object>> page1 = productService.getProductPage(2, 8);
		System.out.println(page1);
	}
	@Test
	public void getPageCount(){
		
		int count = productService.getPageCount(7);
		System.out.println(count);
	}
}
