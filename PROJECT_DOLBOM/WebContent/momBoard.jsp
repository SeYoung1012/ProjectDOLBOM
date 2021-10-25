<%@page import="com.bc.model.vo.board.SitterboardVO"%>
<%@page import="java.util.List"%>
<%@page import="com.bc.model.dao.board.SitterboardDAO"%>
<%@page import="com.bc.common.board.Paging"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 현재 페이지에 표시할 데이터를 화면 표시 
	1. 페이징 처리를 위한 객체(Paging) 생성해서 필요한 데이터 참조
	2. 페이징 객체에 설정할 데이터 저장
	3. (DB) 전체 데이터 건수 조회
	4. (DB) 현재 패이지 표시할 데이터 조회
	5. 데이터 화면 표시(화면 컨트롤 - 스타일 지정)
--%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 목록</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- bootstrap start-->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"
	integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/momsitter.css">




<script>
	function sendData() {
		location.href = "momWrite.jsp";
	};
	function sitter_list() {
		location.href = "board?type=sitterBoard";
	}
	function searchData() {
		location.href = "board?type=momSearch";
	}
	
	function validate(){
		if (${loginUser == null }) {
			alert("로그인 또는 회원가입 후 진행해주시기 바랍니다.");
			return false;
		}
		
		
		return true;
	}
	
</script>


</head>
<style>

/* .title { background-color: lightsteelblue; } */

/* .no { width: 10%; }
	.writer { width: 15%; }
	.regdate { width: 20% }
	.hit { width: 15% } */
table {
	margin-left: auto;
	margin-right: auto;
	border: 1px solid black;
}

tr td {
	
}

.tbody1 {
	width: 200px;
	border: 1px solid black;
}
/******* 페이지 표시 영역 스타일(시작) *************/
.paging {
	list-style: none;
}

.paging li {
	float: left;
	margin-right: 8px;
}

.paging li a {
	text-decoration: none;
	display: block;
	padding: 3px 7px;
	border: 1px solid #00B3DC;
	font-weight: bold;
	color: black;
}

.paging .disable {
	border: 1px solid silver;
	padding: 3px 7px;
	color: silver;
}

.paging .now {
	border: 1px solid #5bc0de;
	padding: 3px 7px;
	font-weight: bold;
	background-color: #5bc0de;
}

#quest__link {
	background: rgba(204, 255, 000, 0.6);
	border-radius: 30px;
	margin-bottom: 10px;
	font-size: 15px;
	box-shadow: 0px 0px 5px rgb(0 0 0/ 20%);
	color: #483d8b;
}

#quest__link:hover {
	border: 1px solid rgb(000, 153, 255);
}

#quest__link:active {
	transform: translateY(3px);
}
</style>

<body>
<%@ include file="header.jsp"%>
	<div class="wrap">
		<div class="myPage">
			<div class="table1">
				<div class="t-main">
					<div class="t-sub">
						<div class="dtail">
							<h2 class="h2-board">일자리 찾기</h2>
								
							<c:if test="${loginUser.typ==2 }">
							<div style="margin:8px; text-align: right;">
								<form action="board?" method="post">
									<input type="hidden" name="type" value="searchMom"> 
									<input type="text" name="search" placeholder="지역명" style="height: 30px border: 1px solid grey; border-radius: 5px">
									<input type="submit" class="btn btn-info" value="검색">
								</form>
							</div>
							</c:if>

							<!-- 요기를 반복처리 -->
							<c:forEach var="vo" items="${momList }">
								<a href="board?type=momDetail&mb_id=${vo.mb_id }" onclick="return validate()"><div class="dtail-main">
								
									<div>
										<hr class="hrDetail">
									</div>
								
								<div class="prifile-container">
									<div class="profile-left">
										<img class="profile-Image" src="img/baby.png" alt="">
									</div>
									
									<div class="profileIn">

										<div class="content">
											<div class="userName">
												${vo.mb_title }
											</div>
											<div class="dateUpdate">
												&nbsp;&nbsp; 작성일(${vo.mb_date.substring(0, 10) })</div>
										</div>


										<div class="content">
											<div>
												<span class="item"> ${vo.name }&nbsp;&nbsp; </span>
												<span class="item">
													<c:if test="${vo.child_age eq 1}"> 아이유형(신생아) </c:if>
													<c:if test="${vo.child_age eq 2}"> 아이유형(영아) </c:if>
													<c:if test="${vo.child_age eq 3}"> 아이유형(유아) </c:if>
													<c:if test="${vo.child_age eq 4}"> 아이유형(초등학생) </c:if>
												</span>
											</div>	
										</div>

										<div class="content">
											<div class="items">${vo.address }</div>
										</div>

										<div class="content">
											<div class="items">${vo.mb_content }</div>
										</div>

										<div class="content">
											<div class="items">시급(${vo.pay })</div>
										</div>
									</div>
								</div>
								<div>
									<hr class="hrDetail">
								</div>
								</div></a>
								
							</c:forEach>
							<!-- 요기까지 -->

						</div>
					</div>
				</div>
				<div id="ta-paging">
					<!-- 페이징 시작-->

					<table>
						<tr>
							<td colspan="3">
								<ol class="paging">
									<c:choose>
										<%-- [이전으로]에 대한 사용여부 처리 --%>
										<c:when test="${pvo.beginPage == 1 }">
											<li class="disable">이전으로</li>
										</c:when>
										<c:otherwise>
											<li><a
												href="board?type=momBoard&cPage=${pvo.beginPage - 1 }">이전으로</a>
											</li>
										</c:otherwise>
									</c:choose>


									<c:forEach var="pageNo" begin="${pvo.beginPage }"
										end="${pvo.endPage }">
										<c:choose>
											<c:when test="${pageNo == pvo.nowPage }">
												<li class="now">${pageNo }</li>
											</c:when>
											<c:otherwise>
												<li><a href="board?type=momBoard&cPage=${pageNo }">${pageNo }</a></li>
											</c:otherwise>
										</c:choose>
									</c:forEach>

									
									<c:if test="${pvo.endPage < pvo.totalPage }">
										<li><a
											href="board?type=momBoard&cPage=${pvo.endPage + 1 }">다음으로</a></li>
									</c:if>
									<c:if test="${pvo.endPage >= pvo.totalPage }">
										<li class="disable">다음으로</li>
									</c:if>
									
									
									<c:if test="${loginUser.typ==1 }">
									<!-- <input type="button" value="시터등록" onclick="back()"> -->
									<li><input type="button" id="btn-Cr" value="맘등록" class="btn btn-info" onclick="sendData()"></li>
									</c:if>
									
								</ol> 

							</td>

						</tr>

					</table>


					<!--페이징 종료-->
				</div>
			</div>

		</div>
	</div>

</body>
</html>