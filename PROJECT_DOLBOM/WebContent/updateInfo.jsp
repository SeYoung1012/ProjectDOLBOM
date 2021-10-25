<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script>
	function updateInfo_go(){
		location.href="controller?type=updateInfo"
	}
	
	// 유효성 검사
	   function validate() {
			var id = RegExp(/(?=.*\d{1,20})(?=.*[a-zA-Z]{1,20}).{4,20}$/)
			var pass = RegExp(/(?=.*\d{1,20})(?=.*[~`!@#$%\^&*()-+=]{1,20})(?=.*[a-zA-Z]{1,20}).{6,20}$/)
			var phone = RegExp(/^\d{3}-\d{3,4}-\d{4}$/)
			var birth = RegExp(/(?=.*\d{1,20}).{8,8}$/)
			var care = $("input[name=care]:checkbox:checked").length;
			var pay = 8720; // 최저시급
			
			console.log(care);

		   if (!pass.test($("#pwd").val())) {
				alert("비밀번호는 특수문자, 대소문자, 숫자 포함 6자 이상 20자 이내로 입력하세요");
				$("#pwd").val("");
				$("#pwd").focus();
				return false;
			}
		   
		 //비밀번호 서로확인
	       if($("#pwd").val() != $("#pwd2").val()){
	           alert("비밀번호가 일치하지않습니다.");
	           $("#pwd").val("");
	           $("#pwd2").val("");
	           $("#pwd").focus();
	           return false;
	      }
		 
			// 핸드폰번호
			if (!phone.test($("#phone").val())) {
				alert("휴대폰 번호는 -(하이픈)을 포함하여 입력해주세요");
				$("#phone").val("");
				$("#phone").focus();
				return false;
			}
			
	       // 돌봄활동 필수
	       if(care<1){
	    	   alert("돌봄활동을 선택해주세요");
	    	   return false;
	       }
	       
	       // 시급
	       if($("#pay").val() < pay){
	    	   alert("최저시급(8,720원)이상을 입력해주세요");
	    	   return false;
	       }
	       
	       
	           return true;
	       }
	
	
</script>
<style>
/* #form{
        width: 300px; 
	    margin: 0 auto;
    }
#userT { 
		 width: 300px; 
		 margin: 0 auto;
	 } */
</style>
<meta charset="UTF-8">
<title>회원정보 수정</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

     <!-- bootstrap start-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


    <link rel="stylesheet" href="css/update.css">
</head>
<body>
	<%@ include file="header.jsp" %>
    <div id="wrap">
       
	    <form id="form" action="controller?type=updateInfo" method="post" onsubmit="return validate()">
            <div class="h2-Text"><strong>회원정보 수정</strong></div>
            <table class="tb_main">
                <colgroup>
                    <col style="width:200px">
                    <col>
                </colgroup>
                <tr class="id-check">
                    <tbody>
                        <th>
                            <strong>아이디</strong>
                        </th>
                        <td>
                            <p class="ptag">${vo.userId }</p>
                        </td>
                </tr>
                <tr>

                        <th>
                            <strong>비밀번호<em>*</em></strong>
                        </th>
                        <td>
                            <input type="password" name="pwd" id="pwd" class="input--text" required>
                        </td>
                </tr>

                <tr>

                    <th>
                        <strong>비밀번호 재확인<em>*</em></strong>
                    </th>
                    <td>
                        <input type="password" name="pwd2" id="pwd2" class="input--text" required>
                    </td>
                 </tr>

                 <tr>

                    <th>
                        <strong>이름<em>*</em></strong>
                    </th>
                    <td>
                        <input type="text" name="name" class="input--text name" maxlength="20" value="${vo.name }"required>
                    </td>
                 </tr>

                 <tr>

                    <th>
                        <strong>휴대폰 번호<em>*</em></strong>
                    </th>
                    <td>
                        <input type="tel" id="phone" name="phone" class="input--text name" maxlength="13" value="${vo.phone }">
                    </td>
                 </tr>

                 <tr>

                    <th>
                        <strong>생년월일</strong>
                    </th>
                    <td>
                        <p class="ptag">${vo.birth }</p>
                    </td>
                 </tr>

                 <tr>

                    <th>
                        <strong>자택주소<em>*</em></strong>
                    </th>
                    <td>
                        <input type="text" name="address" class="input--text address" maxlength="30" value="${vo.address }" required>
                    </td>
                 </tr>

                 <tr>

                    <th>
                        <strong>이메일<em>*</em></strong>
                    </th>
                    <td>
                        <input type="text" name="emailId" class="input--text name" value="${vo.emailId }"> @
                        <select name="emailBox" class="input--text name">
                            <option value="">이메일 선택</option>
                            <option value="naver.com">naver.com</option>
                            <option value="gmail.com">gmail.com</option>
                            <option value="daum.net">daum.net</option>
                            <option value="hanmail.net">hanmail.net</option>
                            <option value="hotmail.com">hotmail.com</option>
                            <option value="nate.com">nate.com</option>
                            <option value="yahoo.co.kr">yahoo.co.kr</option>
                            <option value="empas.com">empas.com</option>
                            <option value="freechal.com">freechal.com</option>
                            <option value="lycos.co.kr">lycos.co.kr</option>
                            <option value="korea.com">korea.com</option>
                            <option value="hanmir.com">hanmir.com</option>
                            <option value="dreamwiz.com">dreamwiz.com</option>
                            <option value="paran.com">paran.com</option>
                        </select>
                    </td>
                 </tr>

                 <tr>

                    <th>
                        <strong>아이의 나이<em>*</em></strong>
                    </th>
                    <td>
                        <label id="1"><input type="radio" id="1" name="childAge" value=1> 신생아</label> &nbsp;
                        <label id="2"><input type="radio" id="2" name="childAge" value=2> 영아</label> &nbsp;
                        <label id="3"><input type="radio" id="3" name="childAge" value=3> 유아</label> &nbsp;
                        <label id="4"><input type="radio" id="4" name="childAge" value=4> 초등학생</label> &nbsp;
                    </td>
                 </tr>


                 <tr>

                    <th>
                        <strong>돌봄 종류<em>*</em></strong>
                    </th>
                    <td>
                        <label id="1"><input type="checkbox" id="1" name="care" value=1> 등하원 돕기</label>&nbsp;
                        <label id="2"><input type="checkbox" id="2" name="care" value=2> 실내놀이</label>&nbsp;
                        <label id="3"><input type="checkbox" id="3" name="care" value=3> 야외활동</label>&nbsp;
                        <label id="4"><input type="checkbox" id="4" name="care" value=4> 학습지도</label>&nbsp;
                        <label id="5"><input type="checkbox" id="5" name="care" value=5> 영어놀이</label>&nbsp;
                        <label id="6"><input type="checkbox" id="6" name="care" value=6> 밥 챙겨주기</label>&nbsp;
                    </td>
                 </tr>
                 <tr>

                    <th>
                        <strong>희망시급<em>*</em></strong>
                    </th>
                    <td>
                        <input type="number" id="pay" name="pay" class="input--text name" value="${vo.pay }">원
                    </td>
                 </tr>
                </tbody>
            </table>
                <p id="btngroups"><button class="btn btn-info">수정하기</button>
                <a href="javascript:history.go(-1);" class="btn btn-default" id="back01">뒤로가기</a>
            </p>
        </form>
    </div>
</body>
</html>