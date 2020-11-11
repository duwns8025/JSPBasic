<%@page import="java.util.Collections"%>
<%@page import="java.util.stream.Collectors"%>
<%@page import="java.util.stream.Collector"%>
<%@page import="java.util.stream.Stream"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	/*
	1.정수를 저장하는 list를 생성
	2.1~45까지 랜덤한 번호를 생성하고 리스트에 저장
	3.중복되지 않는 숫자로 6개의 번호를 저장하면 됩니다.
	4.화면에 출력
	5.set을 이용해서도 처리
	*/
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
		ArrayList<Integer> list = new ArrayList<>();
		Random ran = new Random();
		int i=0;
		a:while(i<6){
			int num=1+ran.nextInt(45);
			for(int a:list){
				if(num==a){
					continue a;		
				}
			}
			list.add(num);
			i++;
		}
		
	%>	
	<%=list %>
	<br>
	<% 
		HashSet<Integer> set = new HashSet<>();
		while(set.size()<6){
			int num2 = 1+ran.nextInt(45);
			set.add(num2);			
		}
	%>
	<%=set %>
	<br>
	<%=set.size() %>
	
	
	
	
	
	
	
	
</body>
</html>