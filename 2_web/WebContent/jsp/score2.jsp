<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>6) </h2>
<form name = 'frm' method = 'post'>
<label>이름 : </label>
<input type = 'text' name = 'name'><br/><br/>
남자<input type = 'radio' name = 'gen' value = '남자'>
여자<input type = 'radio' name = 'gen' value = '여자'><br/><br/>
<label>국어 : </label><input type = 'text' name = 'kor'/><br/>
<label>영어 : </label><input type = 'text' name = 'eng'/><br/>
<label>수학 : </label><input type = 'text' name = 'mat'/>
<p/>
<input type = 'submit' value = '전송'>
</form>
<%!
public void gr(JspWriter out, int k, int e, int m){
	int sum = 0;
	double avg = 0;
	String str = "";
	String str2 = "";
	try{
		sum = k + e + m;
		avg = (double)sum/3;
		if(avg<60 || k < 40 || e < 40 || m < 40){
			str2 = "불합격";
		}else{
			str2 = "합격";
		}
		str = String.format("<br/>합계 : %d <br/>평균 : %f <br/> 등급 : %s",sum,avg,str2);
	out.print(str);
	}catch(Exception es){}
}
%>

<%
request.setCharacterEncoding("UTF-8");
if(request.getMethod().equals("GET")) return;

String name = request.getParameter("name");
String[] gen = request.getParameterValues("gen");
String ko = request.getParameter("kor");
String en = request.getParameter("eng");
String ma = request.getParameter("mat");
out.print("<br/>이름 : " + name);
out.print("<br/>성별 : " + Arrays.toString(gen));
gr(out, Integer.parseInt(ko), Integer.parseInt(en), Integer.parseInt(ma));
%>

</body>
</html>