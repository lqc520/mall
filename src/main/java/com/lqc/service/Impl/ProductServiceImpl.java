package com.lqc.service.Impl;

import java.io.File;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.lqc.dao.ProductDao;
import com.lqc.entity.AddInfo;
import com.lqc.entity.Product;
import com.lqc.service.ProductService;
@Service
public class ProductServiceImpl implements ProductService{
	@Resource
	private ProductDao productDao = null;
	@Override
	public List<Map<String, Object>> findProductByProductTypeId(int product_type_id) {
		return productDao.findProductByProductTypeId(product_type_id);
	}
	@Override
	public List<Map<String, Object>> findAllProduct() {
		return productDao.findAllProduct();
	}
	@Override
	public List<Map<String, Object>> findAllProductType() {
		return productDao.findAllProductType();
	}
	@Override
	public Map<String,Object> findDeailProductByDid(int product_dimg_id) {
		return productDao.findDeailProductByDid(product_dimg_id);
	}
	@Override
	public List<Map<String, Object>> findDeailImg(int product_dimg_id) {
		return productDao.findDeailImg(product_dimg_id);
	}
	@Override
	public List<Map<String, Object>> findDetailByDid(int product_dimg_id) {
		return productDao.findDetailByDid(product_dimg_id);
	}
	@Override
	public boolean addProductReview(Map<String, Object> map) {
		return productDao.addProductReview(map)>0;
	}
	@Override
	public Map<String, Object> findProfuctAddInfo(int product_id) {
		return productDao.findProfuctAddInfo(product_id);
	}
	@Override
	public List<Map<String, Object>> findReviewByPid(int product_id) {
		return productDao.findReviewByPid(product_id);
	}
	@Override
	public int findReviewCountByPid(int product_id) {
		return productDao.findReviewCountByPid(product_id);
	}
	@Override
	public List<Map<String, Object>> getRelateProductByPtId(int product_type_id) {
		return productDao.getRelateProductByPtId(product_type_id);
	}
	@Override
	public boolean addProductCard(Map<String, Object> map) {
		return productDao.addProductCard(map)>0;
	}
	@Override
	public Map<String, Object> getProductByPid(int product_id) {
		return productDao.getProductByPid(product_id);
	}
	@Override
	public List<Map<String, Object>> getProductCardByUid(int uid) {
		return productDao.getProductCardByUid(uid);
	}
	@Override
	public boolean updateCartCountByCid(Map<String,Object> map) {
		return productDao.updateCartCountByCid(map)>0;
	}
	@Override
	public boolean addOrder(Map<String, Object> map) {
		return productDao.addOrder(map)>0;
	}
	@Override
	public Integer updatePay(Map<String,Object> map) {
		return productDao.updatePay(map);
	}
	@Override
	public Integer deleteCartByUid(int product_user_id) {
		return productDao.deleteCartByUid(product_user_id);
	}
	@Override
	public boolean deleteCartByCid(int product_card_id) {
		return productDao.deleteCartByCid(product_card_id)>0;
	}
	@Override
	public Integer updateCartStateAndPayNoByUid(Map<String, Object> map) {
		return productDao.updateCartStateAndPayNoByUid(map);
	}
	@Override
	public List<Map<String, Object>> getUserOrderDetailByUid(int product_user_id) {
		return productDao.getUserOrderDetailByUid(product_user_id);
	}
	@Override
	public List<Map<String, Object>> getOrderDetail() {
		return productDao.getOrderDetail();
	}
	@Override
	public boolean updateOrderByPid(Map<String,Object> map) {
		return productDao.updateOrderByPid(map)>0;
	}
	@Override
	public List<Map<String, Object>> getProductPage(int page,int limit) {
		int start=(page-1)*limit;
		int end = page*limit;
		Map<String, Object> map =new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		return productDao.getProductPage(map);
	}
	@Override
	public int getPageCount(int limit) {
		int count= productDao.getProductCount();
		int page=(int) Math.ceil((double)count/limit);
		return page;
	}
	@Override
	public boolean updateProduct(Product product) {
		return productDao.updateProduct(product)>0;
	}
	@Override
	public boolean addProduct(Product product) {
		Date date=new Date();
		DateFormat df= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String datef=df.format(date);
		product.setProduct_createtime(datef);
		return productDao.addProduct(product)>0;
	}
	@Override
	public boolean saveFile(MultipartFile file, String path) {  
        // 判断文件是否为空  
        if (!file.isEmpty()) {  
            try {  
                File filepath = new File(path);
                if (!filepath.exists()) 
                    filepath.mkdirs();
                // 文件保存路径  
                String savePath = path + file.getOriginalFilename();  
                // 转存文件  
                file.transferTo(new File(savePath));  
                return true;  
            } catch (Exception e) {  
                e.printStackTrace();  
            }  
        }  
        return false;  
    }
	@Override
	public boolean deleteProductByPId(int product_id) {
		return productDao.deleteProductByPId(product_id)>0;
	}
	@Override
	public boolean insertDimg(Map<String, Object> map) {
		return productDao.insertDimg(map)>0;
	}
	@Override
	public List<Map<String, Object>> getDimg() {
		return productDao.getDimg();
	}
	@Override
	public boolean updateDimg(Map<String, Object> map) {
		return productDao.updateDimg(map)>0;
	}
	@Override
	public boolean deleteDimg(int product_dimgId) {
		return productDao.deleteDimg(product_dimgId)>0;
	}
	@Override
	public boolean insertAddinfo(AddInfo addInfo) {
		return productDao.insertAddinfo(addInfo)>0;
	}  
	
	

}
