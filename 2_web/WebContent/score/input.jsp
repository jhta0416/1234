<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
#score_input .label{
	display:inline-block;
	width:67px;
}
#score_input .errMsg{
	font-size:12px;
	color:#ff0000;
}
</style>
<script>
function score_init(){
	var ff = document.frm_score;
	var regScore = /[^0-9]/g;
	
	ff.nal.value = new Date().toISOString().substring(0, 10);
	
	ff.btnScoreInput.onclick = function(){
		ff.id.style.backgroundColor="#ffffff";
		ff.subject.style.backgroundColor="#ffffff";
		ff.nal.style.backgroundColor="#ffffff";
		ff.score.style.backgroundColor="#ffffff";
		
		//이전 표시된 오류 메시지를 초기화
		ff.msgId.value='';
		ff.msgSubject.value='';
		ff.msgNal.value='';
		ff.msgScore.value='';

		if(ff.id.value.trim() == ''){
			ff.msgId.value ='아이디를...';
			ff.id.focus();
			ff.id.style.backgroundColor = '#eeeeff';
		}else if (ff.subject.value.trim() == ''){
			ff.msgSubject.value ='제목을...';
			ff.subject.focus();
			ff.subject.style.backgroundColor = '#eeeeff';
		}else if (ff.nal.value.trim() == ''){
			ff.msgNal.value ='응시일을...';
			ff.nal.focus();
			ff.nal.style.backgroundColor = '#eeeeff';
		}else if (ff.score.value.trim() == '' || regScore.test(ff.score.value)){
			ff.msgScore.value ='성적은...';
			ff.score.focus();
			ff.score.style.backgroundColor = '#eeeeff';
		}else{
			ff.action = 'index.jsp?nav=./score/score_control.jsp'
			          + '&sess=./score/input_result.jsp';
			ff.submit()
		}
	}
	
}

</script>
</head>
<body>
<div id='score_input'>
	<h3 id='title'>성적 입력</h3>
	<form name='frm_score' method='post'>
		<label class='label'>아이디</label>
		<input type='text' name='id' value='park'/>
		<output name='msgId'></output><br/>
		
		<label class='label'>과목</label>
		<input type='text' name='subject' value='java'/>
		<output name='msgSubject'></output><br/>
		
		<label class='label'>응시날짜</label>
		<input type='date' name='nal'/>
		<output name='msgNal'></output><br/>
	
		<label class='label'>성적</label>
		<input type='text' name='score' value='99'/>
		<output name='msgScore'></output><br/>
		<br/>
		<input type='button' value='저장' name='btnScoreInput'/>
	</form>
</div>
<script>score_init()</script>
</body>
</html>