<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//올바른 인증값을 적은 경우는 reverse.jsp로 이동
	//올바른 인증값을 적은 경우는 authTN이름으로 인증성공세션을 생성.
	//올바르지 않은 경우는 다시 인증페이지로
	

	request.setCharacterEncoding("utf-8");
	String auth=(String)session.getAttribute("auth");
	
	String code=request.getParameter("code");
	
	if(auth.equals(code)){
		session.setAttribute("authTN", "인증성공");
		response.sendRedirect("reverse.jsp");
	}else{
		response.sendRedirect("auth.jsp");
	}
	
%>
