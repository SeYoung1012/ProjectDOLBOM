<%@page import="com.bc.model.vo.member.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>마이페이지</title>

</head>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

     <!-- bootstrap start-->
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
 <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
 <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 <link rel="stylesheet" href="css/myPage.css">
<script>
	function updateInfo_go(){
		location.href="updateInfo.jsp";
	}
	
	function delete_go(){
		location.href="delete.jsp";
	}
</script>
<body>
<%
	MemberVO vo = (MemberVO)session.getAttribute("vo");
	String care = vo.getCare();
	String[] arr = care.split("");
	
	for(int i = 0; i< arr.length; i++){
		System.out.print(arr[i]);
	}
	request.setAttribute("arr", arr);	
%>	
	<%@ include file="header.jsp" %>
    <div class="wrap">
        <div class="myPage">
            <div class="main-page">
                <c:if test="${vo.typ eq 1 }">
                <div id="name"><p>${vo.name } 부모님,  안녕하세요</p></div> 
                </c:if>

                <c:if test="${vo.typ eq 2 }">
                    <div id="name"><p>${vo.name } 시터,  안녕하세요</p></div> 
                </c:if>
                
                <div class="hr-1"> </div>
            </div>
            <div class="sub-page">
                <div class="sub-main">
                    <div class="sub-sub"><p>아이디</p><p>${vo.userId }</p></div>
                    <div class="sub-sub"><p>전화번호</p><p>${vo.phone }</p></div>
                    <div class="sub-sub"><p>이메일</p><p>${vo.emailId } @ ${vo.emailBox }</p></div>
                    <div class="sub-sub"><p>자택주소</p><p>${vo.address }</p></div>
                    
                   <!--  for(int i=0; i<str.length(); i++){
					   str.chatAt(0)
					
					} -->
                    <div class="sub-sub"><p>아이나이</p>
                    <c:if test="${vo.childAge eq 1 }"> <p>신생아</p> </c:if>
                    <c:if test="${vo.childAge eq 2 }"> <p>영아</p> </c:if>
                    <c:if test="${vo.childAge eq 3 }"> <p>유아</p> </c:if>
                    <c:if test="${vo.childAge eq 4 }"> <p>초등학생</p> </c:if>
                    </div>
					
                    <div class="sub-sub"><p>원하는 돌봄 활동</p>
                    <c:forEach var="i"  begin="0" end="5">
                    <c:if test="${arr[i] eq '1' }"> 등하원 돕기 </c:if>
                    <c:if test="${arr[i] eq '2' }"> 실내놀이 </c:if>
                    <c:if test="${arr[i] eq '3' }"> 야외활동 </c:if>
                    <c:if test="${arr[i] eq '4' }"> 학습지도 </c:if>
                    <c:if test="${arr[i] eq '5' }"> 영어놀이 </c:if>
                    <c:if test="${arr[i] eq '6' }"> 밥 챙겨주기 </c:if>
                    </c:forEach>
                    </div>
                    
                    <div class="sub-sub"><p>원하는 시급</p><p>${vo.pay }원</p></div>

                </div>
                <div class="btns">
                    <button class="btn btn-default" onclick="updateInfo_go()">회원정보 수정</button>
                    <button class="btn btn-default" onclick="delete_go()">회원탈퇴</button>
                </div>
            </div>
        </div>
    </div>
</body>
</html>