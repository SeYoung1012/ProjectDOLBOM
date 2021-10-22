<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>가이드 관리</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

    <!-- bootstrap start-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/index.css">
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
.w500{
    width: 10px	 !important;
}
.w300{
    width: 300px !important;
}

.w150{
    width: 150px !important;
    
}

.w130{
    width: 300px !important;
    
}
.w100{
    width: 300px !important;
}
.w15{
    width: 30px !important;

}

.w25{
    width: 100px !important;
}
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

/* 내용추가할 부분 요기 */
.notice .content-detail{
    height: 30px;
    margin-bottom: 50px;
}
/* 내용추가할 부분 요기 */
.notice .content-sub{
    height: 50px;
    margin-bottom: 50px;
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



.notice{
    position: relative;
    max-width: 1180px;
 
    box-sizing: border-box;

}
.notice>div{
    text-align: center;
}

.notice>div>p{
    margin-bottom: 30px;
    font-weight: bold;
    font-size: 30px;
}
.notice table{
    margin: 0 auto;
	text-indent: initial;
    border-collapse: collapse;
    border-spacing: 0;
    box-shadow: 0px 0px 12px rgb(0 0 0 / 12%);
}

table caption{
    text-align: right;
    margin-bottom: 20px;
    font-weight: 500;
}

.notice table thead th{

    padding: 10px 0;
    background: #f9f9f9;
    vertical-align: middle;
    color: #111;
    font-weight: bold;
    border-top: 2px solid #04AA6D;
    border-bottom: 2px solid #04AA6D;
    text-align: center;
}

.notice table tr td{
	text-align: center;
    padding: 13px 10px;
    vertical-align: middle;
    border-bottom: 1px solid #e2e2e2;
}

.admin_id, .regDate{
    text-align: center;
}


</style>
<body>
	<%@ include file="adminheader.jsp" %>
	
	 <main>
            <div class="copntainer--main">
                <div class="nav">
                    <ul class="procedure">
                        <li><a href="admin.jsp">관리자 메인페이지</a></li>
                        <li>가이드 관리</li>
                    </ul>
                </div>  

                <section class="subInner">
                    <div class="notice">
                        <div>
                            <p>가이드 전체 목록</p>
                        </div>

                     
                        <table>

                            <colgroup>
                                 <col width="100px">
                                <col width="100px">
                                <col width="200px">
                                <col width="300px">
                                <col width="200px">
                            </colgroup>
                            <thead>
                                <tr>
                                	<th>번호 </th>
                                   <th>관리자</th>
									<th>제목 </th>
									<th>내용 </th>
									<th>파일이름 </th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="vo" items="${list }">
								<tr>
									<td><a href="admin?type=gone&g_idx=${vo.g_idx }">${vo.g_idx }</a></td>
									<td>${vo.a_id } </td>
									<td>${vo.g_title } </td>
									<td>${vo.g_content }</td>
									<td>${vo.file_name }</td>	
									</tr>
									</c:forEach>
		                   </tbody>
                        </table>
                    </div>
                </section>

            </div>
        </main>

	<br>


	<%@ include file="footer.jsp" %>
	


</body>
</html>