<%@page import="com.bc.model.vo.board.SitterboardVO"%>
<%@page import="com.bc.model.vo.board.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	MemberVO mvo = (MemberVO) session.getAttribute("loginUser");
	String care = mvo.getCare();
	
	System.out.println("care : " + care);
	String[] arr1 = care.split("");
	
	for(int i = 0; i< arr1.length; i++){
		System.out.println("arr[i] : " + arr1[i]);
	}
	request.setAttribute("arr1", arr1);
	
	SitterboardVO svo = (SitterboardVO) request.getAttribute("sitterOne");
	String care_date = svo.getCare_date();
	String[] arr2 = care_date.split("");
	for(int i = 0; i<arr2.length; i++) {
		System.out.println("arr2[i] : " + arr2[i]);
	}
	request.setAttribute("arr2", arr2);
	
	
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시터게시판 상세보기</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
       <!-- bootstrap start-->
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
   <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
   <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   <link rel="stylesheet" href="css/sitterdetail.css">
<script>
	function sitterUpdate() {
		location.href = "sitterUpdate.jsp?sb_id=${sitterOne.sb_id}";
	}
	function sitterDelete() {
		location.href = "sitterDelete.jsp?sb_id=${sitterOne.sb_id}";
	}
	function sitterApply() {
		alert("신청되었습니다.");
		location.href = "board?type=sitterBoard";
	}
</script>
</head>
<body>
<div class="wrap">
         <div class="wrap-header">
            <div class="header-title">
                <div class="header-block">
                    <p class="title-main">${sitterOne.sb_title }</p>
                    <div class="back-icon">
                       <a href="javascript:history.go(-1)"> <img src="https://cdn.mom-sitter.com/momsitter-app/static/public/svg/backward.svg"></a>
                    </div>
                </div>
            </div>

         </div>

         <div class="img-tag">

            <img id="fileImage" class="fileImage" src="${pageContext.request.contextPath }/images/${sitterOne.ori_name }" alt="프로필 이미지" tabindex="-1" style="display: inline-block;">
         </div>

         <div>
            <div class="padding-box">
                <div class="padding-top">
                    <div class="textbox">
                        <div class="name">${sitterOne.name }</div>
                        <div id="job1" class="job1">${sitterOne.sb_job }</div>
                    </div>

                    <div class="textbox">
                      <!--  <div class="name">소개글~~~</div> -->
                        <div id="job2" class="job1">${sitterOne.sb_content }</div>
                    </div>
                    <hr class="hrDetail">

                    <div class="detail">
                        <div class="left-text">
                            <p class="menu-One">생년월일 - <span class="menu-two">${loginUser.birth }</span></p>
                            <p class="menu-One">돌봄가능 지역 - <span class="menu-two">${loginUser.address }</span></p>
                        <div class="left-text">
                            <p class="menu-One">희망시급 - <span class="menu-two">${loginUser.pay }원</span></p>
                        </div>
                        </div>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        
                        <div class="left-text">
                            <p class="menu-One">돌봄가능 날짜 - 
                            <c:forEach var="i" begin="0" end="6">
							<c:if test="${arr2[i] eq '1'}">   
                            <span class="menu-two">월요일</span>
                            </c:if>
                            <c:if test="${arr2[i] eq '2'}">   
                            <span class="menu-two">화요일</span>
                            </c:if>
                            <c:if test="${arr2[i] eq '3'}">   
                            <span class="menu-two">수요일</span>
                            </c:if>
                            <c:if test="${arr2[i] eq '4'}">   
                            <span class="menu-two">목요일</span>
                            </c:if>
                            <c:if test="${arr2[i] eq '5'}">   
                            <span class="menu-two">금요일</span>
                            </c:if>
                            <c:if test="${arr2[i] eq '6'}">   
                            <span class="menu-two">토요일</span>
                            </c:if>
                            <c:if test="${arr2[i] eq '7'}">   
                            <span class="menu-two">일요일</span>
                            </c:if>
                            </c:forEach>
                            </p>
                            
                            <p class="menu-One">돌봄 유형 - 
                            <c:forEach var="i" begin="0" end="5">
                            <c:if test="${arr2[i] eq '1' }"><span class="menu-two">등하원돕기</span></c:if>
                            <c:if test="${arr2[i] eq '2' }"><span class="menu-two">실내놀이</span></c:if>
                            <c:if test="${arr2[i] eq '3' }"><span class="menu-two">야외활동</span></c:if>
                            <c:if test="${arr2[i] eq '4' }"><span class="menu-two">학습지도</span></c:if>
                            <c:if test="${arr2[i] eq '5' }"><span class="menu-two">영어놀이</span></c:if>
                            <c:if test="${arr2[i] eq '6' }"><span class="menu-two">밥챙겨주기</span></c:if>
                            </c:forEach>
                            </p>
                        </div>
                    </div>

                    <div class="btn-group01">
 
					<c:if test="${loginUser.typ==2 }"> 
                        <button class="btn btn-info" onclick="sitterUpdate()">
                            <p id="pFont" class="menu-One">수정하기</p>
                        </button> &nbsp;&nbsp;
						  <button class="btn btn-info" onclick="sitterDelete()">
                            <p id="pFont" class="menu-One">삭제하기</p>
                        </button>
					</c:if>
					<c:if test="${loginUser.typ==1}"> 
                        <button class="btn12" onclick="sitterApply()">
                            <p id="pFont" class="menu-One">신청하기</p>
                        </button>
					</c:if>


                    </div>
                </div>
            </div>

         </div>
         </div>
</body>
</html>