package com.bc.vo.admin;

public class NoticeVO {
	
	private int idx;
	private String a_id;
	private String title;
	private String content;
	private String b_date;
	private String file_name;
	private String ori_name;
	private int hit;
	
	
	
	public NoticeVO() {}



	public NoticeVO(int idx, String a_id, String title, String content, String b_date, String file_name,
			String ori_name, int hit) {
		super();
		this.idx = idx;
		this.a_id = a_id;
		this.title = title;
		this.content = content;
		this.b_date = b_date;
		this.file_name = file_name;
		this.ori_name = ori_name;
		this.hit = hit;
	}



	public int getIdx() {
		return idx;
	}



	public void setIdx(int idx) {
		this.idx = idx;
	}



	public String getA_id() {
		return a_id;
	}



	public void setA_id(String a_id) {
		this.a_id = a_id;
	}



	public String getTitle() {
		return title;
	}



	public void setTitle(String title) {
		this.title = title;
	}



	public String getContent() {
		return content;
	}



	public void setContent(String content) {
		this.content = content;
	}



	public String getB_date() {
		return b_date;
	}



	public void setB_date(String b_date) {
		this.b_date = b_date;
	}



	public String getFile_name() {
		return file_name;
	}



	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}



	public String getOri_name() {
		return ori_name;
	}



	public void setOri_name(String ori_name) {
		this.ori_name = ori_name;
	}



	public int getHit() {
		return hit;
	}



	public void setHit(int hit) {
		this.hit = hit;
	}



	@Override
	public String toString() {
		return "NoticeVO [idx=" + idx + ", a_id=" + a_id + ", title=" + title + ", content=" + content + ", b_date="
				+ b_date + ", file_name=" + file_name + ", ori_name=" + ori_name + ", hit=" + hit + "]";
	}
	
	
	
	
	
		
}
