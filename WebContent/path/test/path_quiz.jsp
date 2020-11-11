<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<!-- a태그를 이용해서 req_video페이지로 상대경로, 절대경로로 이동 -->
	
	<a href="../../request/req_video.jsp">req_video로 (상대경로)</a>
	<a href="<%=request.getContextPath()%>/request/req_video.jsp">req_video로 (절대경로)</a>
	<br>
	<!-- img태그를 사용해서 java.png참조 -->
	<img src="../../request/img/java.png" width="50px" height="50px" alt="java">
	<img src="/JSPBasic/request/img/java.png" width="50px" height="50px" alt="java">
	
	
	<br>
	<!-- a태그를 이용해서 TestServlet으로 상대경로,절대경로 -->
	<a href="/JSPBasic/banana">testservlet2(절대경로)</a>
	<a href="../../banana">testservlet2(상대경로)</a>
	
</body>
</html>