<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>fun_numeric</title>
</head>
<body>
<h1>숫자형 함수</h1>
<h3>1) str='1010'의 값이 2진수, 8진수, 16진수, 10진수일때 그 값을 10진수로 표시</h3>
<script>
	var str = '1010';
	document.write('2진수: ' + parseInt(str, 2) + '<br/>');
	document.write('8진수: ' + parseInt(str, 8) + '<br/>');
	document.write('16진수: ' + parseInt(str, 16) + '<br/>');
	document.write('10진수: ' + parseInt(str, 10) + '<br/>');

</script>

<h3>2) su1='10', su2='20'이 저장되어 있다. su1, su2를 산술적으로 더한 값을 출력 </h3>
<script> 
var su1 = '10';
var su2 = '20';
a = parseInt(su1);
b = parseInt(su2);

document.write(a+b);
</script>

<h3>3) str에 임의의 값을 대입한 후 숫자형의 값이 아니라면 '계산불가'를 출력 </h3>
<script>
var str = "가나다라";

if(isFinite(str)){
	document.write("계산가능");
}else{
	document.write("계산불가");
}

</script>

<h3>4) 방정식이 y='x*2 +1' 와 같이 문자열로 지정되어 있다. x값이 1~10일 때 해를 
모두 구하시오.(eval사용)
</h3>
<script> 
var a = 0;
var y = 'x*2+1';
for(var i = 1; i <= 10; i++){
	a = y.replace(/x/,i);
	document.write("x가 " + i + "일때 : " + eval(a) + "<br/>");
}

//or-------------------------------------------------------
for(var x = 1; x <= 10; x++){
	document.write("x가 " + x + "일때 : " + eval(y) + "<br/>");
}

</script>

<h3>5) jumi='910223-1234567'일 때 생년,생월, 생일, 성별을 분리 하여 출력
	(단 성별은 남자 또는 여자로 표시)
</h3>
<script>
	var jumi = '910223-1234567';
	document.write("생년 : " + jumi.substr(0,2) + " ");
	document.write("생월 : " + jumi.substr(2,2) + " ");
	document.write("생일 : " + jumi.substr(4,2) + " ");
	document.write("성별 : " + (jumi.substr(7,1)%2==0 ? "여자" : "남자"));
</script>

<h3>6) su='10,20,30,40,50' 가 대입되어 있다. 정수로 바꾸어 합계와 평균을 출력</h3>
<script>
var su = '10,20,30,40,50';
var sum = 0;
var avg = 0;
var a = 0;
var re = su.split(',');

for (var i=0 ; i<=re.length-1 ; i++){
	a = re[i];
	sum += parseInt(a, 10);// or sum += Number(a); or sum += parseInt(a);
	a = 0;
}
avg = sum / re.length;
document.writeln('sum= ' + sum);
document.write('avg= ' + avg);
</script>

<h3>7) data = 'hipwg@naver.com' 이메일 주소를 사용하여 아이디와 사이트 주소를
분리하여 출력하시오.
</h3>
<script>

	var data = 'hipwg@naver.com';
	var a = data.substr(0,data.indexOf('@'));
	var b = data.substr(data.indexOf('@')+1);
	document.write(a+'<br/>');
	document.write('www'+b+'<br/>');

</script>







</body>
</html>