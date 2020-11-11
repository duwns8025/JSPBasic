<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String id=request.getParameter("id");
	String pw=request.getParameter("pw");
	String email=request.getParameter("email");
	String major=request.getParameter("major");
	String[] inter=request.getParameterValues("inter");
	
	String phone = request.getParameter("phone1");
	String txt = request.getParameter("txt");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>req_get_form에서 넘어온데이터</h2>
	아이디:<%=id %><br>
	패스워드:<%=pw %><br>
	메일:<%=email %><br>
	전공:<%=major %><br>
	취미:<%=Arrays.toString(inter) %><br>
	전화번호:<%=phone %><br>
	내용:<%=txt %>
</body>
</html>