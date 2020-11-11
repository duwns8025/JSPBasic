<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
		int a = 1;
		
		if(a >=10){
			out.println("10보다 크다");
		}else{
			out.println("10보다 작다");
		}
	%>
	<hr/>
	
	<%
		for(int i=1; i<=10; i++){
			out.println(i+"<br>"); //<br>은 브라우저에서 태그로 인식
			 
		}
	%>
	
	<hr/>
	
	
	
	
	<%
		int num=0;
		if(num>=10){
			out.println("참");
		}else{
			out.println("거짓");
		}
	%>
	
	
	
	<%if(num>=10){ %>
		<p>참</p>
	<% 	}else{%>
		<p>거짓</p>
	<%	}%>
	
	
	
	<!-- <!-- <hr/>
	구구단 3단 out.println과 ,hr태그를 사용해서 브라우저 화면에 출력 --> -->
	
	
	<% 
		for(int j=1; j<=9; j++){
			out.println("3x"+j+"="+j*3+"<br>");
		}
	%>
	
	<% for(int j=1; j<=9; j++){ %>
		<hr/>
		<p>3x<%=j%>=<%=3*j %></p>
	<% }%>
	
	<form action="">
	<%for(int i=1; i<=20; i++){%>
		<input type="checkbox" name=ck>체크<%=i %>	
	<% }%>
	</form>
	
	
</body>
</html>