<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel='stylesheet' type='text/css' href='../javascript/mycss.css'/>
<title>hak</title>
</head>
<body>
<h3 id='title'>
정수형 점수를 입력받아 학점을 구하여 반환
</h3>

<%=hakjum(99) %>


<%!
public char hakjum(int x){
	char c = ' ';
	
	if(x>=90)      c = 'A';
	else if(x>=80) c = 'B';
	else if(x>=70) c = 'C';
	else if(x>=60) c = 'D';
	else           c = 'F';
	
	return c;
}
%>


</body>
</html>