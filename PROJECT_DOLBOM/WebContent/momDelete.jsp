<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% 
	int mb_id = Integer.parseInt(request.getParameter("mb_id"));
	request.setAttribute("mb_id", mb_id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>삭제</title>

<script>
	function back(){
		history.back();
	}
</script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <!--폰트어섬추가 -->
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/login.css">
</head>
<body>
<%@ include file="header.jsp" %>
	
    <form action="board?type=momDelete" method="post">
	    
	    <div class="wrap" >
 
            <div id="cont1">
               <div id = "panel" class="panel panel-default">
                <div class="panel-heading">
                    비밀번호 확인

                    <p class="contxt">비밀번호를 입력해주세요.</p>
                </div>
                <div class="panel-body">
                    <%-- <input type="text" class="input form-control" name="userId"  value="${userId }" readonly> --%>
                    <br> 
                    <input type="password" class="input form-control" name="pwd" placeholder="비밀번호" required>
                    <input type="hidden" name="userId" value="${loginUser.userId }">
					<input type="hidden" name="mb_id" value="${mb_id}">
                    <br>
                    <br>
                </div>
            </div>
            <button id="login" class="btn btn-lg btn-info">비밀번호 확인</button>
           
			<br><br>

        </div>
    </div>
    
	</form>
</body>
</html>