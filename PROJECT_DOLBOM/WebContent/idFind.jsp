<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
</head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <!--폰트어섬추가 -->
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/login.css">
<script>
/* 	function find_go() {
		location.href="controller?type=findId";
	} */
	function back_go() {
		location.href="controller?type=loginPage";
	}
	
</script>
<style>
	.wrap{height: 810px;}
	.button-box{   
	text-align : center;
	
	display:flex;
	 justify-content: center;
}

.btn01{
width : 100px;
	margin : 0 0;
	margin-top : 20px;

}
.inputag{
	display : flex;
}

.panel-body #email02{
	margin-top:30px;
	width : 165px;
}

.panel-body p{
	margin-top: 300px;
}

</style>
<body>
	
		<%@ include file="header.jsp" %>

	<form action="controller" method="post">
	    
	    <div class="wrap" >
 
            <div id="cont1">
                <div id = "panel" class="panel panel-default">
                <div class="panel-heading">
                    아이디 찾기
                </div>
                <div class="panel-body">
                	
                  <input type="text" class="input form-control" name="name" placeholder="이름">
  				<div class="inputag">
                    <input type="text" name="emailId" class="input form-control"  placeholder="EMAIL" style=width:150px;>
					<div style="margin-top: 45px;margin-left: 10px;">@</div>
					<select name="emailBox" id="email02" class="input form-control">
	    				<option value="1">이메일 선택</option>
	                    <option value="naver.com">naver.com</option>
	                    <option value="gmail.com">gmail.com</option>
	                    <option value="daum.net">daum.net</option>
	                    <option value="hanmail.net">hanmail.net</option>
	                    <option value="hotmail.com">hotmail.com</option>
	                    <option value="nate.com">nate.com</option>
	                    <option value="yahoo.co.kr">yahoo.co.kr</option>
	                    <option value="empas.com">empas.com</option>
	                    <option value="freechal.com">freechal.com</option>
	                    <option value="lycos.co.kr">lycos.co.kr</option>
	                    <option value="korea.com">korea.com</option>
	                    <option value="hanmir.com">hanmir.com</option>
	                    <option value="dreamwiz.com">dreamwiz.com</option>
	                    <option value="paran.com">paran.com</option>
					</select>
                  </div>
                  <br>
                  <br>
                </div>
            </div>
            <div class="button-box">
            <input type="submit" class="btn btn-default btn01"  value="찾기" onclick="find_go()">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="hidden" name="type" value="findId">
			<input type="button" class="btn btn-default btn01" value="뒤로가기" onclick="back_go()">    
			</div>     
			<br><br>

        </div>
    </div>
    
	</form>
	
</body>
</html>