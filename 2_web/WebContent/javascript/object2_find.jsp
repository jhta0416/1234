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
var data;
var ff;
window.onload=function(){
	data = opener.data;//메인창에 있는 데이터 배열
	ff = document.frm;
	ff.btnFind.onclick   = funcFind;
	ff.btnModify.onclick = funcModify;
	ff.btnDelete.onclick = funcDelete;
	ff.btnClose.onclick = function(){
		self.close();
	}
}

function funcFind(){
	var no = ff.no.value;
	
	/* check, select init */
	for(i=0 ; i<ff.hobby.length;i++)   ff.hobby[i].checked=false;
	for(i=0 ; i<ff.subject.length;i++) ff.subject[i].selected=false;
	
	
	for(i=0 ; i<data.length ; i++){
		if(data[i].no == no){
			ff.color.value = data[i].color;
			//radio
			for(j=0 ; j<ff.jskill.length ; j++){
				if(ff.jskill[j].value == data[i].skill){
					ff.jskill[j].checked=true;
				}
			}
			//checkbox
			for(j=0 ; j<ff.hobby.length ; j++){
				for(k=0 ; k<data[i].hobby.length ; k++){
					if(ff.hobby[j].value == data[i].hobby[k]){
						ff.hobby[j].checked=true;
					}
				}
			}
			//select
			for(j=0 ; j<ff.subject.length ; j++){
				for(k=0 ; k<data[i].subject.length ; k++){
					if(ff.subject[j].value == data[i].subject[k]){
						ff.subject[j].selected=true;
					}
				}
			}
			break;
		}
	}
}
function funcModify(){
	var ff = document.frm;
	var d = opener.setData(ff);
	var no = ff.no.value;
	
	
		for(i=0 ; i<data.length; i++){
			if(data[i].no == no){
				data[i] = d;
			}
		}
}
function funcDelete(){
	var yn = confirm("정말 삭제하려고???");
	if(yn){
		var ff = document.frm;
		var no = ff.no.value;
		for(i=0 ; i<data.length; i++){
			if(data[i].no == no){
				data.splice(i,1);
				ff.no.value='';
				break;
			}
		}
	}
}

</script>
</head>
<body>
<h3 id='title'> 
  Object 객체를 사용하거나 function을 객체로 사용하는 경우
</h3>
<form name='frm' method='post'>
	<label class='lbl'>NO</label>
	<input type='number' name='no' value = '1' min='1' max='1000'/>
	<input type='button' name='btnFind' value='검색'>
	<br/>
	<label class='lbl'>좋아하는 색상</label>
	<input type='color' name='color'/><br/>

	<label class='lbl'>자바스킬</label>
	<label><input type='radio' name='jskill' checked value='상'>상</label>
	<label><input type='radio' name='jskill' value='중'>중</label>
	<label><input type='radio' name='jskill' value='하'>하</label>
	<br/>

	<label class='lbl'>취미</label>
	<label><input type='checkbox' name='hobby' value='축구'>축구</label> 
	<label><input type='checkbox' name='hobby' value='야구'>야구</label> 
	<label><input type='checkbox' name='hobby' value='농구'>농구</label> 
	<label><input type='checkbox' name='hobby' value='배구'>배구</label> 
	<label><input type='checkbox' name='hobby' value='탁구'>탁구</label> 
	<br/>
	<div id='subject'>
		<label class='lbl'>수강 희망 과목</label>
		<select name='subject' multiple="multiple">
			<optgroup label="Application">
				<option value='JAVA'>Java</option>
				<option value='Android'>Android</option>
				<option value='C++'>C++</option>
			</optgroup>
			
			<optgroup label="Web">
				<option value='html'>html</option>
				<option value='css'>css</option>
				<option value='javascript'>javascript</option>
				<option value='jsp'>jsp</option>
				<option value='php'>php</option>
				<option value='asp'>asp</option>
			</optgroup>
					
			<optgroup label="FrameWork">
				<option value='jQuery'>jQuery</option>
				<option value='aJax'>aJax</option>
				<option value='mybatis'>mybatis</option>
				<option value='spring'>spring</option>
			</optgroup>					
		</select>
	</div>
	<p/>
	<div id='btn'>
		<input type='button' value='수정' name='btnModify'/>
		<input type='button' value='삭제' name='btnDelete'/>
		<input type='button' value='닫기' name='btnClose'/>
	</div>		
</form>
</body>
</html>









