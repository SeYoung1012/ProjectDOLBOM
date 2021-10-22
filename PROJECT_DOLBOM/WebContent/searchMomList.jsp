<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색</title>
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
	function list_go(){
		location.href = "board?type=momBoard";
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
	border: 1px solid #ff4aa5;
	padding: 3px 7px;
	font-weight: bold;
	background-color: #ff4aa5;
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
								

							<!-- 요기를 반복처리 -->
							<c:forEach var="vo" items="${searchList2 }">
								<a href="board?type=momDetail&mb_id=${vo.mb_id }"><div class="dtail-main">
									<div>
										<hr class="hrDetail">
									</div>
								
								<div class="prifile-container">
									<div class="profile-left">
										<img class="profile-Image" src="image/baby.png" alt="">
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
								</div>
								</a>
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
	
							
								<c:if test="${loginUser.typ==2 }"> 
									<!-- <input type="button" value="시터등록" onclick="back()"> -->
									<input type="button" value="전체목록보기" onclick="list_go()">
								</c:if>
							

							</td>

						</tr>

					</table>


					<!--페이징 종료-->
				</div>
			</div>

		</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>