<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>object2</title>
<link rel='stylesheet' type='text/css' href='mycss.css'/>
<style>
.lbl {
	display: inline-block;
	width:120px;
	text-align: right;
	border-right-width:2px;
	border-right-color:#aaaaaa;
	border-right-style:solid;
	
	padding-right:5px;
	margin-right:3px;
}
#subject { margin-top:4px;}
#subject > .lbl{ vertical-align: top;}
#subject > select {
	width:180px;height:150px;
}
#btn { margin-left:100px;}

</style>
<script>
//화면으로 입력받은 값을 저장하기 위한 배열
var data = []; // data = new Array();

//한건의 데이터를 저장하기 위한 함수(객체, 클래스)
function Data(no, color, skill, hobby, subject){
	this.no = no;
	this.color = color;
	this.skill = skill;
	this.hobby = hobby;
	this.subject = subject;
	this.toString = function(){
		var str = '<tr>' /*행 생성 */
		        + '<td>' + this.no    + '</td>'
		        + '<td>' + this.color + '</td>'
		        + '<td>' + this.skill + '</td>'
		        + '<td>' + this.hobby + '</td>'
		        + '<td>' + this.subject + '</td>'
		        + '</tr>';
		
		return str;
	}
}



window.onload = function(){
	var ff = document.frm;
	
	ff.btnInput.onclick = funcInput;
	
	ff.btnSearch.onclick = function(ev){
		var win = window.open('object2_find.jsp', 'win', 'width=570px, height=470px');
		win.moveTo(ev.screenX+20, ev.screenY-220);
	}
	ff.btnOutput.onclick = funcOutput;
}
// 기존 funcInput을 funcInput과 setData로 나눔.
function funcInput(){
	var ff = document.frm;
	var d = setData(ff);
	data.push(d);//배열 끝에 데이터를 추가
	ff.no.value = Number(ff.no.value) + 1;
	
}
function setData(ff){
	var no = ff.no.value;
	var color = ff.color.value;
	var skill='';
	var hy=[];
	var subject = [];
	
	//radio, checkbox, select에서 선택된 값(TODO)
	for(i=0 ; i<ff.jskill.length ; i++){
		if(ff.jskill[i].checked){
			skill = ff.jskill[i].value;
			break;
		}
	}
		
	for(i=0 ; i<ff.hobby.length; i++){
		if(ff.hobby[i].checked){
			hy.push(ff.hobby[i].value);
		}
	}

	subject = getSelections(ff.subject);
	
	//Data 객체 생성
	var d = new Data(no, color, skill, hy, subject);
	
	return d;	
}

function funcOutput(){
	var str = '<table>'
	        + '<tr>'
	        + '<th>No</th><th>Color</th><th>Skill</th>'
	        + '<th>Hobby</th><th>Subject</th>'
	        + '</tr>';
	for(i=0 ;i<data.length ; i++){
		str += data[i].toString();
	}
	str += '</table>';
	
	$('result').innerHTML = str;
}

function getSelections(obj){
	var array = [];

	for(i=0; i<obj.length; i++){
		if(obj.options[i].selected){
			array.push(obj.options[i].value);
		}
	}

	return array;
}

function $(id){
	return document.getElementById(id);
}
</script>
</head>
<body>
<h3 id='title'> 
  Object 객체를 사용하거나 function을 객체로 사용하는 경우
</h3>
<form name='frm' method='post'>
	<label class='lbl'>NO</label>
	<input type='number' name='no' min='1' max='1000' value='1'/><br/>
	<label class='lbl'>좋아하는 색상</label>
	<input type='color' name='color'/><br/>

	<label class='lbl'>자바스킬</label>
	<label><input type='radio' name='jskill' checked value='상'>상</label>
	<label><input type='radio' name='jskill' value='중'>중</label>
	<label><input type='radio' name='jskill' value='하'>하</label>
	<br/>

	<label class='lbl'>취미</label>
	<label><input type='checkbox' name='hobby' value='축구' checked>축구</label> 
	<label><input type='checkbox' name='hobby' value='야구'>야구</label> 
	<label><input type='checkbox' name='hobby' value='농구'>농구</label> 
	<label><input type='checkbox' name='hobby' value='배구'>배구</label> 
	<label><input type='checkbox' name='hobby' value='탁구' checked>탁구</label> 
	<br/>
	<div id='subject'>
		<label class='lbl'>수강 희망 과목</label>
		<select name='subject' multiple="multiple">
			<optgroup label="Application">
				<option value='JAVA' selected>Java</option>
				<option value='Android'>Android</option>
				<option value='C++'>C++</option>
			</optgroup>
			
			<optgroup label="Web">
				<option value='html'>html</option>
				<option value='css'>css</option>
				<option value='javascript'  selected>javascript</option>
				<option value='jsp'>jsp</option>
				<option value='php'>php</option>
				<option value='asp'>asp</option>
			</optgroup>
					
			<optgroup label="FrameWork">
				<option value='jQuery'  selected>jQuery</option>
				<option value='aJax'  selected>aJax</option>
				<option value='mybatis'>mybatis</option>
				<option value='spring'>spring</option>
			</optgroup>					
		</select>
	</div>
	<p/>
	<div id='btn'>
		<input type='button' value='추가' name='btnInput'/>
		<input type='button' value='검색' name='btnSearch'/>
		<input type='button' value='출력' name='btnOutput'/>
	</div>		
</form>
<p/>
<div id='result'></div>
</body>
</html>









