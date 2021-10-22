<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 유형</title>
</head>
<style>

p.dashed {border-style: dashed;}

#page {
	min-width : 1080px;
	height : 554px;
	margin-top : 100px;
 	display:grid;
 	justify-content: space-around;


}


table {

    margin : 0 auto;
    height: 100%;
    width: 100%;
    border-collapse: collapse;
}


 th { font-size: 15px;}

 button {
    display: flex;   
    text-align: center;
    box-sizing: border-box;
 }


</style>

<body>

<!-- 헤더부분 -->
<%@ include file="/header.jsp" %>

<div id="page">


    <table>
     <tr height="40px"></tr>
     
       
     <tr height="150px">
        <td width="130px">
          <a href="signUpParent.jsp">
          <img src="img/parents.jpg" style="width:120px; height:100px;"></a>
        </td>
        <td width="130px"><th width="160px"> 부모회원으로 가입하기 </th></td>
     </tr>
     
     <tr>
     <td>
      <hr style="margin: -1px opx opx; border: currentColor; border-image: none; 
                height: 1px; background-color: rgb(224, 224, 224);"></hr>
     </td>
     <td>
      <hr style="margin: -1px opx opx; border: currentColor; border-image: none; 
                height: 1px; background-color: rgb(224, 224, 224);"></hr>
     </td>
     <td>
      <hr style="margin: -1px opx opx; border: currentColor; border-image: none; 
                height: 1px; background-color: rgb(224, 224, 224);"></hr>
     </td>
     
     <td></td>
     </tr>
     
     <tr>
        <td width="130px">
          <a href="signUpSitter.jsp">
          <img src="img/babyandmom.jpg" style="width:100px; height:120px;"></a>
        </td>
        <td width="130px"><th> 시터회원으로 가입하기 </th></td>
     </tr>

    </table>
    

</div>
	



	<!-- 푸터부분 -->
<%@ include file="/footer.jsp" %>

</body>
</html>