<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>자주 묻는 질문</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

    <!-- bootstrap start-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/Frequently.css">
        
</head>
<script>
	function addClass(obj){
		$('.selected').prop('class','disable');
		$(obj).addClass("selected");
		
		let title1  = $(obj).text();

   	    $.ajax("notice?type=frequentajax&fTitle="+encodeURI(title1),{
   	        type : "POST",
   	     	dataType : "json",
   	        success : function(data){
   	            //전달받은 JSON 데이터 처리
   	            let rightMenu	 = "";
   	            let alist = data.list; // JSON 객체의 속성명 "list" 의 값 추출
				$.each(alist, function(index, member){

					rightMenu += "<header class='right--header'>";
					rightMenu += "<div class='title'>";
					rightMenu += "<h1>"+ this.fTitle +"</h1>";
					rightMenu += "</div>";
					rightMenu += "</header>";
					rightMenu += "<main>";
					rightMenu += " <div class='header-name'>"+this.aId;
					rightMenu += "<ul>";
					rightMenu += "<li>"+this.fDate+"</li>";
					rightMenu += "<li> 업데이트 시간</li>";
					rightMenu += "</ul>";
					rightMenu += "</div>";
					rightMenu += "<section>";
					rightMenu += "<div class='right--body'>";
					rightMenu += "<div class='box'>";
					rightMenu += ""+this.fContent+"";
					rightMenu += "</div>";
					rightMenu += "</div>";
					rightMenu += "</section>";
					rightMenu += "</main>";
					
					
				});
				$("#right--menu").html(rightMenu);
			},
			error : function(jqXHR, textStatus, errorThrown){
				alert("Ajax 처리 실패 : \n" + "jqXHR.status " +jqXHR.status
					+ "jqXHR.readyState : " + jqXHR.readyState + "\n"
					+ "textStatus : " + textStatus + "\n"
					+ "errorThrown : " + errorThrown);
			}
		});
		
		
		
	}
	
	
	
</script>
 <body>
        <div id="wrap">
            <div class="container--header">
                <header class="header"> 
                    <div class="logo"><!-- 고객센터 링크-->
                        <a class="img__link" href="main.jsp"><img src="asset/idolbom1-removeBack.png" alt="logo"></a>    
                        <a class="main__link" href="userCenter.jsp">고객센터</a> 
                        <a class="main__link" href="notice?type=frequent">자주 묻는 질문</a>
                    </div>
                    <!-- 문의사항 링크 이동-->
                    <div>
                        <a id="quest__link" href="inqryRgstr.jsp">문의 등록</a>
                    </div>
    
                </header>
            </div>
            <hr>
            <main>
                <div class="copntainer--main">
                    <div class="nav">
                        <ul class="procedure">
                            <li><a href="userCenter.jsp">고객센터</a></li>
                            <li>자주 묻는 질문</li>
                        </ul>
                    </div> 

                    <!-- ajax 를 이용한 데이터 뿌려주기-->
                    <div class="container--content">
                        <ul id="left--menu">
                            <li><a class="active">Best 질문</a></li>
                            <c:if test="${not empty flist }">
							   <c:forEach var="vo" items="${flist }">
		                            <li><a class="before" href="javascript:;" onclick="addClass(this);">${vo.fTitle }</a></li>
		                      	</c:forEach>
						  </c:if>
			 
								 <c:if test="${empty flist }">
								 	<li>검색된 데이터가 없습니다.</li>
								 </c:if>        
                        </ul>

                        <div id="right--menu">
                            <header class="right--header">  
                                <div class="title">
                                <h1>제목입니다.</h1>
                               </div>  

  
                            </header>
                         <main>
                                <div class="header-name">이름
                                    <ul>
                                        <li>시간이 들어갈 부분</li>
                                        <li>업데이트 시간</li>
                                    </ul>
                                </div>
                            <section> 
                                <div class="right--body">
                                    <div class="box">
                                        내용
                                    </div>
                                </div>
                            </section>
                        </main>

                        </div>

                    </div>
                </div>  
            </main>
        </div>






</body>
</html>