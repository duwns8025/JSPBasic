<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%!
	public int num=1;

 %>
 <%
 	Random ran = new Random();
 	int dan=1+ran.nextInt(9);
 %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=num%>번째 방문자 입니다<br>
	<%if(num%10==0){%>
		당첨되셨습니다<br>
		
	<%} %>
	<%num++; %>
	
	<hr/>
	
	
	<h3>랜덤구구단<%=dan%>단</h3>
	이번에 나온 구구단 <%=dan%>단입니다
	<br>
	<%for(int i=1; i<=9; i++){ %>
		<%=dan%> x <%=i%> =<%=dan*i %><br>
	<%} %>
</body>
</html>