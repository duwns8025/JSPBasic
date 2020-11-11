<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String name=request.getParameter("name");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<div align="center">
		<h2>강의영상</h2>
		<hr>
		<%if(name == null) {%>
			잘못된 접근입니다
		<%}else if(name.equals("1")){ %>
		<p>자바 수업 소개</p>
		<iframe width="560" height="315" src="https://www.youtube.com/embed/Ee6FwffiAMQ" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
		<%}else if(name.equals("2")){ %>
		<p>자바스크립트 수업소개</p>
		<iframe width="792" height="446" src="https://www.youtube.com/embed/W5hPn_9d0dk" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
		<%}else if(name.equals("3")){ %>
		<p>오라클 설치과정</p>
		<iframe width="792" height="446" src="https://www.youtube.com/embed/czzmtR-AYXI" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
		<%} %>
	</div>
	
	
</body>
</html>