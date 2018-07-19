<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>event_button</title>
<script>
window.onload=function(){
	var frm1 = document.frm1;
	var btn = document.frm1.btnSend;
	
	btn.onclick = function(){
		/*
		if(frm1.mid.value == ''){
			alert('아이디를 입력하셔~~');
		}else{
			frm1.submit();//submit 버튼 역활
		}
		*/
		if( chkData(frm1) ){
			frm1.submit();
		}else{
			alert('아이디를 입력하셔~~');
		}
	}
}

function chkData(ff){
	var mid = ff.mid.value;
	if(mid == ''){
		return false;
	}else{
		return true;
	}
}
</script>
</head>
<body>
<h3>event_button</h3>
<form name='frm1' method='post' onsubmit='return chkData(this)' 
			action='event_button_result.jsp'>
	<label>아이디</label>
	<input type='text' name='mid' size='20' value='park'/>
	<br/>
	<input type='submit' value='전송'/>
	<input type='button' value='전송2' name='btnSend'/>
</form>

</body>
</html>