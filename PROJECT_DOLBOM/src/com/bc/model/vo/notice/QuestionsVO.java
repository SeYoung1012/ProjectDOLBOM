package com.bc.model.vo.notice;

import java.sql.Date;

public class QuestionsVO {
	private int qIdx; //번호
	private String email; // 이메일
	private String name; // 이름
	private String phone; // 휴대폰
	private String memberType; //회원유형
	private String typeInqry; // 문의 유형
	private String qTitle; //제목
	private String qContent; //내용
	private Date qDate; //작성일
	private String fileName; //실제파일명
	private String oriName; //원본파일명
	
	public QuestionsVO() {}
	
	
	public QuestionsVO(int qIdx, String email, String name, String phone, String memberType, String typeInqry,
			String qTitle, String qContent, Date qDate, String fileName, String oriName) {
		super();
		this.qIdx = qIdx;
		this.email = email;
		this.name = name;
		this.phone = phone;
		this.memberType = memberType;
		this.typeInqry = typeInqry;
		this.qTitle = qTitle;
		this.qContent = qContent;
		this.qDate = qDate;
		this.fileName = fileName;
		this.oriName = oriName;
	}
	public int getqIdx() {
		return qIdx;
	}
	public void setqIdx(int qIdx) {
		this.qIdx = qIdx;
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
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getMemberType() {
		return memberType;
	}
	public void setMemberType(String memberType) {
		this.memberType = memberType;
	}
	public String getTypeInqry() {
		return typeInqry;
	}
	public void setTypeInqry(String typeInqry) {
		this.typeInqry = typeInqry;
	}
	public String getqTitle() {
		return qTitle;
	}
	public void setqTitle(String qTitle) {
		this.qTitle = qTitle;
	}
	public String getqContent() {
		return qContent;
	}
	public void setqContent(String qContent) {
		this.qContent = qContent;
	}
	public Date getqDate() {
		return qDate;
	}
	public void setqDate(Date qDate) {
		this.qDate = qDate;
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
		return "QuestionsVO [qIdx=" + qIdx + ", email=" + email + ", name=" + name + ", phone=" + phone
				+ ", memberType=" + memberType + ", typeInqry=" + typeInqry + ", qTitle=" + qTitle + ", qContent="
				+ qContent + ", qDate=" + qDate + ", fileName=" + fileName + ", oriName=" + oriName + "]";
	}
	
	
	
}
