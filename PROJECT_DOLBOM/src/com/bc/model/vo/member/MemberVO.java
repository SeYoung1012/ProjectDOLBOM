package com.bc.model.vo.member;

public class MemberVO {
	private String userId;
	private int typ;
	private String pwd;
	private String pwd2;
	private String name;
	private String phone;
	private int birth;
	private String address;
	private String emailId;
	private String emailBox;
	private int childAge;
	private String care;
	private int pay;
	
	public MemberVO(String userId, int typ, String pwd, String pwd2, String name, String phone, int birth,
			String address, String emailId, String emailBox, int childAge, String care, int pay) {
		super();
		this.userId = userId;
		this.typ = typ;
		this.pwd = pwd;
		this.pwd2 = pwd2;
		this.name = name;
		this.phone = phone;
		this.birth = birth;
		this.address = address;
		this.emailId = emailId;
		this.emailBox = emailBox;
		this.childAge = childAge;
		this.care = care;
		this.pay = pay;
	}
	
	public MemberVO() {}

	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getTyp() {
		return typ;
	}
	public void setTyp(int typ) {
		this.typ = typ;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getPwd2() {
		return pwd2;
	}
	public void setPwd2(String pwd2) {
		this.pwd2 = pwd2;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getBirth() {
		return birth;
	}
	public void setBirth(int birth) {
		this.birth = birth;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getEmailBox() {
		return emailBox;
	}
	public void setEmailBox(String emailBox) {
		this.emailBox = emailBox;
	}
	public int getChildAge() {
		return childAge;
	}
	public void setChildAge(int childAge) {
		this.childAge = childAge;
	}
	public String getCare() {
		return care;
	}
	public void setCare(String care) {
		this.care = care;
	}
	public int getPay() {
		return pay;
	}
	public void setPay(int pay) {
		this.pay = pay;
	}
	@Override
	public String toString() {
		return "MemberVO [userId=" + userId + ", typ=" + typ + ", pwd=" + pwd + ", pwd2=" + pwd2 + ", name=" + name
				+ ", phone=" + phone + ", birth=" + birth + ", address=" + address + ", emailId=" + emailId
				+ ", emailBox=" + emailBox + ", childAge=" + childAge + ", care=" + care + ", pay=" + pay + "]";
	}
	



	
	
}
