<!-- 
아이디, 성명, 취미(checkbox), 여행희망지역(select, multiple)
을 입력받아 동일한 페이지에 출력.(hobby.jsp)-->
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>hobby</title>
</head>
<body>
<form name='frm' method='post'>
	<label>아이디: </label>
	<input type='text' name='id1'/><br/>
	
	<label>성명: </label>
	<input type='text' name='name1' /><br/>
	
	<label>취미: </label>
	<label><input type='checkbox' name='hobbys' value='축구'>축구</label>
	<label><input type='checkbox' name='hobbys' value='야구'>야구</label>
	<label><input type='checkbox' name='hobbys' value='농구'>농구</label><p/>
	
	<label>여행희망지역: </label>
	<select multiple="multiple" name='cities'>
		<option value='평양' >평양</option>
		<option value='개성' >개성</option>
		<option value='함흥' >함흥</option>
	</select>
	
	<input type='submit' value='전송' />
</form>
<hr/>

<%
request.setCharacterEncoding("UTF-8");
if (request.getMethod().equals("GET")) return;

String id = request.getParameter("id1");
String name = request.getParameter("name1");
String[] hobbys = request.getParameterValues("hobbys");
String[] cities = request.getParameterValues("cities");

String result = "아이디: " + id + "\n"
							+ "이름: " + name + "\n"
							+ "취미: " + Arrays.toString(hobbys) + "\n"
							+ "여행가고싶은곳: " + Arrays.toString(cities);

%>

<textarea rows='10' cols='60'><%=result %></textarea>

</body>
</html>