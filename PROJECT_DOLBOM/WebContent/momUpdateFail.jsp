<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	int mb_id = Integer.parseInt(request.getParameter("mb_id"));
	request.setAttribute("mb_id", mb_id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
	alert("글 수정 처리가 되지 않았습니다.")
	location.href = "board?type=momDetail&mb_id=${mb_id}";	
</script>
</body>
</html>