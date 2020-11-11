<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	/*
	1. 아이,비번, 닉 을 받습니다
	2. 아디와 비번이 동일하면 아디정보,이름정보를 저장하는 세션을 생성
	   session_welcome페이지로 이동해서 id(이름) 님 환영합니다
	3. 틀린경우는 로그인 페이지로
	*/
	request.setCharacterEncoding("utf-8");
	String id=request.getParameter("id");
	String pw=request.getParameter("pw");
	String nick=request.getParameter("nick");
	
	
	
	if(id.equals(pw)){
		session.setAttribute("id", id);
		session.setAttribute("nick", nick);
		response.sendRedirect("session_welcome.jsp");
	}else{
		
%>		
	<script type="text/javascript">
		alert("아이디 비번 확인하십쇼");
		location.href="session_login.jsp"; //redirect와 같은기능
	</script>
<% 	

		//response.sendRedirect("session_login.jsp");
	}
	
%>
