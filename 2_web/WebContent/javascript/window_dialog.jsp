<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>window_dialog</title>
<style>
#title{
	border-left-width:10px;
	border-left-color:#ff4444;
	border-left-style:solid;
	line-height:32px;
	padding-left:6px;
	box-sizing:border-box;
	background: #ffeeee;
}
</style>

<script>
window.onload = function(){
	var btnAlert   = document.getElementById('btn_alert');
	var btnPrompt  = document.getElementById('btn_prompt');
	var btnConfirm = document.getElementById('btn_confirm');
	
	btnAlert.onclick = function(){
		alert("OK");
	}
	
	btnPrompt.onclick = function(){
		var v = prompt("당신의 나이는 ? ", 18);
		alert(v);
	}
	
	btnConfirm.onclick = function(){
		var yn = confirm("정말 삭제하시겠습니까 ?");
		if(yn){
			alert("삭제가 시작되었습니다.");
		}else{
			alert("삭제가 취소되었습니다.");
		}
	}
	
}

</script>
</head>
<body>
<h3 id='title'> javascript에서의 창 3가지</h3>

<input type='button' value='Alert'   id='btn_alert'/>
<input type='button' value='Prompt'  id='btn_prompt'/>
<input type='button' value='Confirm' id='btn_confirm'/>

</body>
</html>








