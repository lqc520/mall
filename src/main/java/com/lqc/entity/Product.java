package com.lqc.entity;

public class Product {
	private int product_id;
	private String product_name;
	private String product_price;
	private String product_img;
	private String product_card_img;
	private String product_describe;
	private String product_detail_describe;
	private int product_count;
	private String product_createtime;
	private int product_type_id;
	private int product_dimg_id;
	@Override
	public String toString() {
		return "Product [product_id=" + product_id + ", product_name=" + product_name + ", product_price="
				+ product_price + ", product_img=" + product_img + ", product_card_img=" + product_card_img
				+ ", product_describe=" + product_describe + ", product_detail_describe=" + product_detail_describe
				+ ", product_count=" + product_count + ", product_createtime=" + product_createtime
				+ ", product_type_id=" + product_type_id + ", product_dimg_id=" + product_dimg_id + "]";
	}
	public Product(int product_id, String product_name, String product_price, String product_img,
			String product_card_img, String product_describe, String product_detail_describe, int product_count,
			String product_createtime, int product_type_id, int product_dimg_id) {
		super();
		this.product_id = product_id;
		this.product_name = product_name;
		this.product_price = product_price;
		this.product_img = product_img;
		this.product_card_img = product_card_img;
		this.product_describe = product_describe;
		this.product_detail_describe = product_detail_describe;
		this.product_count = product_count;
		this.product_createtime = product_createtime;
		this.product_type_id = product_type_id;
		this.product_dimg_id = product_dimg_id;
	}
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getProduct_price() {
		return product_price;
	}
	public void setProduct_price(String product_price) {
		this.product_price = product_price;
	}
	public String getProduct_img() {
		return product_img;
	}
	public void setProduct_img(String product_img) {
		this.product_img = product_img;
	}
	public String getProduct_card_img() {
		return product_card_img;
	}
	public void setProduct_card_img(String product_card_img) {
		this.product_card_img = product_card_img;
	}
	public String getProduct_describe() {
		return product_describe;
	}
	public void setProduct_describe(String product_describe) {
		this.product_describe = product_describe;
	}
	public String getProduct_detail_describe() {
		return product_detail_describe;
	}
	public void setProduct_detail_describe(String product_detail_describe) {
		this.product_detail_describe = product_detail_describe;
	}
	public int getProduct_count() {
		return product_count;
	}
	public void setProduct_count(int product_count) {
		this.product_count = product_count;
	}
	public String getProduct_createtime() {
		return product_createtime;
	}
	public void setProduct_createtime(String product_createtime) {
		this.product_createtime = product_createtime;
	}
	public int getProduct_type_id() {
		return product_type_id;
	}
	public void setProduct_type_id(int product_type_id) {
		this.product_type_id = product_type_id;
	}
	public int getProduct_dimg_id() {
		return product_dimg_id;
	}
	public void setProduct_dimg_id(int product_dimg_id) {
		this.product_dimg_id = product_dimg_id;
	}
	
}
