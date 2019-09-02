package com.lqc.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import com.lqc.entity.AddInfo;
import com.lqc.entity.Product;
public interface ProductService {
	public List<Map<String,Object>> findProductByProductTypeId(int product_type_id);
	public List<Map<String,Object>> findAllProduct();
	public List<Map<String,Object>> findAllProductType();
	public Map<String,Object> findDeailProductByDid(int product_dimg_id);
	public List<Map<String,Object>> findDeailImg(int product_dimg_id);
	public List<Map<String,Object>> findDetailByDid(int product_dimg_id);
	/**product_id product_rating product_review  username email 
	 * @param map
	 * @return map
	 */
	public boolean addProductReview(Map<String,Object> map);
	public Map<String,Object> findProfuctAddInfo(int product_id);
	public List<Map<String,Object>> findReviewByPid(int product_id);
	public int findReviewCountByPid(int product_id);
	public List<Map<String,Object>> getRelateProductByPtId(int product_type_id);
	public boolean addProductCard(Map<String,Object> map);
	public Map<String,Object> getProductByPid(int product_id);
	public List<Map<String,Object>> getProductCardByUid(int uid);
	public boolean updateCartCountByCid(Map<String,Object> map);
	public boolean addOrder(Map<String,Object> map);
	public Integer updatePay(Map<String,Object> map);
	public Integer deleteCartByUid(int product_user_id);
	public boolean deleteCartByCid(int product_card_id);
	public Integer updateCartStateAndPayNoByUid(Map<String,Object> map);
	public List<Map<String, Object>> getUserOrderDetailByUid(int product_user_id);
	public List<Map<String, Object>> getOrderDetail();
	public boolean updateOrderByPid(Map<String,Object> map);
	public List<Map<String, Object>> getProductPage(int page,int limit);
	public int getPageCount(int limit);
	public boolean updateProduct(Product product);
	public boolean addProduct(Product product);
	public boolean saveFile(MultipartFile file, String path);
	public boolean deleteProductByPId(int product_id);
	public boolean insertDimg(Map<String,Object> map);
	public List<Map<String,Object>> getDimg();
	public boolean updateDimg(Map<String,Object> map);
	public boolean deleteDimg(int product_dimgId);
	public boolean insertAddinfo(AddInfo addInfo);
	public Map getCartByUidAndPid(Map map);
}
