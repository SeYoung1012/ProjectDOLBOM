<%@page import="com.bc.model.dao.board.MemberDAO"%>
<%@page import="com.bc.model.vo.board.MemberVO"%>
<%@page import="java.util.List"%>
<%@page import="com.bc.model.vo.board.SitterboardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%
	String userId = (String) session.getAttribute("id");
	String pwd = (String) session.getAttribute("pwd");
	MemberVO mvo = MemberDAO.login(userId, pwd);
	System.out.println("mvo : " + mvo);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시터 등록</title>
<script type="text/javascript">
	function list_go() {
		location.href = "board?type=sitterBoard";
	}
	
	function validate(){
		var care_date = $("input[name=care_date]:checkbox:checked").length;	
		

		if (care_date<1) {
			alert("원하는 돌봄 요일을 선택해야 합니다.");
			return false;
		}
		
		return true;
	}
</script>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

     <!-- bootstrap start-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


    <link rel="stylesheet" href="css/sitterCreate.css">
</head>
<body>
<%@ include file="header.jsp" %>
  <div id="wrap">
       
	    <form id="form" action="board?type=sitterWrite" method="post" enctype="multipart/form-data" onsubmit="return validate()">
            <div class="h2-Text"><strong>시터 등록</strong></div>
            <table class="tb_main">
                <colgroup>
                    <col style="width:200px">
                    <col>
                </colgroup>
                <tr class="id-check">
	                <th>
	                	<strong>제목<em>*</em></strong>
	                </th>
	                <td>
	                    <input type="text" name="title" class="input--text sub1" required placeholder="제목">
	                </td>
                </tr>
                <tr>

	                <th>
	                    <strong>시터직업<em>*</em></strong>
	                </th>
	                <td>
	                    <input type="text" name="job" class="input--text" required>
	                </td>
                </tr>

                <tr>

                    <th>
                        <strong>사진첨부</strong>
                    </th>
                    <td>
                        <input type="file" name="file_name"  required>
                    </td>
                 </tr>

                 <tr>

                    <th>
                        <strong>가능 돌봄 요일<em>*</em></strong>
                    </th>
                    <td>
                        <input type="checkbox" name="care_date" value="1"> 월
						<input type="checkbox" name="care_date" value="2"> 화
						<input type="checkbox" name="care_date" value="3"> 수
						<input type="checkbox" name="care_date" value="4"> 목
						<input type="checkbox" name="care_date" value="5"> 금
						<input type="checkbox" name="care_date" value="6"> 토	
						<input type="checkbox" name="care_date" value="7"> 일
                    </td>
                 </tr>

                 <tr>

                    <th>
                        <strong>자기소개<em>*</em></strong>
                    </th>
                    <td>
                        <textarea placeholder="소개글" class="input--text textarea01" name="content"  title="소개글" maxlength="3000" required></textarea>
                    </td>
                 </tr>
				<tr>
					<td>
						<input type="hidden" name="userId" value="${svo.userId } }">
					</td>
				</tr>
              

                </tbody>
                
            </table>
            <p id="btngroups">
            	<!-- <button class="btn btn-info">등록하기</button> -->
            	<!-- <input type="reset" value="다시작성"> -->
               <!--  <a href="javascript:history.go(-1);" class="btn btn-default" id="back01">뒤로가기</a> -->
                <input class="btn btn-info" type="submit" value="저장">
				<input type="reset" class="btn btn-default" value="다시작성">
				<input type="button" value="목록" class="btn btn-default" onclick="list_go()">
            </p>
        </form>    
    </div>

</body>
</html>