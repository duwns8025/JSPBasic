<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	
	int korea=Integer.parseInt(request.getParameter("korea"));
	int eng=Integer.parseInt(request.getParameter("eng"));
	int math=Integer.parseInt(request.getParameter("math"));
	
	double avg = (double)(korea+eng+math)/3;
	String result=String.format("%.2f",avg);
	double a=(double) avg*100;
	double b=a/100;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	평균은<%=b %>점입니다 <br>
	<%if(avg>= 80) {%>
		고득점
	<%}else if(avg>=60) {%>
		중간
	<%}else {%>
		저득점
	<%} %>
</body>
</html>