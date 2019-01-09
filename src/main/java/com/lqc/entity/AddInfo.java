package com.lqc.entity;

/** 
 		* @author : lingQiCheng
 		* @Description : AddInfo
 		* @CreateDate : 2019年1月3日 下午9:20:21 
 		* @lastModified : 2019年1月3日 下午9:20:21 
 		* @version :   V1.0
 	*/  
public class AddInfo {
	private int product_addinfo_id;
	private int product_id;
	private String product_weight;
	private String product_dimensions;
	private String product_materials;
	private String product_color;
	private String product_size;
	@Override
	public String toString() {
		return "AddInfo [product_addinfo_id=" + product_addinfo_id + ", product_id=" + product_id + ", product_weight="
				+ product_weight + ", product_dimensions=" + product_dimensions + ", product_materials="
				+ product_materials + ", product_color=" + product_color + ", product_size=" + product_size + "]";
	}
	public AddInfo(int product_addinfo_id, int product_id, String product_weight, String product_dimensions,
			String product_materials, String product_color, String product_size) {
		super();
		this.product_addinfo_id = product_addinfo_id;
		this.product_id = product_id;
		this.product_weight = product_weight;
		this.product_dimensions = product_dimensions;
		this.product_materials = product_materials;
		this.product_color = product_color;
		this.product_size = product_size;
	}
	public AddInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getProduct_addinfo_id() {
		return product_addinfo_id;
	}
	public void setProduct_addinfo_id(int product_addinfo_id) {
		this.product_addinfo_id = product_addinfo_id;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public String getProduct_weight() {
		return product_weight;
	}
	public void setProduct_weight(String product_weight) {
		this.product_weight = product_weight;
	}
	public String getProduct_dimensions() {
		return product_dimensions;
	}
	public void setProduct_dimensions(String product_dimensions) {
		this.product_dimensions = product_dimensions;
	}
	public String getProduct_materials() {
		return product_materials;
	}
	public void setProduct_materials(String product_materials) {
		this.product_materials = product_materials;
	}
	public String getProduct_color() {
		return product_color;
	}
	public void setProduct_color(String product_color) {
		this.product_color = product_color;
	}
	public String getProduct_size() {
		return product_size;
	}
	public void setProduct_size(String product_size) {
		this.product_size = product_size;
	}
	
}
