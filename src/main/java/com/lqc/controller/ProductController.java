package com.lqc.controller;

import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.lqc.entity.AddInfo;
import com.lqc.entity.Product;
import com.lqc.service.ProductService;
import net.sf.json.JSONArray;

/** 
 		* @author : lingQiCheng
 		* @Description : ProductServlet 
 		* @CreateDate : 2018年12月26日 下午3:18:23 
 		* @lastModified : 2018年12月26日 下午3:18:23 
 		* @version :   v1.0
 	*/  
@Controller
public class ProductController {
	@Resource
	private ProductService productService = null;
	/**
	 * @param request 获取产品类型和产品
	 * @return 转发到主界面
	 */
	@RequestMapping("index")
	public String bashMessageToHome(HttpServletRequest request){
		List<Map<String, Object>> productAll = productService.findAllProduct();
		List<Map<String, Object>> productTypeAll = productService.findAllProductType();
		request.setAttribute("productAll", productAll);
		request.setAttribute("productTypeAll", productTypeAll);
		return "index";
	}
	 /**
	 		* Description: 获取商品及其商品类型到商品界面
	 		* Author: linQiCheng
	 		* Version: 1.0
	 		* Create Date Time: 2018年12月29日 下午5:13:35
	 		* Update Date Time: 
	 		* @param request
	 		* @return productAll productTypeAll
	 	*/
	@RequestMapping("product")
	public String bashMessageToProduct(HttpServletRequest request){
		List<Map<String, Object>> productAll = productService.findAllProduct();
		List<Map<String, Object>> productTypeAll = productService.findAllProductType();
		request.setAttribute("productAll", productAll);
		request.setAttribute("productTypeAll", productTypeAll);
		return "product";
	}
	 /**
	 		* Description: 查询出商品的详细信息
	 		* Author: linQiCheng
	 		* Version: 1.0
	 		* Create Date Time: 2018年12月28日 下午2:06:51.
	 		* Update Date Time: 
	 		* @param did product_dimg_id
	 		* @param pid product_id
	 		* @param ptid product_type_id
	 		* @param request 存储信息
	 		* @return 转发到product-detail界面
	 	*/
	@RequestMapping("productDetail")
	public String findDeail(String did,String pid,String ptid,HttpServletRequest request){
		List<Map<String, Object>> deailImg = productService.findDeailImg(Integer.parseInt(did));
		Map<String,Object> deailProduct = productService.findDeailProductByDid(Integer.parseInt(did));
		Map<String, Object> addInfo = productService.findProfuctAddInfo(Integer.parseInt(pid));
		List<Map<String, Object>> findReviewByPid = productService.findReviewByPid(Integer.parseInt(pid));
		int reviewCount = productService.findReviewCountByPid(Integer.parseInt(pid));
		List<Map<String, Object>> relateProductByPtId = productService.getRelateProductByPtId(Integer.parseInt(ptid));
		request.setAttribute("addInfo", addInfo);
		request.setAttribute("deailImg", deailImg);
		request.setAttribute("deailProduct", deailProduct);
		request.setAttribute("review", findReviewByPid);
		request.setAttribute("reviewCount", reviewCount);
		request.setAttribute("relateProduct", relateProductByPtId);
		return "product-detail";
		
	}
	 /**
	 		* Description: 把商品加入购物车
	 		* Author: linQiCheng
	 		* Version: 1.0
	 		* Create Date Time: 2018年12月31日 下午1:24:06
	 	*/
	@RequestMapping("addCard")
	public void addCard(String color,String size,String pid,String count,String uid,HttpSession session){
		Map<String, Object> map =new HashMap<String, Object>();
		map.put("product_color_id", color);
		map.put("product_size_id", size);
		map.put("product_id", pid);
		map.put("product_user_id", uid);
		map.put("product_card_count", count);
		System.out.println(map);
		productService.addProductCard(map);
		@SuppressWarnings("unchecked")
		Map<String,Object> user=(Map<String, Object>) session.getAttribute("user");
		List<Map<String, Object>> userCart = productService.getProductCardByUid((int)user.get("id"));
		session.setAttribute("userCart", userCart);
	}
	 /**
	 		* Description: 把评论添加到数据库
	 		* Author: linQiCheng
	 		* Version: 1.0
	 		* Create Date Time: 2018年12月28日 下午2:09:40.
	 		* Update Date Time: 
	 		* @param pid
	 		* @param name
	 		* @param email
	 		* @param rating 评分
	 		* @param review 评论信息
	 		* @param out
	 		* @param model
	 		* @return
	 	*/
	@RequestMapping("sendReview")
	public String sendReview(String pid,String name,String email,String rating,String review,PrintWriter out,Model model){
		Map<String,Object> map =new HashMap<String, Object>();
		map.put("username", name);
		map.put("email", email);
		map.put("product_id", pid);
		map.put("product_review", review);
		map.put("product_rating", rating);
		productService.addProductReview(map);
		List<Map<String, Object>> reviewByPid = productService.findReviewByPid(Integer.parseInt(pid));
		model.addAttribute("comment", reviewByPid);
		/*JSONArray json=JSONArray.fromObject(reviewByPid);
		out.print(json);*/
		return "redirect:index.html";
	}
	 /**
	 		* Description: 废弃
	 		* Author: linQiCheng
	 		* Version: 1.0
	 		* Create Date Time: 2018年12月31日 下午1:25:03
	 	*/
	@RequestMapping("findDeail")
	public void findDeail(String did,PrintWriter out){
		List<Map<String, Object>> deail = productService.findDetailByDid(Integer.parseInt(did));
		JSONArray json=JSONArray.fromObject(deail);
		out.print(json);
		
	}
	 /**
	 		* Description: 废弃
	 		* Author: linQiCheng
	 		* Version: 1.0
	 		* Create Date Time: 2018年12月31日 下午1:26:22
	 	*/
	@RequestMapping("findDeailImg")
	public void findDeailImg(String did,PrintWriter out){
		List<Map<String, Object>> deailImg = productService.findDeailImg(Integer.parseInt(did));
		JSONArray jsonImg=JSONArray.fromObject(deailImg);
		System.out.println(jsonImg);
		out.print(jsonImg);
		
	}
	 /**
	 		* Description: 废弃
	 		* Author: linQiCheng
	 		* Version: 1.0
	 		* Create Date Time: 2018年12月31日 下午1:26:56
	 	*/
	@RequestMapping("findDeailProduct")
	public void findDeailProduct(String did,PrintWriter out){
		Map<String,Object> deailProduct = productService.findDeailProductByDid(Integer.parseInt(did));
		JSONArray jsonProduct=JSONArray.fromObject(deailProduct);
		System.out.println(deailProduct);
		out.print(jsonProduct);
	}
	 /**
	 		* Description: 查询出用户的购物车信息
	 		* Author: linQiCheng
	 		* Version: 1.0
	 		* Create Date Time: 2018年12月28日 下午10:34:46
	 		* Update Date Time: 
	 		* @param uid 用户id
	 		* @param model card
	 		* @return 转发到shoping-cart
	 	*/
	@RequestMapping("shoping-cart")
	public String getProductCardByUid(Model model,HttpSession session){
		@SuppressWarnings("unchecked")
		Map<String,Object> user=(Map<String, Object>) session.getAttribute("user");
		List<Map<String, Object>> productCardByUid = productService.getProductCardByUid((int)user.get("id"));
		model.addAttribute("card", productCardByUid);
		session.setAttribute("userCart", productCardByUid);
		return "shoping-cart";
	}
	 /**
	 		* Description: 接收前台来的list数组 @RequestParam("cidList") List<Integer> cidlist
	 		* Author: linQiCheng
	 		* Version: 1.0
	 		* Create Date Time: 2018年12月30日 下午10:16:38
	 		* Update Date Time: 
	 		* @param cidlist
	 		* @param clist
	 	*/
	@RequestMapping("updateCart1")
	public void updayeCart1(@RequestParam("cidList") List<Integer> cidlist,@RequestParam("countList") List<Integer> clist){
		for( int i :cidlist){
			System.out.println(i);
		}
		for( int i : clist){
			System.out.println(i);
		}
	}
	 /**
	 		* Description: 异步删除  或者更改商品id
	 		* Author: linQiCheng
	 		* Version: 1.0
	 		* Create Date Time: 2018年12月31日 下午1:27:59
	 		* @param cid 购物车id
	 		* @param count 商品数量
	 	*/
	@RequestMapping("updateCart")
	public void updayeCart(String cid,String count){
		Map<String,Object> map =new HashMap<String, Object>();
		map.put("product_card_id", cid);
		map.put("product_card_count", count);
		if(Integer.parseInt(count)<=0){
			productService.deleteCartByCid(Integer.parseInt(cid));
		}else{
			productService.updateCartCountByCid(map);
		}
		
			
			
		
	}
	 /**
	 		* Description: 提交订单
	 		* Author: linQiCheng
	 		* Version: 1.0
	 		* Create Date Time: 2018年12月31日 下午1:28:59
	 	*/
	@RequestMapping("subOreder")
	public String subOrder(String sum,String name,String address,String phone,HttpSession session,RedirectAttributes redirectAttributes){
		@SuppressWarnings("unchecked")
		Map<String,Object> user=(Map<String, Object>) session.getAttribute("user");
		System.out.println(user);
		Object id = user.get("id");
		Map<String,Object> map =new HashMap<String, Object>();
		map.put("product_order_total", sum);
		map.put("product_order_address", address);
		map.put("product_order_telphone", phone);
		map.put("product_order_name", name);
		map.put("product_user_id", id);
		Date nowdate =new Date();
		DateFormat dataformat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String data = dataformat.format(nowdate);
		map.put("product_order_createDate", data);
		String uid=UUID.randomUUID().toString().replace("-", "");
		map.put("product_order_uuid", uid);
		productService.addOrder(map);
//		redirectAttributes.addFlashAttribute("userid", id);
		return "redirect:codepay.html?price="+sum+"&pay_id="+uid+"&param="+id;
	}
	 /**
	 		* Description: 支付回调 删除购物车列表
	 		* Author: linQiCheng
	 		* Version: 1.0
	 		* Create Date Time: 2018年12月31日 上午11:10:48
	 	*/
	@RequestMapping("pay")
	public void fdfs(String[] pay_id,String[] pay_no,String[] param){
		String uid="0";
		if(param!=null){
			uid=param[0];
			System.out.println(uid);
		}
		
		String id=pay_id[0];
		String no=pay_no[0];
		Map<String,Object> map =new HashMap<String, Object>();
		map.put("product_order_uuid", id);
		map.put("product_pay_no", no);
		System.out.println(map);
		productService.updatePay(map);
		if(uid!=null){
			Map<String,Object> map1 =new HashMap<String, Object>();
			map1.put("product_pay_no", no);
			map1.put("product_user_id", uid);
			System.out.println(map1);
			productService.updateCartStateAndPayNoByUid(map1);
		}
		
	}
	 /**
	 		* Description: 支付接口
	 		* Author: linQiCheng
	 		* Version: 1.0
	 		* Create Date Time: 2018年12月31日 上午11:16:39
	 	*/
	@RequestMapping("codepay")
	public String codePay(String price,String type,String pay_id,String param){
		System.out.println("支付");
		/*
		* 接收参数 创建订单
		*/
		if(price==null){ 
			price="1";
		}
		//参数有中文则需要URL编码
		String url="https://codepay.fateqq.com/creat_order/?price="+price+"&pay_id="+pay_id+"&type=1&token=jLYzxLMNCxIjgeP6dDjBUj1Y7RNvXT3d&param="+param+"&act=0&id=161319&debug=0&pay_type=1&notify_url=http://lqcnb.cn:8080/lqcmall/pay.html&return_url=http://lqcnb.cn:8080/lqcmall/index.html";
		return "redirect:"+url;
	}
	 /**
	 		* Description: 获取用户订单 to my account(header)
	 		* Author: linQiCheng
	 		* Version: 1.0
	 		* Create Date Time: 2019年1月1日 下午5:53:45
	 		* Update Date Time: 
	 	*/
	@RequestMapping("account")
	public String userOrder(HttpSession session,Model model){
		@SuppressWarnings("unchecked")
		Map<String,Object> user=(Map<String, Object>) session.getAttribute("user");
		List<Map<String, Object>> orderDetail = productService.getUserOrderDetailByUid((int)user.get("id"));
		model.addAttribute("orderDetail", orderDetail);
		return "account";
		
	}
	 /**
	 		* Description: 获取订单信息 to orderManager
	 		* Author: linQiCheng
	 		* Version: 1.0
	 		* Create Date Time: 2019年1月1日 下午8:19:34
	 		* Update Date Time: 
	 	*/
	@RequestMapping("orderManager")
	public String orderManager(Model model){
		List<Map<String, Object>> orderDetail = productService.getOrderDetail();
		model.addAttribute("orderDetail", orderDetail);
		return "orderManager";
	}
	 /**
	 		* Description: 后台修改订单基础信息
	 		* Author: linQiCheng
	 		* Version: 1.0
	 		* Create Date Time: 2019年1月2日 上午10:26:32
	 	*/
	@RequestMapping("updateOrder")
	public String updateOrder(String name,String mobile,String address,String Paystate,String state,String pid){
		Map<String,Object> map =new HashMap<String, Object>();
		map.put("product_order_address", address);
		map.put("product_pay_no", pid);
		map.put("product_order_name", name);
		map.put("product_order_telphone", mobile);
		map.put("product_pay_state", Paystate);
		map.put("product_order_state", state);
		System.out.println(map);
		productService.updateOrderByPid(map);
		return "redirect:/orderManager.html";
	}
	 /**
	 		* Description: 主界面数据分页
	 		* Author: linQiCheng
	 		* Version: 1.0
	 		* Create Date Time: 2019年1月2日 上午10:31:58
	 	*/
	@RequestMapping("home-03")
	public String homePage(Model model,String page){
		if(page==null){
			page="1";
		}
		List<Map<String, Object>> productPage = productService.getProductPage(Integer.parseInt(page), 8);
		List<Map<String, Object>> productTypeAll = productService.findAllProductType();
		int count = productService.getPageCount(8);
		model.addAttribute("Pagecount", count);
		model.addAttribute("productPage", productPage);
		model.addAttribute("productTypeAll", productTypeAll);
		return "home-03";
	}
	 /**
	 		* Description: 后台之商品查询
	 		* Author: linQiCheng
	 		* Version: 1.0
	 		* Create Date Time: 2019年1月2日 下午8:59:16
	 		* Update Date Time: 
	 	*/
	@RequestMapping("productManager")
	public String productManager(Model model){
		List<Map<String, Object>> product = productService.findAllProduct();
		model.addAttribute("product", product);
		return "productManager";
	}
	 /**
	 		* Description: 后台之商品修改
	 		* Author: linQiCheng
	 		* Version: 1.0
	 		* Create Date Time: 2019年1月2日 下午9:16:18
	 		* Update Date Time: 
	 	*/
	@RequestMapping("updateProduct")
	public String updateProduct(Product product){
		productService.updateProduct(product);
		return "redirect:/productManager.html";
	}
	 /**
	 		* Description: 添加商品 限制只能上传图片
	 		* Author: linQiCheng
	 		* Version: 1.0
	 		* Create Date Time: 2019年1月2日 下午11:18:36
	 		* Update Date Time: 
	 	*/
	@RequestMapping("addProduct")
	public String addProduct(@RequestParam("files") MultipartFile[] files,Product product,HttpServletRequest request){
		 ServletContext servletContext = request.getServletContext();
	     String realPath = servletContext.getRealPath("/images");
		if(files!=null&&files.length>0){
			product.setProduct_img("images/"+files[0].getOriginalFilename());
			product.setProduct_card_img("images/"+files[1].getOriginalFilename());
			for(MultipartFile f : files){
				if(f.getSize()>0){
					if(f.getOriginalFilename().endsWith("jpg")||f.getOriginalFilename().endsWith("png")){
						 productService.saveFile(f, realPath+System.getProperty("file.separator"));
					}
					
				}
			}
		}
		productService.addProduct(product);
		return "redirect:/productManager.html";
	}
	/**
		* Description: 删除商品信息
		* Author: linQiCheng
		* Version: 1.0
		* Create Date Time: 2019年1月2日 下午11:22:36
		* Update Date Time: 
	*/
	@RequestMapping("/{id}/deleteProduct")
	public String deleteManager(@PathVariable int id){
		productService.deleteProductByPId(id);
		return "redirect:/productManager.html";
	}
	 /**
	 		* Description: 上传商品详细图
	 		* Author: linQiCheng
	 		* Version: 1.0
	 		* Create Date Time: 2019年1月3日 下午5:34:11
	 		* Update Date Time: 
	 		* @return
	 	*/
	@RequestMapping("uploadPdimg")
	public String uploadPdimg(@RequestParam("files") MultipartFile[] files,String pid,HttpServletRequest request){
		 ServletContext servletContext = request.getServletContext();
	     String realPath = servletContext.getRealPath("/images");
		if(files!=null&&files.length>0){
			for(MultipartFile f : files){
				if(f.getSize()>0){
					if(f.getOriginalFilename().endsWith("jpg")||f.getOriginalFilename().endsWith("png")){
						 productService.saveFile(f, realPath+System.getProperty("file.separator"));
						 Map<String,Object> map =new HashMap<String, Object>();
							map.put("product_dimg_id", pid);
							map.put("product_detail_img", "images/"+f.getOriginalFilename());
							System.out.println(map);
							productService.insertDimg(map);
					}
					
				}
			}
		}
		return "forward:/productManager.html";
	}
	 /**
	 		* Description: 获取详细图片
	 		* Author: linQiCheng
	 		* Version: 1.0
	 		* Create Date Time: 2019年1月3日 下午8:02:25
	 	*/
	@RequestMapping("imageManager")
	public String imageManager(Model model){
		List<Map<String, Object>> dimg = productService.getDimg();
		model.addAttribute("dimg", dimg);
		return "imageManager";
	}
	 /**
	 		* Description: 删除详细图片
	 		* Author: linQiCheng
	 		* Version: 1.0
	 		* Create Date Time: 2019年1月3日 下午8:34:36
	 	*/
	@RequestMapping("{id}/deleteDimg")
	public String deleteDimg(@PathVariable int id){
		productService.deleteDimg(id);
		return "redirect:/imageManager.html";
	}
	 /**
	 		* Description: 更改详细图片
	 		* Author: linQiCheng
	 		* Version: 1.0
	 		* Create Date Time: 2019年1月3日 下午8:34:51
	 	*/
	@RequestMapping("updateDimg")
	public String updateDimg(@RequestParam("file") MultipartFile file,String id,String did,HttpServletRequest request){
		String realPath = request.getServletContext().getRealPath("/images");
		if(file!=null&&file.getSize()>0){
			if(file.getOriginalFilename().endsWith("jpg")||file.getOriginalFilename().endsWith("png")){
				 productService.saveFile(file, realPath+System.getProperty("file.separator"));
				 Map<String,Object> map =new HashMap<String, Object>();
					map.put("product_dimgId", id);
					map.put("product_dimg_id", did);
					map.put("product_detail_img", "images/"+file.getOriginalFilename());
					System.out.println(map);
					productService.updateDimg(map);
			}
			
		}
		return "forward:/imageManager.html";
	}
	@RequestMapping("addAddInfo")
	public String InsertAddInfo(AddInfo addInfo){
		productService.insertAddinfo(addInfo);
		return "forward:/imageManager.html";
	}
	
}
