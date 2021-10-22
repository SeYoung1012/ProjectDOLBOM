<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>       
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>가이드 상세보기 </title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

    <!-- bootstrap start-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/index.css">
    <script src = "https://code.jquery.com/jquery-3.6.0.min.js"></script>

</head>
<style>
#wrap{
    
    position: relative;
    font-family: 'Roboto', sans-serif;
    font-size: 16px;
    font-weight: 400;
    color: #333;
}
/*공통 부분 */
*{
    box-sizing: border-box;
}
a{
    text-decoration: none;
    color: #000;
}

.section{
    position: relative;
}

input{
    font-weight: 500;
    max-width: 100%;
    transition: border .2s ease-in-out;
}

input:not([type="checkbox"]) {
    outline: none;
}

.w75{width : 90% !important;}
.w15{width: 150px !important;}


hr{
    background: #999;
    margin: 0 0;
    height: 1px;
}




/* BTN */
.btn {
    display: flex;
    align-items: center;
    height: 50px;
    padding: 0 12px;
    margin-top: 50px;
    border: 1px solid #d5d5d5;
    border-radius: 4px;
    font-size: 14px;
    font-weight: 500;
    color: #333;
    line-height: 1.5;
    text-align: center;
    /* linear-gradient(DIRECTION, COLOR1, COLOR2, ...); */
    background: #eee linear-gradient(to bottom, #fcfcfc, #eee);
    cursor: pointer;
    box-sizing: border-box;
    position: relative;

    transition: all 0.1s;
  }
  .btn:hover::before {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: rgba(0, 0, 0, .07);
  }
  .btn.btn--primary {
    border-bottom: 5px solid #69be38;
    color: #fff;
    background: #55a532 linear-gradient(#91dd70, #55ae2e);
  }
  .btn.btn--primary:active{
    border-bottom: 2px solid #69be38;
  }


  .btn:active{
      transform: translateY(3px);
  }

  /* INPUT */
  .input--text {
    height: 40px;
    width: 500px;
    padding: 0 10px;
    margin-bottom: 10px;
    font-size: 16px;
    border: 1px solid #ddd;
    border-radius: 5px;
    outline: none;
    box-sizing: border-box;
    box-shadow: inset 0 1px 2px rgba(0, 0, 0, .075); /* .75 아니고 .075 주의 */
  }
  .input--text:focus {
    border-color: #51a7e8 !important; /* header #search 선택자를 덮어쓰기 위해서 사용 */
    box-shadow: inset 0 1px 2px rgba(0, 0, 0, .075), 0 0 5px rgba(81, 167, 232, .5);
  }
  /* Vendor prefix(브라우저 업체별 접두어) */
  .input--text::-webkit-input-placeholder { color: #cacaca; }
  .input--text:-ms-input-placeholder      { color: #cacaca; }
  .input--text::-moz-placeholder          { color: #cacaca; }




/* 메인 부분 */

main .copntainer--main{
    max-width: 1180px;
    margin: 0 auto;
}



main .nav{
    margin-top: 20px;
    align-items: center;
    display: flex;
    min-height: 50px;
}
.procedure li{
    margin-left: 0px;
    color: #999;
    display: inline;
    font-weight: bold;
    font-size: 13px;
}
.procedure li a{
    color: #999;
}
.procedure li + li::before {
    content: ">";
    margin: 0 10px;
}



table{
    text-indent: initial;
    border-collapse: collapse;
    border-spacing: 0;
}
.notice{
    position: relative;
    max-width: 1180px;
    box-sizing: border-box;

}

.notice table{
	margin : 0 auto;
}
 
.notice>div{
    text-align: center;
}

.notice>div>p{
    margin-bottom: 30px;
    font-weight: bold;
    font-size: 30px;
}
table{

    box-shadow: 0px 0px 12px rgb(0 0 0 / 12%);
}

table caption{
    text-align: right;
    margin-bottom: 20px;
    font-weight: 500;
}

.notice table tbody th{

    padding: 10px 0;
    background: #f9f9f9;
    vertical-align: middle;
    color: #111;
    font-weight: bold;
    border-right: 2px solid #e2e2e2;
    border-bottom: 1px solid #e2e2e2;
    text-align: center;
}

.notice table tr td{
    padding: 13px 10px;
    vertical-align: middle;
    border-bottom: 1px solid #e2e2e2;
}

.admin_id, .regDate{
    text-align: center;
}


.btn1 {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 16px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 14px;
  margin: 4px;
  cursor: pointer;
  border-radius: 8px;
}

.btn1:hover {
  background-color: #32CD32;
  color: white;
}
  
.btn2 {
 background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 16px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 14px;
  margin: 4px;
  cursor: pointer;
  border-radius: 8px;
}

.btn2:hover {
   background-color: #32CD32;
  color: white;
}
 
 
</style>
<body>
		
		<%@ include file="adminheader.jsp" %>
	
	   <main>
            <div class="copntainer--main">
                <div class="nav">
                    <ul class="procedure">
                        <li><a href="admin.jsp">관리자 메인페이지</a></li>
                        <li><a href="admin?type=glist">가이드 관리</a></li>
                        <li>가이드 상세조회</li>
                    </ul>
                </div>  

                <section class="subInner">
                    <div class="notice">
                        <div>
                            <p>가이드 상세 조회</p>
                        </div>
	  
 						<table>

                            <colgroup>
                                <col class="w15">
                                <col class="w75">
                            </colgroup>
                            <tbody>
                                    
                            <tr>
								<th>번호</th>
								<td>${one.g_idx }</td>
							</tr>
							<tr>
								<th>관리자</th>
								<td>${one.a_id }</td>
							</tr>
							<tr>
								<th>유형</th>
								<td>${one.type }</td>
							</tr>
							<tr>
								<th>제목</th>
								<td>${one.g_title }</td>
							</tr>
							 <tr>
								<th>내용 </th>
								<td>${one.g_content }</td>
								</tr>
							 <tr>
							<th> 파일이름 </th>
							<td>${one.file_name }</td>
							</tr>
							 
                            </tbody>
                        </table>
                        <div>
       						<a class="btn1" href ="admin?type=gdelete&g_idx=${one.g_idx }">삭제</a>
							<a class="btn2" href ="admin?type=glist" > 목록보기</a>
                        </div>
                    </div>
                </section>

            </div>
        </main>
	
<%@ include file="footer.jsp" %>



</body>
</html>