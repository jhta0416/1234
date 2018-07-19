<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
window.onload = function(){
	var ff = document.frm;
	
	var te2 = document.getElementById('te');//textarea가 form 밖에 있는 경우.
	
	ff.btn.onclick = function(){
		var gen = (ff.gender[0].checked)? ff.gender[0].value : ff.gender[1].value;
		var str = 'ID : ' + ff.mid.value + '\n'
		        + 'Name : ' + ff.irum.value + '\n'
		        + 'Address : ' + ff.address.value + '\n'
		        + 'Gender : ' + gen;
		
		//ff.te.value = str;
		te2.value = str;
	}
	
}
</script>
<style>
	#title{
		
	}
  form > label{
  	display:inline-block;
  	width:60px;
  	text-align: right;
  }
	#te{
		border:1px solid #aaaaaa;
		box-shadow: 2px 2px 3px #333333;
		padding:10px;
		box-sizing: border-box;
		border-radius: 10px;
	}
	.item{
		border-width:0px;
		border-bottom-width: 1px;
		border-bottom-color: #000000;
	}
	
	.item:focus {
			background-color: #ffeeee;
	}
</style>
</head>
<body>
<h3 id='title'>아이디, 성명, 주소를 text 상자로, 성별은 radio로 
 입력받아 아래와 같이 textarea에 출력하시오.
</h3>

<form name='frm'>
	<label>아이디 : </label>
	<input type='text' name='mid' id='mid' value='hipwg' size='5' class='item'/><br/>
	<label>성 명 : </label>
	<input type='text' name='irum' value='park' size='10' class='item'/><br/>
	<label>주 소 : </label>
	<input type='text' name='address' value='서울 종로 율곡로10길 105' size='40' class='item'/><br/>
	
	<label>성 별 : </label>
	<span>
	<label><input type='radio' name='gender' value='남' checked/>남</label>
	<label><input type='radio' name='gender' value='여'/>여</label>
	</span>
	<p/>
	<input type='button' value='CLICK' name='btn'/>
</form>
	<p/>
	<textarea rows="6" cols="49" name='te' id='te'></textarea>


</body>
</html>