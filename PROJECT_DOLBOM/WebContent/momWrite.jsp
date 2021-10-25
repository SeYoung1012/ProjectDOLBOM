<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>맘 등록</title>
<script>
	function list_go() {
		location.href = "board?type=momBoard";
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



<!-- <style>
	#bbs table {
		width: 1000px;
		margin: 0px auto;
		border-collapse: collapse;
		font-size: 14px;
	}
	#bbs table caption {
		font-size: 20px;
		font-weight: bold;
		margin-bottom: 10px;
	}
	#bbs th, #bbs td {
	/* 	text-align: center; */
		/* border: 1px solid black; */
		padding: 4px 10px;
	}
	#bbs .align-left { text-align: left;}
	
	tfoot { text-align: center; }
	
</style>

<script>
	/* function sendData() {
		var firstForm = document.forms[0];
		for (let i = 0; i < firstForm.elements.length; i++) {
			if (firstForm.elements[i].value.trim() == "") {
				if (i == 2) continue; //첨부파일은 제외
				alert(firstForm.elements[i].title + "을(를) 입력하세요.");
				firstForm.elements[i].focus();
				return;
			}
		}
		firstForm.submit();
		location.href = "board?type=sitterWrite";
	}
 */
	function list_go() {
		location.href = "board?type=momBoard";
	}
 
 
</script>	
	
</head> -->
<body>




	<%@ include file="header.jsp" %>
  <div id="wrap">
       
	    <form id="form" action="board?type=momWrite" method="post" onsubmit="return validate()">
            <div class="h2-Text"><strong>맘 등록</strong></div>
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
	                    <input type="text" name="title" class="input--text sub1" required placeholder="제목" required>
	                </td>
                </tr>
                 <tr>

                    <th>
                        <strong>원하는 돌봄 요일<em>*</em></strong>
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
						<input type="hidden" name="userId" value="${mvo2.userId } }">
					</td>
				</tr>
              </tbody>
              
            </table>
            <p id="btngroups">
                <input class="btn btn-info" type="submit" value="저장">
				<input type="reset" class="btn btn-default" value="다시작성">
				<input type="button" value="목록" class="btn btn-default" onclick="list_go()">
            </p>
        </form>    
    </div>
</body>
</html>