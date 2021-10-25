<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% 
	int sb_id = Integer.parseInt(request.getParameter("sb_id"));
	request.setAttribute("sb_id", sb_id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${result eq 1 }">
		<script>
			alert("글 수정처리가 되었습니다.")
			location.href = "board?type=sitterDetail&sb_id=${sb_id}";	
		</script>
	</c:if>
</body>
</html>