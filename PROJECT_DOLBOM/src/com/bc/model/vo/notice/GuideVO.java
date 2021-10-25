package com.bc.model.vo.notice;

public class GuideVO {
	
	
	private int gIdx;
	private String aId;
	private String gTitle;
	private String gContent;
	private String type;
	private String fileName;
	private String oriName;
	
	
	
	
	public GuideVO(int gIdx, String aId, String gTitle, String gContent, String type, String fileName, String oriName) {
		super();
		this.gIdx = gIdx;
		this.aId = aId;
		this.gTitle = gTitle;
		this.gContent = gContent;
		this.type = type;
		this.fileName = fileName;
		this.oriName = oriName;
	}
	
	
	public int getgIdx() {
		return gIdx;
	}
	public void setgIdx(int gIdx) {
		this.gIdx = gIdx;
	}
	public String getaId() {
		return aId;
	}
	public void setaId(String aId) {
		this.aId = aId;
	}
	public String getgTitle() {
		return gTitle;
	}
	public void setgTitle(String gTitle) {
		this.gTitle = gTitle;
	}
	public String getgContent() {
		return gContent;
	}
	public void setgContent(String gContent) {
		this.gContent = gContent;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getOriName() {
		return oriName;
	}
	public void setOriName(String oriName) {
		this.oriName = oriName;
	}
	@Override
	public String toString() {
		return "GuideVO [gIdx=" + gIdx + ", aId=" + aId + ", gTitle=" + gTitle + ", gContent=" + gContent + ", type="
				+ type + ", fileName=" + fileName + ", oriName=" + oriName + "]";
	}
	
	
}
