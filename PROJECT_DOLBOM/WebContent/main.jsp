<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

<title>메인 페이지</title>
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


    
.center {text-align: center; }

/* 배너부분 */
#banner{
    position: relative;
    background: url('../asset/people-g1280.png');
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    height: 300px;
    padding: 0 20px;
    width: 100%;
    margin-bottom: 70px;

}
/* 배너부분 그림 어둡게
#banner::before{
    content: "";
    position: absolute;
    top:0;
    left:0;
    width: 100%;
     height: 100%;
    background: rgba(0,0,0,.2);
}
*/

#banner .text--box{
    max-width: 1180px;
    margin: 0 auto;
    position: relative;
    color: #fff;
    text-shadow: 0 1px 1px rgba(0,0,0,.25), 
    0 1px 25px rgba(0,0,0,.75);
}

#banner .main__title,.sub__title{
    position: absolute;
    transform: translateX(-50%);
    width: 100%;
}
#banner .main__title{
    top: 70px;
    left: 50%;
    font-weight: bold;
    font-size: 45px;
}
#banner .sub__title{
    top: 128px;
    left: 50%;
    font-weight: 400;
    font-size: 30px;
}


#banner .banner--box{
    position: relative;
    top: 203px;
    max-width: 580px;
    margin: 0 auto;

}

#question{
    display: block;
    margin: 0 auto;
    border: 1px solid #ddd;
    border-radius: 30px;
    color: #444;
    height: 50px;
    padding-left: 40px;
    padding-right: 20px;
    width: 400px;
    box-shadow: 0px 0px 12px rgb(0 0 0 / 12%);
    transition: width .5s ease-in-out;
}

#question:focus{
    width: 600px;
    border: 5px solid #fffacd;
}




.middle {
	 max-width: 1180px;
    margin: 0 auto;


}

.cent {
	 max-width: 1180px;
    margin: 0 auto;


}

.w3-container {
 max-width: 1180px;
    margin: 0 auto;


}

    
.w3-cell-row {
    
    max-width: 1180px;
    margin: 0 auto;
    background-color: cadetblue;
    color: white;
    font-size: 12px;
    padding: 25px;
    margin: auto;
       
}
        


</style>   

<body>
	<%@ include file="header.jsp" %>
    
    

	<div class="center"> 
		  <a class="img_link1" href="#"><img src="img/mainimg2.png" alt="main2" width="1180"  ></a>   
      
      <!-- <div class="banner--box">
                        <form role="search" action="notice?" method="get" accept-charset="UTF-8">
                        		<input type="hidden" name="type" value="search">
                                <input type="search" name="question" id="question" autocomplete="off">
                        </form>
                </div>   -->
                
    </div>
    <br>
	
	<hr>
	<div class="middle"> 
        <a class="img_link2" href="#"> <img src="img/mainimg.png" alt="main"  width="1180" ></a>    
    </div>
    <hr>
    <div class="cent"> 
        <a class="img_link3" href="#"><img src="img/mainimg3.png" alt="main3" width="1180"  ></a>   
    </div>
    



    <hr>
 
 

<%@ include file="footer.jsp" %>

</body>
</html>