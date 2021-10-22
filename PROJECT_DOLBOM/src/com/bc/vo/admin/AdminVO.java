package com.bc.vo.admin;

public class AdminVO {
	
	private String a_id;
	private String password;
	private String a_name;
	
	
	public AdminVO() {}


	public AdminVO(String a_id, String password, String a_name) {
		this.a_id = a_id;
		this.password = password;
		this.a_name = a_name;
	}


	public String getA_id() {
		return a_id;
	}


	public void setA_id(String a_id) {
		this.a_id = a_id;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getA_name() {
		return a_name;
	}


	public void setA_name(String a_name) {
		this.a_name = a_name;
	}


	@Override
	public String toString() {
		return "AdminVO [a_id=" + a_id + ", password=" + password + ", a_name=" + a_name + "]";
	}
	
	
	
	
	
	
}
