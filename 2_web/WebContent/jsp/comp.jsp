<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel='stylesheet' type='text/css' href='../javascript/mycss.css'/>
<title>Insert title here</title>
</head>
<body>
<h3 id='title'>
두수를 매개변수로 받아 합계와 평균을 문자열로 반환 받아 표현식으로 출력
</h3>
<%

 out.print(compute(60,71));

%>


<%!
public String compute(int x, int y){
	String r = "";
	int sum = x + y;
	double avg = sum / 2.0;
	r = "<li>합계:" + sum
	  + "<li>평균:" + avg;
	
	return r;
}
%>
</body>
</html>