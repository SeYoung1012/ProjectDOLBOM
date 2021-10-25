<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
      
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 삭제</title>
</head>
<script src = "https://code.jquery.com/jquery-3.6.0.min.js"></script>
<body>

<%@ include file="adminheader.jsp" %>

	<h1> 사원 정보 삭제</h1>
	<p> 삭제처리를 하지 못했습니다. <br>
		담당자(8282)에게 연락하세요</p>
		
<script>
	function move(){
		location.href="admin?type=user";	
	}
	
</script>
	<a href="admin?type=user" onclick="move()"> 목록 보기</a>
	
<%@ include file="footer.jsp" %>

</body>
</html>