$(function(){
   	    $.ajax("notice?type=userCenter",{
   	        type : "POST",
   	     	dataType : "json",
   	        success : function(data){
   	            alert("Ajax 처리 성공 응답받은 데이터 :" + data);
   	            console.log(data);
   	         	console.log(data.list);
   	            //전달받은 JSON 데이터 처리
   	            let tbody = "";
   	            let alist = data.list; // JSON 객체의 속성명 "list" 의 값 추출
				$.each(alist, function(index, member){
					//console.log("this.name : " + this.name);
					tbody += "<tr>";
					tbody += "<td class='subject'><a href='#'>" + this.title + "</a></td>";
					tbody += "<td class='admin_id'>" + this.a_id + "</td>";
					tbody += "<td class='regDate'>" + this.b_Date + "</td>";
					//tbody += "<td>" + member.regdate + "</td>";
					//tbody += "<td>" + member["regdate"] + "</td>";
					tbody += "</tr>";
				});
				$("#tbody").html(tbody);
			},
			error : function(jqXHR, textStatus, errorThrown){
				alert("Ajax 처리 실패 : \n" + "jqXHR.status " +jqXHR.status
					+ "jqXHR.readyState : " + jqXHR.readyState + "\n"
					+ "textStatus : " + textStatus + "\n"
					+ "errorThrown : " + errorThrown);
			}
		});
   	});