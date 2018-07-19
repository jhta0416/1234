<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
#member_register .label{
	display:inline-block;
	width:80px;
}
#member_register .errMsg{
	font-size:12px;
	color:#ff0000;
}
</style>
<script>
function check(){
	var ff = document.frm_member;
	
	//체크 데이터의 정규식
	
	var regId    = /[^a-z]/g; new RegExp("\\w", "g");
	var regName  = /[^a-z0-9A-Z ]/g;
	var regPwd   = /[^a-zA-Z0-9!_$ ]/g;
	var regEmail = 
		/[a-zA-Z0-9!_$]+@[a-zA-Z0-9]+\.[a-zA-Z0-9]+(.[a-zA-Z0-9]+)?$/;//완성
	
	
	ff.btnRegister.onclick = function(){
		ff.id.style.backgroundColor="#ffffff";
		ff.name.style.backgroundColor="#ffffff";
		ff.pwd.style.backgroundColor="#ffffff";
		ff.email.style.backgroundColor="#ffffff";
		
		//이전 표시된 오류 메시지를 초기화
		ff.msgId.value='';
		ff.msgName.value='';
		ff.msgPwd.value='';
		ff.msgEmail.value='';
		
		
		if( regId.test(ff.id.value) || ff.id.value.trim()==''){
			ff.id.focus();
			ff.id.style.backgroundColor='#ffeeee';
			ff.msgId.value= ('아이디를...');
		}else if( regName.test(ff.name.value)  || ff.name.value.trim()==''){
			ff.name.focus();
			ff.name.style.backgroundColor='#ffeeee';
			ff.msgName.value = ("성명을...");
		}else if( regPwd.test(ff.pwd.value)  || ff.pwd.value.trim()==''){
			ff.pwd.focus();
			ff.pwd.style.backgroundColor='#ffeeee';
			ff.msgPwd.value = ("암호를...");
		}else if( !regEmail.test(ff.email.value)  || ff.email.value.trim()==''){
			ff.email.focus();
			ff.email.style.backgroundColor='#ffeeee';
			ff.msgEmail.value = ("이메일을...");
		}else{
			ff.action = 'index.jsp?nav=./member/member_control.jsp'
					      + '&sess=./member/register_result.jsp';
			ff.submit();
		}
	}
}

</script>

</head>
<body>
<div id='member_register'>
	<h3 id='title'>회원가입</h3>
	<form name='frm_member' method='post'>
		<label class='label'>ID</label>
		<input type='text' name='id' value='hong' size='7'/>
		<output name='msgId' class='errMsg'></output><br/>
		
		<label class='label'>Name</label>
		<input type='text' name='name' value='hong gil dong' size='20'/>
		<output name='msgName' class='errMsg'></output><br/>

		<label class='label'>Password</label>
		<input type='text' name='pwd' value='1111' size='10' />
		<output name='msgPwd' class='errMsg'></output><br/>

		<label class='label'>Email</label>
		<input type='email' name='email' value='hong@jobtc.kr' size='30' />
		<output name='msgEmail' class='errMsg'></output>
		<p/>
		
		<input type='button' value = 'SEND' name='btnRegister' />
	</form>
</div>
<script>check()</script>
</body>
</html>