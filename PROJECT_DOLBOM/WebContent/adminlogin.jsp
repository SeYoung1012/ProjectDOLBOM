<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 로그인</title>
  
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <!--폰트어섬추가 -->
 <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
 <link rel="stylesheet" href="CSS/login.css">


</head>
<style>
#cont1{
   position: relative;
   top: 20%;
}
#panel{
    position: relative;

    width: 400px;
    height: 100%;
   
}
.panel-default>.panel-heading{
    text-align: left;
    font-weight: 700;
    font-size: 18px;
}
.wrap{
    background-color: rgb(246, 246, 246);
    height: 100vh;
}
#panel{

    margin: 0 auto;
}
input[type=text]{
    margin-top: 30px;
}

#login{
	display:block;
    padding-top : 5px
}
.panel-body .input{
    width: 350px;
    height: 50px;
    margin-left: 3%;
    
}


.btn{
	display:block;
    height: 50px;
    margin: 0 auto;
    margin-top: 20px;
    width: 350px;
    text-align: center;
        

}
.bottom-menu{
    height: 20px;
    text-align: center;
    margin-right: 20px;
    
}


a{

    margin-left: 20px;
}

.btn-lg{
	
    padding-top: 15px;
}

.contxt{
    line-height: 19px;
    margin-top: 10px;
    font-size: 12px;
    color: #666;
}





</style>


<body>
	<%@ include file="adminheader.jsp" %>
	
	<form action="admin?type=adminlogin" method="post">

	 <div class="wrap" >
 
            <div id="cont1">
                <div id = "panel" class="panel panel-default">
                <div class="panel-heading">
                    로그인
                </div>
                <div class="panel-body">
                    <input type="text" class="input form-control" name="userId" placeholder="ID">
                    <br>
                    <input type="password" class="input form-control" name="pwd" placeholder="비밀번호">
                    <br>
                    <br>
                </div>
            </div>
            <button id="login"class="btn btn-lg btn-success">로그인</button>
            <input type="hidden" name="a_id" value="1">
			<br><br>
           
        </div>
    </div>
    
	</form>



</body>
</html>