<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
#title{ 
	border-style: outset;
	white-space: pre-wrap;
	background: #eeeeee;
	padding:10px;
	box-sizing: border-box;
	}
</style>
<script>
window.onload = function(){
	var ff = document.frm;
	checkGrade(ff);
	
	/* amount(매출액)가 변경될 때 마다 등급을 자동 설정 */
	ff.amount.onkeyup=function(){
		checkGrade(ff);
	}
	
	
	ff.btn.onclick = function(){
		var str = '';
		var hy = '';//취미 문자열
		var amt = 0;//매출액
		
		//회원/비회원 체크
		var gu =(ff.gu[0].checked)? ff.gu[0].value : ff.gu[1].value;
		
		//취미 문자열
		for(i=0 ; i<ff.hobby.length; i++){
			if(ff.hobby[i].checked) hy += ff.hobby[i].value + ' ';
		}
		
		
		str = 'ID : '     + ff.mid.value + '\n'
		    + 'Name : '   + ff.irum.value + '\n'
		    + 'Amount : ' + ff.amount.value + '\n'
		    + 'Register : ' + gu + '\n'
		    + 'Hobby : '  + hy;
		
		
		ff.te.value = str;
		
		checkGrade(ff);
		
	}
	
}
function checkGrade(ff){
	//매출액에 따른 라디오 버튼 처리
	amt = Number(ff.amount.value);
	
	if(amt >=10000){
		ff.grade[0].checked=true;
	}else if(amt>=5000){
		ff.grade[1].checked=true;
	}else if(amt >=1000){
		ff.grade[2].checked=true;
	}else{
		ff.grade[3].checked=true;
	}
}
</script>

</head>
<body>

<h3 id='title'>[응용4]
text : 아이디, 성명, 매출액
radio : 구분(회원, 비회원)
checkbox : 취미(축구, 농구, 배구, 야구, 등산, 독서, 여행)
radio : 등급(A B C D) 을 화면에서 입력받아 그 결과를 textarea에 출력.
단, 등급은 매출액이 
 10000 이상이면 A,
 5000 이상이면 B,
 1000 이상이면 C, 그외에는 D를 자동 표시
</h3>

<form name='frm' method='post'>
	<label>이름</label>
	<input type='text' name='mid' value='p001'/><br/>
	<label>성명</label>
	<input type='text' name='irum' value='park'/><br/>
	<label>매출액</label>
	<input type='text' name='amount' value='5000'/><br/>
	
	<label>구분</label>
	<label><input type='radio' name='gu' value='회원' checked>회원</label>
	<label><input type='radio' name='gu' value='비회원'>비회원</label>
	<br/>
	
	<label>취미</label>
	<label><input type='checkbox' name='hobby' value='축구' checked/>축구</label>
	<label><input type='checkbox' name='hobby' value='농구'/>농구</label>
	<label><input type='checkbox' name='hobby' value='배구'/>배구</label>
	<label><input type='checkbox' name='hobby' value='야구' checked/>야구</label>
	<label><input type='checkbox' name='hobby' value='등산'/>등산</label>
	<label><input type='checkbox' name='hobby' value='독서'/>독서</label>
	<label><input type='checkbox' name='hobby' value='여행' checked/>여행</label>
	<br/>
	<label>등급</label>
	<label><input type='radio' name='grade' value='A'>A</label>
	<label><input type='radio' name='grade' value='B'>B</label>
	<label><input type='radio' name='grade' value='C'>C</label>
	<label><input type='radio' name='grade' value='D'>D</label>
	
	<p/>
	<textarea rows="6" cols="30" name='te'></textarea>
	<p/>
	<input type='button' value='CHECK' name='btn'/>

</form>





</body>
</html>