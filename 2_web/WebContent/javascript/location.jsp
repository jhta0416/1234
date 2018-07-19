<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>location</title>
<style>
#title{
	border-left-width:10px;
	border-left-color:#4444ff;
	border-left-style:solid;
	line-height:32px;
	padding-left:6px;
	box-sizing:border-box;
	background: #eeeeff;
}
</style>

<script>
//그냥 만들어보는 함수^^
function $(id){
	return document.getElementById(id);
}
window.onload=function(){
	var naver  = $('btn1');

	//type1
	naver.onclick = function(){
		location.href = "http://www.naver.com";
	}
	
	//type2(jquery type)
	$('btn2').onclick = function(){
		location.href = 'http://www.daum.net';
	}
	$('btn3').onclick = function(){
		location.href = 'http://www.google.com';
	}
	$('btn4').onclick = function(){
		location.href = 'http://www.jobtc.kr';
	}
	
}
</script>
</head>
<body>
<h3 id='title'>버튼을 클릭하면 특정 사이트(page)로 이동</h3>

<input type='button' value='NAVER'  id='btn1'/>
<input type='button' value='DAUM'   id='btn2'/>
<input type='button' value='GOOGLE' id='btn3'/>
<input type='button' value='JOBTC'  id='btn4'/>

</body>
</html>