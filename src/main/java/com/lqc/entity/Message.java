package com.lqc.entity;

public class Message {
	private int message_id;
	private String message_email;
	private String message_content;
	private int message_state;
	@Override
	public String toString() {
		return "Message [message_id=" + message_id + ", message_email=" + message_email + ", message_content="
				+ message_content + ", message_state=" + message_state + "]";
	}
	public Message(int message_id, String message_email, String message_content, int message_state) {
		super();
		this.message_id = message_id;
		this.message_email = message_email;
		this.message_content = message_content;
		this.message_state = message_state;
	}
	public Message() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getMessage_id() {
		return message_id;
	}
	public void setMessage_id(int message_id) {
		this.message_id = message_id;
	}
	public String getMessage_email() {
		return message_email;
	}
	public void setMessage_email(String message_email) {
		this.message_email = message_email;
	}
	public String getMessage_content() {
		return message_content;
	}
	public void setMessage_content(String message_content) {
		this.message_content = message_content;
	}
	public int getMessage_state() {
		return message_state;
	}
	public void setMessage_state(int message_state) {
		this.message_state = message_state;
	}
	
}