<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
  
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <!--폰트어섬추가 -->
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/login.css">
</head>
<script>
function login_go(){
   location.href="controller?type=loginPage";
}
</script>
<style>
.result{
    text-align: center;
    font-size: 20px;
    font-weight: bold;
}
.content{
    font-size: 17px;
}
.panel-default>.panel-heading{
    background-color :    #b0c4de;
    color:  black;
}

.button-box{
    display: flex;
    justify-content: center;
}
.btn{
    margin:  0 0;
    margin-top: 20px;
    width: 130px;
}
span{
    font-weight: 600;
    color: red;
}



</style>
<body>
       
       <div class="wrap" >
 
            <div id="cont1">
                <br><br><br> <br><br><br>
                <div id = "panel" class="panel panel-default">
                   
                <div class="panel-heading">
                    
                    비밀번호 찾기
                </div>
                <div class="panel-body">
                    <p class="result">확인결과<p>
                        <hr>
                        <br>
                    <p class="content">회원가입시 사용한 비밀번호는 <span>${pwd }</span>입니다.</p>
                    <br>
             
                </div>
            </div>
            <div class="button-box">
            <input type="button" class="btn btn-default btn01"  value="로그인" onclick="login_go()">

         
         <br><br>
        </div>     
        <br><br>

        </div>
    </div>
   </body>

</html>