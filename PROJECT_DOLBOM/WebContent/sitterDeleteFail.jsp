<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	int sb_id = Integer.parseInt(request.getParameter("sb_id"));
	request.setAttribute("sb_id", sb_id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<script>
		alert("비밀번호가 일치하지 않습니다.")
		location.href = "board?type=sitterDetail&sb_id=${sb_id}"; 
	</script>
</body>
</html>