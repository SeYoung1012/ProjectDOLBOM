package com.bc.model.vo.board;

public class MomboardVO {

	private int mb_id;
	private String mb_title;
	private String mb_content;
	private String mb_date;
	private int mb_hit;
	private String care_date;
	private String userId;
	private String name;
	private String address;
	private int pay;
	private int child_age;
	private String care;
	
	public MomboardVO() {
		super();
	}

	public MomboardVO(int mb_id, String mb_title, String mb_content, String mb_date, int mb_hit, String care_date,
			String userId, String name, String address, int pay, int child_age) {
		super();
		this.mb_id = mb_id;
		this.mb_title = mb_title;
		this.mb_content = mb_content;
		this.mb_date = mb_date;
		this.mb_hit = mb_hit;
		this.care_date = care_date;
		this.userId = userId;
		this.name = name;
		this.address = address;
		this.pay = pay;
		this.child_age = child_age;
	}

	public int getMb_id() {
		return mb_id;
	}

	public void setMb_id(int mb_id) {
		this.mb_id = mb_id;
	}

	public String getMb_title() {
		return mb_title;
	}

	public void setMb_title(String mb_title) {
		this.mb_title = mb_title;
	}

	public String getMb_content() {
		return mb_content;
	}

	public void setMb_content(String mb_content) {
		this.mb_content = mb_content;
	}

	public String getMb_date() {
		return mb_date;
	}

	public void setMb_date(String mb_date) {
		this.mb_date = mb_date;
	}

	public int getMb_hit() {
		return mb_hit;
	}

	public void setMb_hit(int mb_hit) {
		this.mb_hit = mb_hit;
	}

	public String getCare_date() {
		return care_date;
	}

	public void setCare_date(String care_date) {
		this.care_date = care_date;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userid) {
		this.userId = userid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getPay() {
		return pay;
	}

	public void setPay(int pay) {
		this.pay = pay;
	}

	public int getChild_age() {
		return child_age;
	}

	public void setChild_age(int child_age) {
		this.child_age = child_age;
	}

	@Override
	public String toString() {
		return "MomboardVO [mb_id=" + mb_id + ", mb_title=" + mb_title + ", mb_content=" + mb_content + ", mb_date="
				+ mb_date + ", mb_hit=" + mb_hit + ", care_date=" + care_date + ", userId=" + userId + ", name=" + name
				+ ", address=" + address + ", pay=" + pay + ", child_age=" + child_age + ", care=" + care + "]";
	}

	public String getCare() {
		return care;
	}

	public void setCare(String care) {
		this.care = care;
	}

}
