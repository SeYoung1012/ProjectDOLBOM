<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=\, initial-scale=1.0">
    <title>문의등록</title>
    <!-- reset cdn 갖고와서 사용-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

    <!-- bootstrap start-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/inqryRgstr.css">
    <script src="js/inqryRgstr.js"></script>

</head>
<body>
    <div id="wrap">
        <div class="container--header">
            <header class="header">
                <div class="logo"><!-- 고객센터 링크-->
                    <a class="img__link" href="userCenter.jsp"><img src="asset/idolbom1-removeBack.png" alt="logo"></a>    
                    <a class="main__link" href="userCenter.jsp">고객센터</a> 
                    <a class="main__link" href="Frequently.jsp">자주 묻는 질문</a>
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
                            <li>문의 등록</li>
                        </ul>
                    </div>
                    <!--js post 처리 해야함-->
                    <form id="inq__form" name="inq__form" enctype="multipart/form-data" >
                      <div class="table__container">
                        <h2>문의 등록</h2>
        
                            <table>
                                <colgroup>
                                    <col class="w150">
                                    <col>
                                </colgroup>
                                <tbody>
                                    <tr>
                                        <td>
                                            <label for="name">이름</label>
                                        </td>
                                        <td>
                                            <input type="text" name="name" id="name" class="input--text" maxlength="30">
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <label for="eamil">이메일</label>
                                        </td>
                                        <td>
                                            <input type="text" name="email" id="email" class="input--text w130" maxlength="30">
                                            @
                                            <input type="text" name="email2" id="email2" class="input--text w130" maxlength="30">
                                            &nbsp;
                                            <span class="select_container">
                                                <select name="email3" id="email3" class="input--text w130">
                                                    <option value="NOT" selected="selected">직접입력</option>
                                                    <option value="naver.com">naver.com</option>
                                                    <option value="kakao.com">kakao.com</option>
                                                    <option value="hanmail.net">hanmail.net</option>
                                                    <option value="daum.net">daum.net</option>
                                                    <option value="nate.com">nate.com</option>
                                                </select>
                                            </span>
                                        </td>
                                    </tr>
                                    <!-- td 4개자리 이거 오류있을시 위에 colspan 해야함-->
                                    <tr>
                                        <td>
                                            <label for="phone" >휴대폰번호</label>
                                        </td>
                                        <td>
                                            <input type="tel" name="phone" id="phone" class="input--text w500"> &nbsp;
                                        </td>
                                        <td>
                                            <label for="user_type">회원유형</label>
                                        </td>
                                        <td>
                                            <select name="user_type" id="user_type"  class="input--text w300">
                                                <option value="NOT">선택</option>
                                                <option value="부모회원">부모회원</option>
                                                <option value="시터회원">시터회원</option>
                                                <option value="기업담당자">기업담당자</option>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label for="any_type">문의유형</label>
                                        </td>
                                        <td>
                                            <select name="any_type" id="any_type" class="input--text w500">
                                                <option value="NOT">선택</option>
                                                <option value="서비스이용문의">서비스이용문의</option>
                                                <option value="환불/연장문의">환불/연장문의</option>
                                                <option value="후기관련문의">후기관련문의</option>
                                                <option value="탈퇴관련문의">탈퇴관련문의</option>
                                                <option value="유형변경문의">유형변경문의</option>
                                                <option value="기타문의">기타문의</option>
                                            </select>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <label for="title">제목</label>
                                        </td>
                                        <td colspan="3">
                                            <input type="text" name="title" id="title" maxlength="100" class="input--text w100">
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <label for="content">내용</label>
                                           
                                        </td>
                                        <td colspan="3">
                                            <textarea name="content" id="content" cols="50" rows="10" class="w100"></textarea>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                        <label for="file">첨부 파일</label>
                                        </td>
                                        <td colspan="3">
                                        	<input type="hidden" name="type" value="ingryReg">
                                            <input type="file" name="file_name" value="파일 첨부" id="fileUpload">
                                       </td>
                                    </tr>

                                </tbody>
                            
                            </table>
                      
                    </div>

                    <div class="user__privacy">
                        <h3>개인정보 수집 및 이용 동의</h3>
                        <div class="privacy_box">
                            <p>개인정보의 수집·이용
 								개인정보처리자는 다음의 어느 하나에 해당하는 경우에는 개인정보를 수집할 수 있으며 
 								그 수집 목적의 범위에서 이용할 수 있습니다(「개인정보 보호법」 제15조제1항).
 								정보주체의 동의를 받은 경우
 								법률에 특별한 규정이 있거나 법령상 의무를 준수하기 위하여 불가피한 경우
 								공공기관이 법령 등에서 정하는 소관 업무의 수행을 위하여 불가피한 경우
 								정보주체와의 계약의 체결 및 이행을 위하여 불가피하게 필요한 경우
 								정보주체 또는 그 법정대리인이 의사표시를 할 수 없는 상태에 있거나 주소불명 등으로 
 								사전 동의를 받을 수 없는 경우로서 명백히 정보주체 또는 제3자의 급박한 생명, 신체, 재산의 이익을 위하여 필요하다고 인정되는 경우
 								개인정보처리자의 정당한 이익을 달성하기 위하여 필요한 경우로서 명백하게 정보주체의 권리보다 우선하는 경우. 
 								이 경우 개인정보처리자의 정당한 이익과 상당한 관련이 있고 합리적인 범위를 초과하지 않은 경우에 한함
								※ 이를 위반하여 개인정보를 수집한 자는 5천만원 이하의 과태료를 부과받습니다(「개인정보 보호법」 제75조제1항제1호).<br>
								※ 개인정보처리자란 업무를 목적으로 개인정보파일을 운용하기 위하여 스스로 또는 다른 사람을 통하여 개인정보를 처리하는 공공기관, 법인, 단체 및 개인 등을 말합니다(「개인정보 보호법」 제2조제5호).
								 개인정보처리자는 위에 따른 동의를 받을 때에는 다음의 사항을 정보주체에게 알려야 합니다. 다음의 어느 하나의 사항을 변경하는 경우에도 이를 알리고 동의를 받아야 합니다(「개인정보 보호법」제15조제2항).
 								<br>
 								개인정보의 수집·이용 목적 수집하려는 개인정보의 항목
 								개인정보의 보유 및 이용 기간 동의를 거부할 권리가 있다는 사실 및 동의 거부에 따른 불이익이 있는 경우에는 그 불이익의 내용
								※ 이를 위반하여 정보주체에게 알려야 할 사항을 알리지 않은 자는 3천만원 이하의 과태료를 부과받습니다(「개인정보 보호법」제75조제2항제1호).
 								개인정보처리자는 당초 수집 목적과 합리적으로 관련된 범위에서 정보주체에게 불이익이 발생하는지 여부, 
 								암호화 등 안전성 확보에 필요한 조치를 하였는지 여부 등을 고려하여 정보주체의 동의 없이 개인정보를 이용할 수 있습니다(「개인정보 보호법」제15조제3항).
								<br>
								개인정보의 수집 제한
 								개인정보처리자는 개인정보를 수집하는 경우에는 그 목적에 필요한 최소한의 개인정보를 수집해야 합니다. 이 경우 최소한의 개인정보 수집이라는 입증책임은 개인정보처리자가 부담합니다(「개인정보 보호법」 제16조제1항).
								 개인정보처리자는 정보주체의 동의를 받아 개인정보를 수집하는 경우 필요한 최소한의 정보 외의 개인정보 수집에는 동의하지 않을 수 있다는 사실을 구체적으로 알리고 개인정보를 수집해야 합니다(「개인정보 보호법」 제16조제2항).
								※ “정보주체”란 처리되는 정보에 의하여 알아볼 수 있는 사람으로서 그 정보의 주체가 되는 사람을 말합니다(「개인정보 보호법」 제2조제3호).
 								개인정보처리자는 동의를 서면(「전자문서 및 전자거래 기본법」 제2조제1호에 따른 전자문서를 포함)으로 받을 때에는 개인정보의 수집·이용 목적, 수집·이용하려는 개인정보의 항목 등 중요한 내용을 명확히 표시하여 알아보기 쉽게 해야 합니다(「개인정보 보호법」 제22조제2항).
								 개인정보처리자는 정보주체가 필요한 최소한의 정보 외의 개인정보 수집에 동의하지 않는다는 이유로 정보주체에게 재화 또는 서비스의 제공을 거부해서는 안 됩니다(「개인정보 보호법」 제16조제3항).
								 이를 위반하여 재화 또는 서비스의 제공을 거부한 자는 3천만원 이하의 과태료를 부과받습니다(「개인정보 보호법」 제75조제2항제2호).
								</p>
                        </div>


                        <div class="agree">
                            <div class="box">
                                <input type="checkbox" id="ag1" name="ag1">
                                <label for="ag1">동의합니다.</label>
                             </div>
                        </div>
                    </div>

                    <p class="btn_submit">
                        <a href="javascript:history.back();" class="btn btn-default">취소</a>
                        <button id="btnSubmit" type="button" class="btn btn--primary">등록</button>
                    </p>

                  </form>

                </div>
            </main>
        </div>
   
</body>
</html>