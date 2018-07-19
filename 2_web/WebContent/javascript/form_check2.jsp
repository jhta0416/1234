<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>form_check2</title>
<style>
#title{
	border-style: outset;
	white-space: pre-wrap;
	padding:10px;
	background: #eeeeee;
	box-sizing: border-box;
}
form > div >label { vertical-align: top;}
form > div >select { width:170px; margin-top:8px;}
</style>
<script>
window.onload = function(){
	var ff = document.frm;
	ff.btn.onclick = function(){
		var hy='';
		var sub='';
		/* 모듈없이 처리 -----------------------------------------------
		for(i=0 ; i<ff.hobby.length; i++){
			if(ff.hobby[i].checked) hy += ff.hobby[i].value + ' ';
		}
		
		for(i=0; i<ff.subject.length; i++){
			if(ff.subject.options[i].selected) sub += ff.subject.options[i].value + ' ';
		}
		*/
		
		// 모듈 처리 ---------------------------------------------------
		hy = getCheck(ff.hobby);
		sub = getSelections(ff.subject);
		
		var str = 'ID : ' + ff.mid.value + '\n'
		        + 'Hobby : ' + hy + '\n'
		        + 'Subejct : ' + sub;
		
		ff.te.value = str;
	}
}

/* -------------------------------------------------- 
 *checkbox module
 * checkbox 태그를 전달받아 선택된 항목만 배열로 반환
 ----------------------------------------------------*/
function getCheck(obj){
	var array = [];// array = new Array();`
	var pos = 0;
	for(i=0; i<obj.length; i++){
		if(obj[i].checked){
			array[pos] = obj[i].value;
			pos++;
		}
	}

	return array;
}

/* -------------------------------------------------- 
 *multi selector module
 * select 태그를 전달받아 선택된 항목만 배열로 반환
 ----------------------------------------------------*/
function getSelections(obj){
	var array = [];
	var pos = 0;
	for(i=0; i<obj.length; i++){
		if(obj.options[i].selected){
			array[pos] = obj.options[i].value;
			pos++;
		}
	}

	return array;
}
</script>

</head>
<body>
<h3 id='title'>[응용3]
text : 아이디
checkbox : 취미(축구, 농구, 배구, 야구, 등산, 독서, 여행)
select : 과목 다중 선택(java, jsp, html, css, js, ajax, mybatis, jquery, spring, android)
를 화면으로 입력받아 그 결과를 textarea에 출력
</h3>
<form name='frm'>
	<label>아이디</label>
	<input type='text' name='mid' value='park'/><br/>
	<label>취미</label>
	<label><input type='checkbox' name='hobby' value='축구'/>축구</label>
	<label><input type='checkbox' name='hobby' value='농구'/>농구</label>
	<label><input type='checkbox' name='hobby' value='배구'/>배구</label>
	<label><input type='checkbox' name='hobby' value='야구'/>야구</label>
	<label><input type='checkbox' name='hobby' value='등산'/>등산</label>
	<label><input type='checkbox' name='hobby' value='독서'/>독서</label>
	<label><input type='checkbox' name='hobby' value='여행'/>여행</label>
	<br/>
	<div>
		<label>과목</label>
		<select name='subject' multiple='multiple' size='10'>
			<optgroup label="Application">
				<option value='java'>java</option>
				<option value='android'>android</option>
			</optgroup>
			<optgroup label="Web">
				<option value='html'>html</option>
				<option value='css'>css</option>
				<option value='js'>js</option>
				<option value='jsp'>jsp</option>
			</optgroup>
			<optgroup label="FrameWork">
				<option value='ajax'>ajax</option>
				<option value='mybatis'>mybatis</option>
				<option value='jquery'>jquery</option>
				<option value='spring'>spring</option>
			</optgroup>
			
		</select>
	</div>
	<br/>
	<textarea rows="6" cols="30" name='te'></textarea>
	<p/>
	<input type='button' value='CHECK' name='btn'/>
	
</form>

</body>
</html>