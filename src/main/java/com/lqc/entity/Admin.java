package com.lqc.entity;

/** 
 		* @author : lingQiCheng
 		* @Description : TODO 
 		* @CreateDate : 2018年12月31日 下午11:32:04 
 		* @lastModified : 2018年12月31日 下午11:32:04 
 		* @version :   
 	*/  
public class Admin {
	private int aid;
	private String  aname;
	private String amobile;
	private String apwd;
	private String code;
	@Override
	public String toString() {
		return "Admin [aid=" + aid + ", aname=" + aname + ", amobile=" + amobile + ", apwd=" + apwd + ", code=" + code
				+ "]";
	}
	public Admin(int aid, String aname, String amobile, String apwd, String code) {
		super();
		this.aid = aid;
		this.aname = aname;
		this.amobile = amobile;
		this.apwd = apwd;
		this.code = code;
	}
	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	public String getAmobile() {
		return amobile;
	}
	public void setAmobile(String amobile) {
		this.amobile = amobile;
	}
	public String getApwd() {
		return apwd;
	}
	public void setApwd(String apwd) {
		this.apwd = apwd;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public Admin(int aid, String aname, String amobile, String apwd) {
		super();
		this.aid = aid;
		this.aname = aname;
		this.amobile = amobile;
		this.apwd = apwd;
	}
	
}
