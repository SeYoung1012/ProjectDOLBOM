<%@page import="com.bc.model.dao.board.SitterboardDAO"%>
<%@page import="com.bc.model.vo.board.SitterboardVO"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<c:if test="${result eq 1 }">
		<script>
			alert("글 등록 처리가 되었습니다.")
	 		location.href = "board?type=sitterBoard";		
		</script>
	</c:if>
</body>
</html>