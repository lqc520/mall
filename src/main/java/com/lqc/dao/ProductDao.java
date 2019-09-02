package com.lqc.dao;

import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.lqc.entity.AddInfo;
import com.lqc.entity.Product;
public interface ProductDao {
	@Select("SELECT * from product,product_type where product.product_type_id=product_type.product_type_id and product.product_type_id=#{product_type_id}")
	public List<Map<String,Object>> findProductByProductTypeId(int product_type_id);
	@Select("SELECT * from product,product_type WHERE product.product_type_id=product_type.product_type_id")
	public List<Map<String,Object>> findAllProduct();
	@Select("SELECT * from product_type")
	public List<Map<String,Object>> findAllProductType();
	@Select("SELECT * FROM `product` WHERE product_dimg_id = #{product_dimg_id}")
	public Map<String,Object> findDeailProductByDid(int product_dimg_id);
	public List<Map<String,Object>> findDetailByDid(int product_dimg_id);
	@Select("SELECT * FROM `product_dimg` WHERE product_dimg_id = #{product_dimg_id}")
	public List<Map<String,Object>> findDeailImg(int product_dimg_id);
	@Insert("INSERT INTO `lqcmall`.`product_review` (`product_id`, `product_rating`, `product_review`, `username`, `email`) VALUES (#{product_id}, #{product_rating}, #{product_review}, #{username}, #{email});")
	public int addProductReview(Map<String,Object> map);
	@Select("SELECT * FROM `product_addinfo` where product_id=#{product_id}")
	public Map<String,Object> findProfuctAddInfo(int product_id);
	@Select("select * from product_review where product_id=#{product_id} order by product_review_id desc limit 6")
	public List<Map<String,Object>> findReviewByPid(int product_id);
	@Select("select count(1) from product_review where product_id=#{product_id}")
	public int findReviewCountByPid(int product_id);
	@Select("SELECT * FROM `product` WHERE product_type_id =#{product_type_id} ORDER BY RAND() LIMIT 8")
	public List<Map<String,Object>> getRelateProductByPtId(int product_type_id);
	@Insert("INSERT INTO `lqcmall`.`product_card` (`product_id`, `product_card_count`, `product_color_id`, `product_size_id`, `product_user_id`) VALUES (#{product_id}, #{product_card_count}, #{product_color_id}, #{product_size_id}, #{product_user_id})")
	public int addProductCard(Map<String,Object> map);
	@Select("SELECT * FROM `product` where product_id =#{product_id}")
	public Map<String,Object> getProductByPid(int product_id);
	@Select("SELECT * ,product.product_price*product_card.product_card_count as amount from product,product_card where product.product_id=product_card.product_id and product_user_id=#{uid} and product_cart_state = 0")
	public List<Map<String,Object>> getProductCardByUid(int uid);
	@Update("UPDATE `lqcmall`.`product_card` SET `product_card_count`=#{product_card_count}  WHERE `product_card_id`=#{product_card_id}")
	public int updateCartCountByCid(Map<String,Object> map);
	@Insert("INSERT INTO `lqcmall`.`product_order` (`product_user_id`, `product_order_address`, `product_order_name`, `product_order_telphone`,`product_order_total`,`product_order_createDate`,`product_order_uuid`) VALUES (#{product_user_id}, #{product_order_address}, #{product_order_name}, #{product_order_telphone},#{product_order_total},#{product_order_createDate},#{product_order_uuid})")
	public int addOrder(Map<String,Object> map);
	@Select("update product_order set product_pay_state=1 ,product_pay_no=#{product_pay_no} where product_order_uuid=#{product_order_uuid}")
	public Integer updatePay(Map<String,Object> map);
	@Delete("delete from product_card where product_user_id=#{product_user_id}")
	public Integer deleteCartByUid(int product_user_id);
	@Delete("delete from product_card where product_card_id=#{product_card_id}")
	public int deleteCartByCid(int product_card_id);
	@Update("update product_card set product_cart_state=1,product_pay_no=#{product_pay_no} where product_cart_state =0 and product_user_id=#{product_user_id}")
	public Integer updateCartStateAndPayNoByUid(Map<String,Object> map);
	@Select("SELECT * from product_card WHERE product_user_id=#{product_user_id} and product_id=#{product_id} and product_cart_state=0")
	public Map getCartByUidAndPid(Map map);
	public List<Map<String, Object>> getUserOrderDetailByUid(int product_user_id);
	public List<Map<String, Object>> getOrderDetail();
	@Update("update product_order set product_order_address=#{product_order_address},product_order_name=#{product_order_name},product_order_telphone=#{product_order_telphone},product_pay_state=#{product_pay_state},product_order_state=#{product_order_state} where product_pay_no=#{product_pay_no}")
	public int updateOrderByPid(Map<String,Object> map);
	@Select("SELECT * FROM `product` limit #{start},#{end}")
	public List<Map<String, Object>> getProductPage(Map<String,Object> map);
	@Select("select count(1) from product")
	public int getProductCount();
	public int updateProduct(Product product);
	public int addProduct(Product product);
	@Delete("delete from product where product_id=#{product_id}")
	public int deleteProductByPId(int product_id);
	//详图
	@Insert("insert into product_dimg values(null,#{product_dimg_id},#{product_detail_img})")
	public int insertDimg(Map<String,Object> map);
	@Select("select * from product_dimg")
	public List<Map<String,Object>> getDimg();
	@Update("update product_dimg set product_dimg_id=#{product_dimg_id},product_detail_img=#{product_detail_img} where product_dimgId=#{product_dimgId}")
	public int updateDimg(Map<String,Object> map);
	@Delete("delete from product_dimg where product_dimgId=#{product_dimgId}")
	public int deleteDimg(int product_dimgId);
	public int insertAddinfo(AddInfo addInfo);
}
