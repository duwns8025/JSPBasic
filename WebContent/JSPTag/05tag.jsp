<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>	
<%!
   		//선언자와 스크립트릿의 차이
   		//선언자 - 맴버변수(누적), 메서드를 선언할때 사용
   	public int total = 0;
	public int randomNum(){
		Random	ran = new Random();
		return ran.nextInt(10);
	}
	
	
	
   		
%>
<%
	//스크립트릿 - jsp페이지 실행마다 한번씩 실행되는 코드
	//public int each =0;     	//매소드,퍼블릭등 실행안됨
	//public int method2(){
	//	return 5;
	//}
	
	//메인메서드
	int each =0;
	total++;
	each++;
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%=total %>
	<%=each %>
	<%=randomNum() %>
</body>
</html>