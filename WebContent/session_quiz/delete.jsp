<%@page import="com.session.UserRepository"%>
<%@page import="com.session.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 

	if(session.getAttribute("login") == null){
		response.sendRedirect("login01.jsp");
	}
	User user=(User)session.getAttribute("login");	
	String id=user.getId();
	
	UserRepository.deleteUser(id);
	session.invalidate();
	response.sendRedirect("login01.jsp");
%>

