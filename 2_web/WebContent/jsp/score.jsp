<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h3>
			3개의 성적을 입력받아 총점, 평균, 학점을 구하여
			동일한 페이지에 출력하시오.
		</h3>
		<form name='frm' method='post'>
			<label>국어</label>
			<input type='text' name='kor' /><br/>
			
			<label>수학</label>
			<input type='text' name='mat' /><br/>
			
			<label>영어</label>
			<input type='text' name='eng' /><br/>
			
			<input type='submit' value='전송'/><br/>
		</form>
		
		<%
			request.setCharacterEncoding("UTF-8");
			if(request.getMethod().equals("GET")) {
				return;
			}
			int korean = Integer.parseInt(request.getParameter("kor"));
			int math = Integer.parseInt(request.getParameter("mat"));
			int english = Integer.parseInt(request.getParameter("eng"));
			out.print(total(korean, math, english)+"<br/>");
			out.print(average(korean, math, english)+"<br/>");
			out.print(grade(korean, math, english)+"<br/>");
		%>
		
		<%!
			public String total(int kor, int mat, int eng) {
				return "합계 : " + (kor+mat+eng);
			}
		
			public String average(int kor, int mat, int eng) {
				return "평균 : " + (double)(kor+mat+eng)/3;
			}
			
			public String grade(int kor, int mat, int eng) {
				double avg = (double)(kor+mat+eng)/3;
				return "학점 : " + ((avg >= 90) ? 'A' : (avg >= 80) ? 'B' : (avg >=70) ? 'C' : (avg >= 60) ? 'D' : 'F');
			}
		%>
	</body>
</html>