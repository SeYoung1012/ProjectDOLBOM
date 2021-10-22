<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>고객센터</title>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <!-- 구글 roboto Font 사용-->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500&display=swap" rel="stylesheet">
    <!-- reset cdn 갖고와서 사용-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
    <link rel="stylesheet" href="css/userCenter.css">
   	<script>
   	
   	$(function(){
   	    $.ajax("notice?type=userCenter",{
   	        type : "POST",
   	     	dataType : "json",
   	        success : function(data){
   	            //전달받은 JSON 데이터 처리
  
   	            let tbody = "";
   	            let alist = data.list; // JSON 객체의 속성명 "list" 의 값 추출
				$.each(alist, function(index, member){
					//console.log("this.name : " + this.name);
					tbody += "<tr>";
					tbody += "<td class='subject'>" + this.title + "</td>";
					tbody += "<td class='admin_id'>" + this.aId + "</td>";
					tbody += "<td class='regDate'>" + this.bDate + "</td>";
					//tbody += "<td>" + member.regdate + "</td>";
					//tbody += "<td>" + member["regdate"] + "</td>";
					tbody += "</tr>";
				});
				$("#tbody").html(tbody);
			},
			error : function(jqXHR, textStatus, errorThrown){
				alert("Ajax 처리 실패 : \n" + "jqXHR.status " +jqXHR.status
					+ "jqXHR.readyState : " + jqXHR.readyState + "\n"
					+ "textStatus : " + textStatus + "\n"
					+ "errorThrown : " + errorThrown);
			}
		});
   	});
   	
   	function more(){
   		location.href="notice?type=board";
   	}
   	function frequent(){
   		location.href = "notice?type=frequent";
   	}
   	
   	</script>
</head>
<body>
    <div class="body__container">
        <header class="header">
            <div class="logo">
                <a class="img__link" href="main.jsp"><img src="asset/idolbom1.jpg" alt="logo"></a>    <!-- 메인 홈페이지 링크-->
                <a class="main__link" href="userCenter.jsp">고객센터</a> 
                <a class="main__link" href="javascript:frequent();">자주 묻는 질문</a>
            </div>
            <!-- 문의사항 링크 이동-->
            <ul class="right-nav">
                <li><a class="sub__link" href="board?type=sitterBoard"" >시터 찾기</a></li>   <!-- 받고 해야함 -->
                <li><a class="sub__link" href="board?type=momBoard"" >일자리 찾기</a></li>  <!-- 받고 해야함 -->
                <li><a id="quest__link" href="inqryRgstr.jsp">문의 등록</a></li>

            </ul>
        </header>
  
        <section id ="sec-01" class="section">
            <div id="banner">
                <div class="text--box">
                    <h2 class="main__title">안녕하세요.&nbsp;고객센터 입니다.</h2>  
                     <p class="sub__title">무엇을 도와드릴까요?</p>
                </div>   
                    <div class="banner--box">
                        <form role="search" action="notice?" method="get" accept-charset="UTF-8">
                        		<input type="hidden" name="type" value="search">
                                <input type="search" name="question" id="question" autocomplete="off">
                        </form>
                </div>  
            </div>
        </section>


        <div class="container">
            <section class="inner">
                <ul class="list">
                    <li class="item"><a href="javascript:frequent();" class="item-link">
                        <img src="icon/qa-64.png" alt="질문이미지" ">
                        <span class="item-title">자주 묻는 질문</span>    
                        <span class="item-content">Question</span>
                    </a></li>
					<!-- 받고 해야함 -->
                    <li class="item"><a href="notice?type=guide&type2=mother" class="item-link">
                        <img src="icon/family.png" alt="부모가이드">
                        <span class="item-title">부모회원</span>    
                        <span class="item-content">이용가이드</span>
                    </a></li>
					<!-- 받고 해야함 -->
                    <li class="item"><a href="notice?type=guide2&type2=sitter" class="item-link">
                        <img src="icon/manager.png" alt="시터가이드">
                        <span class="item-title">시터회원</span>    
                        <span class="item-content">이용가이드</span>
                    </a></li>

                    <li class="item"><a href="notice?type=board" class="item-link">
                        <img src="icon/notice.png" alt="소식">
                        <span class="item-title">공지사항</span>    
                        <span class="item-content">아이돌봄 소식</span>
                    </a></li>
                </ul>
            </section>
            
            <section class="subInner">
                <div class="notice">
                    <div>
                        <p>최근 공지사항</p>
                    </div>
                    <table>
                        <caption>
                            <a href="javascript:more();">더보기</a>
                        </caption>
                        <colgroup>
                            <col class="w500">
                            <col class="w15">
                            <col class="w25">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>제목</th>
                                <th>작성자</th>
                                <th>작성일</th>
                            </tr>
                        </thead>
                        <tbody id="tbody">

                        </tbody>
                    </table>
                </div>
            </section>
        </div>
   			<%@ include file="footer.jsp" %>
    </div>
</body>
</html>