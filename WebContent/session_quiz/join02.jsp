<%@page import="com.session.UserRepository"%>
<%@page import="com.session.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
	/*
	1.사용자 값을 받은 다음에 User객체를 생성하고 사용자의 입력값을 저장한 후에
	UserRepository클래스에 저장해 주세요.
	
	2.join03페이지로 이동합니다.
	*/
	request.setCharacterEncoding("utf-8");
	String id=request.getParameter("id");
	String pw = request.getParameter("pw");
	String nick = request.getParameter("nick");
	String birth = request.getParameter("birth");
	
	User user = new User(id,pw,nick,birth);
	
	
	UserRepository.method01(user);
	
	
	response.sendRedirect("join03.jsp");
	
	
	
%>

