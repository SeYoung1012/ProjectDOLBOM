package com.bc.vo.admin;

public class GuideVO {
	
	private int g_idx;
	private String a_id;
	private String g_title;
	private String g_content;
	private String type;
	private String file_name;
	private String ori_name;
	
	
	
	public GuideVO() {}



	public GuideVO(int g_idx, String a_id, String g_title, String g_content, String type, String file_name,
			String ori_name) {
		super();
		this.g_idx = g_idx;
		this.a_id = a_id;
		this.g_title = g_title;
		this.g_content = g_content;
		this.type = type;
		this.file_name = file_name;
		this.ori_name = ori_name;
	}



	public int getG_idx() {
		return g_idx;
	}



	public void setG_idx(int g_idx) {
		this.g_idx = g_idx;
	}



	public String getA_id() {
		return a_id;
	}



	public void setA_id(String a_id) {
		this.a_id = a_id;
	}



	public String getG_title() {
		return g_title;
	}



	public void setG_title(String g_title) {
		this.g_title = g_title;
	}



	public String getG_content() {
		return g_content;
	}



	public void setG_content(String g_content) {
		this.g_content = g_content;
	}



	public String getType() {
		return type;
	}



	public void setType(String type) {
		this.type = type;
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



	@Override
	public String toString() {
		return "GuideVO [g_idx=" + g_idx + ", a_id=" + a_id + ", g_title=" + g_title + ", g_content=" + g_content
				+ ", type=" + type + ", file_name=" + file_name + ", ori_name=" + ori_name + "]";
	}





}
