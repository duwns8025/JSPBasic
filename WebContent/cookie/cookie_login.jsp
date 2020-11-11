<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//ck쿠키를 확인하고, 아이디태그 value옵션에 값을 넣으면 됩니다
	Cookie[] cookie=request.getCookies();
	String name="";
	if(cookie !=null){
		for( Cookie c:cookie){
			if(c.getName().equals("ck")){
				name=c.getValue();
			}
		}
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h2>쿠키연습</h2>
	<form action="cookie_login_ok.jsp" method="post">
		아이디:<input type="text" name=id value="<%=name%>" required><br>
		비밀번호:<input type="password" name=pw required><br>
		<input type="submit" value="로그인">
		<input type="checkbox" name=idcheck value="y">아이디기억하기
	</form>
</body>
</html>