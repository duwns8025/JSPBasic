<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	ArrayList<String> list = new ArrayList<>();
	String[] kakao = {"어피치","라이언","제이지","무지","프로도","튜브"};
	Random ran = new Random();
%>
<%
		if(list.size()==10) {
			list.clear();
		}

		int num=ran.nextInt(6);
		String fd=kakao[num];
		
		int count =0;
		list.add(fd);
		
		for(String same:list){
			if(same.equals(fd)){
				count++;
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
	
	
	
	[<b><%=fd %></b>]님이 입장<br>
	현재 같은 카카오 프렌즈는 <%=count %>명 입니다.
	
	<hr/>
	<h2>현재 구성정보</h2>
	
	<%=list %> (<%=list.size() %>명참가중)
	
		
	
	
</body>
</html>