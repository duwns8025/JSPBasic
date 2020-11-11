<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	/*
	1.show쿠키가 있다면 쿠키가 가지고있는 날짜를 화면에 출력.
	만약에 쿠키가 없으면 "쿠키가 없네용~"출력
	
	*/
	
	Cookie[] coos=request.getCookies();
	boolean bo = true;	

	String name= null;
	
	if(coos != null){
		for( Cookie coo:coos){	
			if(coo.getName().equals("show")){
				name = coo.getValue();
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
	
	
	<%if(name == null){ %>
		쿠키가 없네용
	<%}else{ %>
		<%=name %>
	<%} %>
</body>
</html>