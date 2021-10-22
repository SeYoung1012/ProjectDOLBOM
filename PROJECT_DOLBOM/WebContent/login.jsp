<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
  
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <!--폰트어섬추가 -->
 <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
 <link rel="stylesheet" href="css/login.css">
 <script src="js/login.js"></script>

</head>
<script>
   function join_go(){
      location.href="controller?type=joinType";
   }
   function findId_go(){
      location.href="controller?type=idFind";
   }
   function findPwd_go(){
      location.href="controller?type=findPwdPage";
   }
   

</script>
<body>
<%@ include file="header.jsp" %>
   
    <form  method="post" id="frm">
       
       <div class="wrap" >
 
            <div id="cont1">
                <div id = "panel" class="panel panel-default">
                <div class="panel-heading">
                    로그인
                </div>
                <div class="panel-body">
                    <input type="text" id="id" class="input form-control" name="userId" placeholder="ID">
                    <br>
                    <input type="password" id="pwd" class="input form-control" name="pwd" placeholder="비밀번호">
                    <br>
                    <br>
                </div>
            </div>
            <input type="button" id="login" class="btn btn-lg btn-success" value="로그인" onclick="validate(this);">
            <input type="hidden" name="typ" value="1">
         <br><br>
            <div class="bottom-menu">
                <a href="javascript:join_go();">회원가입</a>
                <a href="javascript:findId_go();">아이디 찾기</a>
                <a href="javascript:findPwd_go();">비밀번호 찾기</a>
            </div>
        </div>
    </div>
    
   </form>
   
   

</body>
</html>