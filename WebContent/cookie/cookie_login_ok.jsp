<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	/*
	1.아이디, 비밀번호를 받습니다.
	2.id = abc, pw=1234라면 로그인 성공이라고 간주 (user_id,id)를 저장하는 쿠기생성를 생성하고
	cookie_welcome페이지로 리다이렉트
	3.만약 아이디와 비밀번호가 다르다면 , 다시 로그인페이지로 리다이렉트
	4.welcome페이지 에서는 쿠키값을 꺼내서 id님 환영합니다
	
	*/
	request.setCharacterEncoding("utf-8");
	String id=request.getParameter("id");
	String pw=request.getParameter("pw");
	String ch=request.getParameter("idcheck");
	
	
	
	if(id.equals("abc") && pw.equals("1234")){
		
		Cookie coo = new Cookie("user_id",id);
		coo.setMaxAge(10);
		
		response.addCookie(coo);
		
		if(ch != null){
			Cookie coo2 = new Cookie("ck",id);
			coo2.setMaxAge(60*60*24);
			response.addCookie(coo2);
		}
		
		response.sendRedirect("cookie_welcome.jsp");
		
		
	}else{
		
		response.sendRedirect("cookie_login.jsp");			
		
		
	}
	
%>    
