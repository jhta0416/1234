<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>form_text_2</title>
<script>
window.onload=function(){
	var ff = document.frm;
	ff.btn.onclick = function(){
		
		ff.kor.style.backgroundColor = '#ffffff';
		ff.eng.style.backgroundColor = '#ffffff';
		ff.mat.style.backgroundColor = '#ffffff';
		
		
		if( !isFinite(ff.kor.value) || ff.kor.value == '' ){
			ff.kor.focus();
			ff.kor.style.backgroundColor = '#ffdddd';
			return;
		}
		
		if( !isFinite(ff.eng.value) || ff.eng.value == ''){
			ff.eng.focus();
			ff.eng.style.backgroundColor = '#ffdddd';
			return;
		}
		
		if( !isFinite(ff.mat.value) || ff.mat.value == ''){
			ff.mat.focus();
			ff.mat.style.backgroundColor = '#ffdddd';
			return;
		}
		
		
		var kor = Number(ff.kor.value);
		var eng = Number(ff.eng.value);
		var mat = Number(ff.mat.value);
		
		var tot = (kor + eng + mat);
		
		ff.tot.value = tot;
		ff.avg.value = (tot/3).toFixed(2);		
		
	}
}

</script>
</head>
<body>
<h3>
국어, 영어, 수학 점수를 text 상자로 입력받아 총점, 평균을 계산하여 각각 text 상자에
표시하시오
</h3>
<form name='frm' method='post'>
	<label>국어</label>
	<input type='text' name='kor' value='90'/><br/>

	<label>영어</label>
	<input type='text' name='eng' value='90'/><br/>
	
	<label>수학</label>
	<input type='text' name='mat' value='90'/><br/>
	<hr/>
	<label>총점</label>
	<input type='text' name='tot' /><br/>
	<label>평균</label>
	<input type='text' name='avg' />
	<p/>
	<input type='button' value='성적계산' name='btn'/>
</form>

</body>
</html>