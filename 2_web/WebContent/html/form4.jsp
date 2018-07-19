<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>form4</title>
</head>
<body>
<h3>form4</h3>
<form name='frm' method='post'>
	<label>kor : <input type='number' name='kor' value='90' min='0' max='100'></label><br/>
	<label>eng : <input type='number' name='eng' value='90' min='0' max='100'></label><br/>
	<label>mat : <input type='number' name='mat' value='90' min='0' max='100'></label><br/>
	<label>com : <input type='number' name='com' value='90' min='0' max='100'></label><br/>
	<label>his : <input type='number' name='his' value='90' min='0' max='100'></label><br/>
	<label>wrd : <input type='number' name='wrd' value='90' min='0' max='100'></label><br/>
	
	<label>응시지역</label>
	<select name='zone'>
		<option value='서울'>서울</option>
		<option value='경기'>경기</option>
		<option value='강원'>강원</option>
		<option value='충청'>충청</option>
		<option value='호남'>호남</option>
		<option value='경상'>경상</option>
		<option value='제주'>제주</option>
	</select>
	<br/>
	<label>난이도<input type='range' min='1' max='10' name='hard'></label>
	
	<p/>
	<input type='submit' value='전송'>
</form>

<%
if(request.getMethod().equals("GET")) return;
request.setCharacterEncoding("utf-8");
int tot = 0;
double avg = 0;

tot += Integer.parseInt(request.getParameter("kor"))
	  + Integer.parseInt(request.getParameter("eng"))
		+ Integer.parseInt(request.getParameter("mat"))
		+ Integer.parseInt(request.getParameter("com"))
		+ Integer.parseInt(request.getParameter("his"))
		+ Integer.parseInt(request.getParameter("wrd"));
avg = (double)tot / 6;


%>
<h3>결과</h3>
<ul>
	<li>kor : <%=request.getParameter("kor") %></li>
	<li>eng : <%=request.getParameter("eng") %></li>
	<li>mat : <%=request.getParameter("mat") %></li>
	<li>com : <%=request.getParameter("com") %></li>
	<li>his : <%=request.getParameter("his") %></li>
	<li>wrd : <%=request.getParameter("wrd") %></li>
	<li>zone : <%=request.getParameter("zone") %></li>
	<li>hard : <%=request.getParameter("hard") %></li>
	<li>tot : <%=tot %></li>
	<li>avg : <%=avg %></li>

</body>
</html>