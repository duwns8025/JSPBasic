<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	Cookie[] cookies=request.getCookies();
	
	String name=null;
	if(cookies !=null){
		for(Cookie coo:cookies){
			if(coo.getName().equals("user_id")){
				name=coo.getValue();
			}
		}
		
	}
	
	if(name ==null){
		response.sendRedirect("cookie_login.jsp");
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	
	
	<%=name %>님 환영합니다
	
</body>
</html>