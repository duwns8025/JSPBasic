<%@page import="java.text.SimpleDateFormat"%>

<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	/*
	1.date클래스를 이용해서 xxxx년xx월xx일 형태로 날짜를 생성
	쿠키이름은 show쿠키로 생성해주세요
	
	*/
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년MM월dd일");
	String a=sdf.format(date);
	
	Cookie show = new Cookie("show",a);
	
	show.setMaxAge(20);
	response.addCookie(show);
	
%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<a href="cookie02.jsp">aaa</a>
	
</body>
</html>