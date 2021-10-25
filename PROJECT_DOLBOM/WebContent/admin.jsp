<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>관리자 메인 페이지</title>
</head>
<style>
* {
	box-sizing: border-box;
}

a {
	text-decoration: none;
	color: #000;
}

.column {
	float: left;
	padding: 15px;
}

.box {
	max-width: 1180px;
	margin: 0 auto;
}

.clearfix::after {
	content: "";
	clear: both;
	display: table;
}

.menu {
	width: 25%;
	max-width: 1180px;
	margin: 0 auto;
	text-align: left;
	
}

.content {
	width: 75%;
}

.menu ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	display: inline-block;
}

.menu li {
	padding: 10px;
	margin-bottom: 8px;
	background-color:#04AA6D;
	color: #ffffff;
	cursor: pointer;

}

.menu li:hover {
	background-color:#8FBC8F;
}


</style>



<body>

	<%@ include file="adminheader.jsp" %>

	<!--좌측 메뉴 -->

	<div class="clearfix box">
		<ul class="column menu">
			<li><a href="admin?type=user"><strong>회원정보 관리</strong></a></li>
			<li><a href="admin?type=question"><strong>문의사항 관리</strong></a></li>
			<li><a href="admin?type=nlist"><strong>공지사항 관리</strong></a></li>
			<li><a href="admin?type=glist"><strong>가이드 관리</strong></a></li>
			<li><a href="guide_wr.jsp"><strong>가이드 작성</strong></a></li>
			<li><a href="notice_wr.jsp"><strong>공지사항 작성</strong></a></li>
		</ul>
		
		
		
	<!-- 오른쪽 컬럼 -->
    <div class="w3-twothird">
    
      <div class="w3-container w3-card w3-white w3-margin-bottom">
        <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-suitcase fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>관리자 유의사항</h2>
        <div class="w3-container">
          <h5 class="w3-opacity"><b> 개인정보 유의사항</b></h5>
          <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i>Oct 2021 - <span class="w3-tag w3-teal w3-round">현재</span></h6>
          <p>개인정보 2.0 시대의 개막에 맞춰 사업자가 실천해야 할 사업자 개인정보보호 10가지 원칙</p>
          <hr>
        </div>
        <div class="w3-container">
          <h5 class="w3-opacity"><b>부모회원 관리 유의사항</b></h5>
          <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i>Oct 2021 - <span class="w3-tag w3-teal w3-round">현재</span></h6>
          <p>부모회원 업무 지침 및 안내사항</p>
          <hr>
        </div>
        <div class="w3-container">
          <h5 class="w3-opacity"><b>시터회원 관리 유의사항</b></h5>
          <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i>Oct 2021 - <span class="w3-tag w3-teal w3-round">현재</span></h6>
          <p>시터회원 인증 관리 및 업무 지침 안내사항</p><br>
        </div>
      </div>

      <div class="w3-container w3-card w3-white">
        <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-certificate fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>게시판 수정</h2>
        <div class="w3-container">
          <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i>Oct 2021 - <span class="w3-tag w3-teal w3-round">현재</span></h6>
          <p>게시판 관리에 관한 유의사항</p>
          <hr>
        </div>
	
		
	</div>
	<br>
	</div>
	</div>
	
	
<%@ include file="footer.jsp" %>


</body>
</html>