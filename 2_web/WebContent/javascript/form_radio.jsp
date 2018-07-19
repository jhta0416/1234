<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>form_radio</title>
<script>
window.onload = function(){
	var ff = document.frm;
	ff.btn.onclick = function(){
		for(var b=0 ; b<ff.chk.length ; b++){

			if(ff.chk[b].checked){
				ff.te.style.backgroundColor= ff.chk[b].value;
				ff.te.value = ff.chk[b].value;
				
				if(b==0 || b==3){
					ff.te.style.color= "#ffffff";
				}else{
					ff.te.style.color= "#000";
				}
				
				break;
			}
		}
	}
}
</script>
</head>
<body>
<h3>Box 색상을 고르시오</h3>
<form name='frm' method='post'>
	<textarea name='te' rows="5" cols="36"></textarea><br/>
	<label><input type='radio' name='chk' value='#000000'>검정</label>
	<label><input type='radio' name='chk' value='#ff0000'>빨강</label>
	<label><input type='radio' name='chk' value='#00ff00'>녹색</label>
	<label><input type='radio' name='chk' value='#0000ff'>파랑</label><br/>
	<label><input type='radio' name='chk' value='#ffff00'>노랑</label>
	<label><input type='radio' name='chk' value='#00ffff'>하늘</label>
	<label><input type='radio' name='chk' value='#ff00ff'>분홍</label>
	<p/>
	<input type='button' value='CLICK' name='btn'/>
</form>
</body>
</html>