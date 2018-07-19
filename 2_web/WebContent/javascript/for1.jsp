<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>for1</title>
</head>
<body>
<h3> 1) dan 변수에 임의의 값을 대입한 후 dan에 해당되는 구구단을 출력하시오.</h3>

<script>
var dan = 2;

for(i = 1 ; i < 10 ; i++){
	document.write(dan + " * " + i + " = " + dan * i + "<br/>");
}
</script>

<h3>2) start, end에 임의의 정수를 대입한후 start~end까지의 합계를 구하여 출력</h3>
<script>
var start = 1;
var end =   100;
var sum =   0;
var i;

for (i = start; i <= end; i++) {
	sum += i;
}
document.write(start + '부터 ' + end + '까지의 합: ' + sum);

</script>

<h3>3) start~end 사이의 수중 3,7의 공배수를 출력하시오.</h3>
<script>
	
	var start=1;
	var end=100;
	
	for(var i=start; i<=end; i++){
		if(i%3==0 && i%7==0){
			document.write(i+"<br/>");
		}
		
	}
	
</script>

<h3>4) 1~100사이의 수중 솟수만을 출력하시오.</h3>
	<script>
		var count = 0;
		for(var i=1; i<=100; i++) {
			for(var j=1; j<=i; j++) {
				if(i % j == 0) {
					count++;
				}
			}
			if(count == 2) {
				document.write(i + " ");
			}
			count = 0;
		}
	</script>

</body>
</html>