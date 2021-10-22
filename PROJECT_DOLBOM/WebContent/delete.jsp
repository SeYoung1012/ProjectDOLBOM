<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원탈퇴</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <!--폰트어섬추가 -->
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/login.css">
    
</head>
<body>
	<%@ include file="header.jsp" %>
	
    <form action="controller?type=delete" method="post">
	    
	    <div class="wrap" >
 
            <div id="cont1">
                <div id = "panel" class="panel panel-default">
                <div class="panel-heading">
                    비밀번호 확인

                    <p class="contxt">안전한 사용을 위해 비밀번호를 다시 한 번 입력해주세요.</p>
                </div>
                <div class="panel-body">
                    <input type="text" class="input form-control" name="userId"  value="${userId }" readonly>
                    <br>
                    <input type="password" class="input form-control" name="pwd" placeholder="비밀번호">
                    <br>
                    <br>
                </div>
            </div>
            <button id="login"class="btn btn-lg btn-info">비밀번호 확인</button>
           
			<br><br>

        </div>
    </div>
    
	</form>
</body>
</html>