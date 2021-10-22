<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>footer</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
</head>

<style>
    /*공통 부분 */
*{
    box-sizing: border-box;
}
a{
    text-decoration: none;
    color: #000;
}
.body__container{
    font-family: 'Roboto', sans-serif;
    font-size: 16px;
    font-weight: 400;
    color: #333;
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
    width: 500px !important;
}

.w15{
    width: 15% !important;

}

.w25{
    width: 25% !important;
}


    
    
 .footer { 
        max-width: 1180px;
        background-color: lightgray;
        color : white;
        display: flex;
        text-align: left;
        font-size: 12px;
        margin: 0 auto;
        padding: 15px;
    }   
    </style> 



<body>



   <footer>
      <div class="footer">

         (주)엄마편한세상 ｜ 서울 강남구 강남대로94길 20, 삼오빌딩(5층 ~ 9층)｜ 사업자등록번호 : 214-85-24928
         <br> (주)엄마편한세상 대표 : 3조 ｜ 문의 : 02-3486-8888 ｜ 팩스 : 02-6007-1245
         통신판매업 신고번호 : 제 서초-00098호 ｜ 개인정보보호관리책임자 : 3조
          <i class="fa fa-facebook-official w3-hover-opacity"></i>
  		<i class="fa fa-instagram w3-hover-opacity"></i>
		<i class="fa fa-twitter w3-hover-opacity"></i>
      </div>
   </footer>

</body>
</html>