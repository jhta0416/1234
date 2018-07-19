<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>array</title>
</head>
<body>
<script>
//JSON type
var mnt=["백두산","한라산","금강산","설악산","치악산","내장산"];
var river = ["한강","금강","낙동강","두만강","섬진강","동강"];
var score =[190,30,120,50,70,40];
</script>

<h3>1) 배열 mnt를 연결문자열을 '-' 으로 지정하여 출력하시오 </h3>
<script> document.write(mnt.join("-"));</script>

<h3>2) 배열 mnt와 river를 붙여 새로운 배열을 만들고 내림차 정렬하여 출력하시오.</h3>
<script> 
var ss = mnt.concat(river);
ss.sort();
document.write(ss.reverse());
</script>

<h3>3) findStr="금강산"이 저장되어 있다. mnt배열에서 몇번째인지를 찾아 출력하시오.</h3>
<script> 
var findstr= "금강산";

for(var i = 0 ; i < mnt.length ; i++){
	if(findstr == mnt[i]){
		document.write(i+"번째");
		break;
	}
}

</script>

<h3>4) score에 있는 모든 성적을 사용하여 총점과 평균을 계산하시오.</h3>
<script>
var tot=0;

for (var i=0; i<score.length; i++) {
	tot += score[i];
}

document.write('총점: ' + tot + '<br/>');
document.write('평균: ' + (tot/score.length) + '<br/>' );

</script>

<h3>5) score배열의 값들중 60점 이상인 갯수와 미만인 갯수를 각각 값들과 함께 출력</h3>
<script>
var up = new Array();
var down = new Array();
var cnt = 0;
var cou = 0;

for (var i=0 ; i<=score.length-1 ; i++){
	if (score[i] >= 60){
		up[cnt] = score[i];
		cnt ++;
	} else if (score[i] < 60){
		down[cou] = score[i];
		cou ++;
	}
}
document.write('60점 이상인 점수: ' + cnt + '개,   ' + up + '<br/>');
document.write('60점 이하인 점수: ' + cou + '개,   ' + down);
</script>

<h3>6) score를 내림차 정렬하여 출력하시오.</h3>
<script> document.write(score.sort());</script>
<br/>
<script>
function aa(a, b){
	return b - a; 
}
score.sort(aa);
document.write(score);
</script>
<h3>7)백두산-한강-90 과 같이 같은 위치(index)의 값이 서로 연관성이 있는 배열이라고
가정한다면 score가 60이상인 산이름과 강이름을 출력하시오.
</h3>
<script> 
for(var i=0; i <= score.length-1; i++){
	if(score[i] >= 60){
		document.write("산 : " + mnt[i] + "<br/>");
		document.write("강 : " + river[i] + "<br/>");
	}
}
</script>











</body>
</html>