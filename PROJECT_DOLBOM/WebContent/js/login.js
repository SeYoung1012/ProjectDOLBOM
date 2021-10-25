
		function validate(){
		if(($('#id').val() === 'ADMIN'|| $('#id').val() === 'admin') && $('#pwd').val() === 'admin!1' ){
			$('#frm').prop('action','admin?type=adminlogin&userId=ADMIN');
			$('#frm').submit();
		}else{
		$('#frm').prop('action','controller?type=login');
		
			$('#frm').submit();
		}
						
	}