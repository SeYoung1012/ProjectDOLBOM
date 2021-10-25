<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <!-- 구글 roboto Font 사용-->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500&display=swap" rel="stylesheet">
    <!-- reset cdn 갖고와서 사용-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

<script>

var check2 = 'false';
// 아이디 중복
$(function(){
	

	
   $("#idCheck").click(function(){

      $.ajax({
         url :"controller?type=idcheck",
         type : "post", 
         data : {"userIdCheck":$("#userId1").val() },
         success: function(data){
        	 	let check = JSON.parse(data);			
            
        	 if(check.userid == 1){
            	alert("이미 사용중인 아이디입니다.");
            	check2 = 'false';


            	
            } else{
                alert("중복된 아이디가 없습니다.");
            	check2 = 'true';
           
            }
         },
            error : function(jqXHR, textStatus, errorThrown){
                alert("Ajax 처리 실패 : \n" + "jqXHR.status " +jqXHR.status
                   + "jqXHR.readyState : " + jqXHR.readyState + "\n"
                   + "textStatus : " + textStatus + "\n"
                   + "errorThrown : " + errorThrown);
             }
      });
      
   });
   

   //중복된 아이디
	$('#btnclick').click(function(){
		if(check2 === 'false'){
			alert('중복된 아이디를 확인해주세요');
			return false;
		}
		// 정규식 오류
		if(!validate()){
			return false;
		}
		
		$('#form1').submit();
		
	
	});
	
	
		
	
});



//---------------------
// 유효성 검사
   function validate() {
		var id = RegExp(/(?=.*\d{1,20})(?=.*[a-zA-Z]{1,20}).{4,20}$/)
		var pass = RegExp(/(?=.*\d{1,20})(?=.*[~`!@#$%\^&*()-+=]{1,20})(?=.*[a-zA-Z]{1,20}).{6,20}$/)
		var phone = RegExp(/^\d{3}-\d{3,4}-\d{4}$/)
		var birth = RegExp(/(?=.*\d{1,20}).{8,8}$/)
		var care = $("input[name=care]:checkbox:checked").length;
		var pay = 8720; // 최저시급
		
		console.log(care);

       //아이디 유효성검사
       if(!id.test($("#userId1").val())){
           alert("아이디는 대소문자, 숫자 포함 4자 이상 20자 이내로 입력하세요");
           $("#userId1").val("").focus();
           return false;
      }

	   if (!pass.test($("#pwd").val())) {
			alert("비밀번호는 특수문자, 대소문자, 숫자 포함 6자 이상 20자 이내로 입력하세요");
			$("#pwd").val("").focus();
			return false;
		}
	   
	 //비밀번호 서로확인
       if($("#pwd").val() != $("#pwd2").val()){
           alert("비밀번호가 일치하지않습니다.");
           $("#pwd2").val("").focus();
           return false;
      }
	 
		// 핸드폰번호
		if (!phone.test($("#phone").val())) {
			alert("휴대폰 번호는 -(하이픈)을 포함하여 입력해주세요");
			$("#phone").val("").focus();
			return false;
		}
		
		// 생년월일
		if (!birth.test($("#birth").val())) {
			alert("생년월일은 8자리로 입력해주세요");
			$("#birth").val("").focus();
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
<meta charset="UTF-8">
<title>회원가입</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

     <!-- bootstrap start-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


    <link rel="stylesheet" href="CSS/update.css">

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


  /* INPUT */
  .input--text {
    height: 40px;
    width: 400px;
    padding: 0 10px;
    font-size: 16px;
    border: 1px solid #ddd;
    border-radius: 5px;
    outline: none;
    box-sizing: border-box;
    box-shadow: inset 0 1px 2px rgba(0, 0, 0, .075); /* .75 아니고 .075 주의 */
  }
  .input--text:focus {
    border-color: #51a7e8 !important; /* header #search 선택자를 덮어쓰기 위해서 사용 */
    box-shadow: inset 0 1px 2px rgba(0, 0, 0, .075), 0 0 5px rgba(81, 167, 232, .5);
  }
  /* Vendor prefix(브라우저 업체별 접두어) */
  .input--text::-webkit-input-placeholder { color: #cacaca; }
  .input--text:-ms-input-placeholder      { color: #cacaca; }
  .input--text::-moz-placeholder          { color: #cacaca; }

    .name{
        width: 200px;
    }
    .address{
        width: 600px;
    }



#wrap{
    min-height: 610px;
    padding: 30px 0 60px;
    max-width: 1180px;
    margin: 0 auto;

    font-family: 'Roboto', sans-serif;
    font-size: 16px;
    font-weight: 400;
    color: #333;
}

#btngroups{
    height: 28px;
    text-align: center;
    padding-top: 20px;
}


.h2-Text{
    font-size: 14px;
    color: #999;
    padding-bottom: 17px;
    position: relative;
}

.h2-Text strong{
    display: inline-block;
    font-size: 20px;
    color: #333;
    vertical-align: middle;
}
.tb_main{
    width: 100%;
    color: #333;
    line-height: 1.3em;
}

table{
    table-layout: fixed;
    width: 100%;
    border-collapse: collapse;
}

.tb_main th{
    padding: 10px 10px 6px 20px;
    border-bottom: 1px solid #f1f1f1;
    background-color: #f9f9f9;
    text-align: left;
    vertical-align: middle;
    font-weight: bold;
    height: 50px;
}


.id-check{
    border-top: 2px solid black;
}
.tb_main th strong{
    font-size: 13px;
    font-weight: bold;
}

.tb_main th strong em{
    font-size: 14px;
    color: red;
}
p{
    margin:  0 0px;
}

.tb_main td{
    border-bottom: 1px solid #f1f1f1;
    padding: 10px;
    color: #333;
    vertical-align: middle;
    word-wrap: break-word;
}


#idCheck {
 background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 12px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  margin: 4px 2px;
  cursor: pointer;
  font-size: 12px;
  border-radius: 8px;
}

#idCheck:hover {
 background-color: 	#32CD32;
  color: white;


}

.sign {
background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 12px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  margin: 4px 2px;
  cursor: pointer;
  font-size: 12px;
  border-radius: 8px;



}
    
    
</style>
<body>

	<%@ include file="header.jsp" %>

 <div id="wrap">

	<form id="form1" action="controller" method="post">
		<div class="h2-Text">
			<strong>시터회원 회원가입</strong>
		</div>
		<table class="tb_main">
			<colgroup>
				<col style="width: 200px">
				<col>
			</colgroup>
			<tr class="id-check">
			<tbody>
				<tr>
					<th><strong>아이디<em>*</em></strong></th>
					<td>
					<input type="text" name="userId" id="userId1" class="input--text" placeholder="4~12자의 영문, 숫자로만 입력해주세요" required>
					<input type="button" id="idCheck" value="중복확인">
					</td>
				</tr>
			
	
				<tr>
					<th><strong>비밀번호<em>*</em></strong></th>
					<td>
					<input type="password" name="pwd" id="pwd" class="input--text"
						placeholder="특수문자, 영문, 숫자 포함 6자 이상 20자 이내로 입력하세요" required>
					</td>
				</tr>
				
				  <tr>

                    <th>
                        <strong>비밀번호 재확인<em>*</em></strong>
                    </th>
                    <td>
                        <input type="password" name="pwd2" id="pwd2" class="input--text"placeholder="특수문자, 영문, 숫자 포함 6자 이상 20자 이내로 입력하세요"  required>
                    </td>
                 </tr>
				
				 <tr>
                    <th>
                        <strong>이름<em>*</em></strong>
                    </th>
                    <td>
                        <input type="text" name="name" class="input--text name" maxlength="20" placeholder="이름을 입력해 주세요" required>
                    </td>
                 </tr>



				<tr>
					<th><strong>휴대폰 번호<em>*</em></strong></th>
					<td><input type="tel" id="phone" name="phone"
						class="input--text name" maxlength="13" required
						placeholder="000-0000-0000"></td>
				</tr>
				
				
				
				<tr>
					<th><strong>생년월일<em>*</em></strong></th>
					<td><input type="number" id="birth" name="birth" class="input--text name" maxlength="8"
						placeholder="생년월일 8자리를 입력해주세요" required></td>
				</tr>
				
	
		
				 <tr>

                    <th>
                        <strong>자택주소<em>*</em></strong>
                    </th>
                    <td>
                        <input type="text" name="address" class="input--text address" maxlength="30" 
                        placeholder="주소를 입력해주세요(ex:서울시 마포구)" required>
                    </td>
                 </tr>
				
		
				 <tr>

                    <th>
                        <strong>이메일<em>*</em></strong>
                    </th>
                    <td>
                        <input type="text" name="emailId" class="input--text name" required> @
                        <select name="emailBox" class="input--text name" required>
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
                        <label id="1"><input type="checkbox" id="1" name="care" value="1"> 등하원 돕기</label>&nbsp;
                        <label id="2"><input type="checkbox" id="2" name="care" value="2"> 실내놀이</label>&nbsp;
                        <label id="3"><input type="checkbox" id="3" name="care" value="3"> 야외활동</label>&nbsp;
                        <label id="4"><input type="checkbox" id="4" name="care" value="4"> 학습지도</label>&nbsp;
                        <label id="5"><input type="checkbox" id="5" name="care" value="5"> 영어놀이</label>&nbsp;
                        <label id="6"><input type="checkbox" id="6" name="care" value="6"> 밥 챙겨주기</label>&nbsp;
                    </td>
                 </tr>
				<tr>
					  <th>
                        <strong>희망시급<em>*</em></strong>
                    </th>
                    <td>
                        <input type="number" id="pay" name="pay" placeholder="최저시급(8,720원)이상" class="input--text name" required>원
                    </td>
                 </tr>
				<br> 
		          </tbody>
            </table>
				 <p id="btngroups"><button type="button" id="btnclick" class="btn btn-success">가입하기</button>
                <a href="javascript:history.go(-1);" class="btn btn-default" id="back01">취소하기</a>
                <input type="hidden" name="type" value="join">
				<input type="hidden" name="typ" value="2">
           	 </p>
        </form>    
	 </div>



	<%@ include file="footer.jsp" %>

</body>
</html>