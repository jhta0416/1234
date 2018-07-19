<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- html type 주석 -->
<%
 // java 1
 /* java 2    */

%>
<%-- jsp type  --%>

		<%
			RequestDispatcher disp = 
				request.getRequestDispatcher("include_action_main.jsp?inc=score3.jsp");
			request.setCharacterEncoding("UTF-8");
			int korean, math, english, errCode=0;
			try{
				errCode=1;
				korean = Integer.parseInt(request.getParameter("kor"));
				errCode=2;
				math = Integer.parseInt(request.getParameter("mat"));
				errCode=3;
				english = Integer.parseInt(request.getParameter("eng"));
				
				out.print(total(korean, math, english)+"<br/>");
				out.print(average(korean, math, english)+"<br/>");
				out.print(grade(korean, math, english)+"<br/>");
				
			}catch(Exception ex){
				switch(errCode){
				case 1:
					request.setAttribute("msgKor", "국어 성적이...");
					break;
				case 2:
					request.setAttribute("msgMat", "수학 성적이...");
					break;
				case 3:
					request.setAttribute("msgEng", "영어 성적이...");
					break;
				}
				disp.forward(request, response);
			}

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