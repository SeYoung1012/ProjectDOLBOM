<%@page import="com.bc.model.dao.board.MomboardDAO"%>
<%@page import="com.bc.model.vo.board.MomboardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	int mb_id = Integer.parseInt(request.getParameter("mb_id"));
	request.setAttribute("mb_id", mb_id);
	
	MomboardVO vo = MomboardDAO.momSelectOne(mb_id);
	System.out.println("vo : " + vo);
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>맘 게시판 수정</title>
<script>
	function back() {
		history.back();
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
<div id="wrap">

	<form id="form" action="board?type=momUpdate" method="post" onsubmit="return validate()">
		 <div class="h2-Text"><strong>게시글 수정</strong></div>
		<table class="tb_main">
		 		<colgroup>
                    <col style="width:200px">
                    <col>
                </colgroup>
			<tbody>
				 <tr class="id-check">
					<th><strong>제목<em>*</em></strong></th>
					<td><input type="text" class="input--text sub1" name="title" title="제목" value="<%=vo.getMb_title() %>" maxlength="200" style="width: 400px;" required></td> 
				</tr>
				<tr>
					<th> <strong>원하는 돌봄 요일<em>*</em></strong></th>
					<td>
						<input type="checkbox" name="care_date" value="1">월
						<input type="checkbox" name="care_date" value="2">화
						<input type="checkbox" name="care_date" value="3">수
						<input type="checkbox" name="care_date" value="4">목
						<input type="checkbox" name="care_date" value="5">금
						<input type="checkbox" name="care_date" value="6">토	
						<input type="checkbox" name="care_date" value="7">일
					</td>
				</tr>
				<tr>
					<th> <strong>자기소개<em>*</em></strong></th>
					<td><textarea placeholder="소개글"   class="input--text textarea01" name="content" title="소개글" maxlength="3000" style="height: 200px; width: 500px" required><%=vo.getMb_content() %></textarea></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" class="input--text" placeholder="비밀번호" name="pwd" title="비밀번호" maxlength="200" style="width: 200px;" required></td> 
				</tr>
				<tr>
					<td>
						<input type="hidden" name="mb_id" value="${mb_id }">
						<input type="hidden" name="userId" value="${mvo2.userId }">
					</td>
				</tr>
			</tbody>

		</table>
		
		 <p id="btngroups">
			<input type="submit" class="btn btn-info" value="수 정">
			<input type="reset" class="btn btn-info" value="다시작성">
			<input type="button" class="btn btn-info" value="뒤로 가기" onclick="back()">
					
		</p>		

	</form>
</div>
</body>
</html>