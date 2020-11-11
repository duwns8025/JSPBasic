<%@page import="java.util.Map.Entry"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//Date
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	String now=sdf.format(date);

	//ArrayList
	ArrayList<String> list =new ArrayList<>();
	list.add("홍길동");
	list.add("홍길자");
	
	//HashMap
	HashMap<Integer,String> map = new HashMap<>();
	
	map.put(1, "홍길동");
	map.put(2, "홍길자");
	
%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%=now %><br>
	<%for (Integer key :map.keySet()) {%>
		<%=key%>.<%= map.get(key) %><br>
	<%} %>
	
	<%for (Entry<Integer,String> mapp :map.entrySet()) {%>
	<%= mapp.getKey() %>.<%=mapp.getValue() %><br>
	<%} %>
	
	<%for(String a:list) {%>
		<%=a %><br>
	<%} %>
	
	<%for(int i=0; i<list.size(); i++) {%>
		<%=i+1 %>.<%=list.get(i) %><br>
	<%} %>

</body>
</html>