package com.lqc.entity;

public class User {
	private int id;
	private String telphone;
	private String code;
	private String email;
	private String name;
	private String password;
	private int state;
	@Override
	public String toString() {
		return "User [id=" + id + ", telphone=" + telphone + ", code=" + code + ", email=" + email + ", name=" + name
				+ ", password=" + password + ", state=" + state + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTelphone() {
		return telphone;
	}
	public void setTelphone(String telphone) {
		this.telphone = telphone;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public User(int id, String telphone, String code, String email, String name, String password, int state) {
		super();
		this.id = id;
		this.telphone = telphone;
		this.code = code;
		this.email = email;
		this.name = name;
		this.password = password;
		this.state = state;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
