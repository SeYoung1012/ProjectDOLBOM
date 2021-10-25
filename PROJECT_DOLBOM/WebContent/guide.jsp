<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유저가이드</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <!--폰트어섬추가 -->
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script>
	function moveab(){
		location.href='main.jsp';
	}
</script>

<style>
    .wrap{
        width: 1080px;
        margin: 0 auto;
    }
    .menu{
        width: 1000px;
        margin: 0 auto;
    }

    .menu-01{
        display: flex;
        padding: 90px 0;
        align-items: flex-start;
         justify-content: space-between;
    }

    .font-box{
        width: 500px;
        flex-direction: column;
        display: flex;
    }
    .img0{
        width: 400px;
         height: 400px;
    }
    .padding-value{
        width: 500px;
    }
    .fontbox{
        padding-top:50px;
        margin-bottom:25px;
        color:#ff7928;
        font-size:35px;
        font-weight:bold
    }

    .title{
        color:#000;
        font-size:20px;
        font-weight:bold;
    }

    .sub-content01{
        width:60px;
        height:5px;

        background-color:#f4f4f4;
        margin:15px 0

    }

    .sub-content02{
        margin-bottom:25px;
        color:#444;
        font-size:15px;
        font-weight:300;
        line-height:1.56;
    }

    .sub-content03{
        margin-bottom:40px;
        color:#444;
        font-size: 15px;
        font-weight:300;
        line-height:1.56;
    }
    button{
        border: none; 
        box-sizing: border-box; 
        display: inline-block; 
        cursor: pointer; 
        text-decoration: none; 
        margin: 0px; 
        padding: 0px; 
        outline: none; 
        font-size: 15px;
         font-weight: inherit;
          position: relative;
           z-index: 1;
            height: 50px; 
            line-height: 45px;
        min-width: 215px; 
        border-radius: 3px; 
        overflow: hidden; 
        background-color: rgb(255, 121, 40); 
        text-align: center; 
        transition: all 450ms cubic-bezier(0.23, 1, 0.32, 1) 0ms; 
        user-select: none;
    }
</style>

</head>
<body>
	<%@ include file="header.jsp" %>
    <div class="wrap">
        <div style="width:100%;position:relative;text-align:initial">
            <div class="menu">
               
			<c:forEach var="vo" items="${glist }" varStatus="status">
				<div class="menu-01">
                    <img src="${pageContext.request.contextPath }/images/${vo.oriName }" class="img0" width="200px" alt="image1">
                
                    

				
                    <div class="padding-value">
                        
                        <div class="font-box">
                            <div class="fontbox">0${status.count}</div>
                        </div>
					
                        <div class= "title">${vo.gTitle }</div>
                        <div class="sub-content01"></div>
                        <div class="sub-content02">
                             <span style="color:#000;font-weight:bold"></span>
                             <span style="color:#888888">${vo.gContent }</span> </div>
                             <div class="sub-content03">
                                <span style="color:#000;font-weight:bold"></span></div>
                                <button class="btn btn-info" tabindex="0" type="button" onclick="moveab()"><div><span style="position:relative;padding-left:16px;padding-right:16px;vertical-align:middle;letter-spacing:0;text-transform:uppercase;font-weight:300;font-size:15px;color:#fff">맘시터 시작하기</span>
                        </div>
                    </button>
                </div>
                </div>
                
                </c:forEach>
             
                
     
        </div>
    </div>
    </div>
    <%@ include file="footer.jsp" %>
</body>
</html>