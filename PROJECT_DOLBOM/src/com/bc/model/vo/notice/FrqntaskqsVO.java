package com.bc.model.vo.notice;

import java.sql.Date;

public class FrqntaskqsVO {
	private int fIdx; //번호
	private String aId; // 관리자 아이디
	private int qIdx; // 문의번호
	private String fTitle; //제목
	private String fContent; // 내용
	private String fileName; // 실제파일명
	private String oriName; // 원본파일명
	private Date fDate; // 작성일
	
	
	FrqntaskqsVO() {}
	
	
	
	
	public FrqntaskqsVO(int fIdx, String aId, int qIdx, String fTitle, String fContent, String fileName, String oriName,
			Date fDate) {
		super();
		this.fIdx = fIdx;
		this.aId = aId;
		this.qIdx = qIdx;
		this.fTitle = fTitle;
		this.fContent = fContent;
		this.fileName = fileName;
		this.oriName = oriName;
		this.fDate = fDate;
	}




	public int getfIdx() {
		return fIdx;
	}
	public void setfIdx(int fIdx) {
		this.fIdx = fIdx;
	}
	public String getaId() {
		return aId;
	}
	public void setaId(String aId) {
		this.aId = aId;
	}
	public int getqIdx() {
		return qIdx;
	}
	public void setqIdx(int qIdx) {
		this.qIdx = qIdx;
	}
	public String getfTitle() {
		return fTitle;
	}
	public void setfTitle(String fTitle) {
		this.fTitle = fTitle;
	}
	public String getfContent() {
		return fContent;
	}
	public void setfContent(String fContent) {
		this.fContent = fContent;
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
	
	
	public Date getfDate() {
		return fDate;
	}

	public void setfDate(Date fDate) {
		this.fDate = fDate;
	}




	@Override
	public String toString() {
		return "FrqntaskqsVO [fIdx=" + fIdx + ", aId=" + aId + ", qIdx=" + qIdx + ", fTitle=" + fTitle + ", fContent="
				+ fContent + ", fileName=" + fileName + ", oriName=" + oriName + ", fDate=" + fDate + "]";
	}


	
	
	
	
}
