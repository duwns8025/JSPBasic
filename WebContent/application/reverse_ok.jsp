<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	//1.좌석정보를 받습니다
	
	
	//2.좌석정보를 저장할 리스트를 생성합니다
	//3.application에서 좌석정보가 존재하면 2번리스트에 저장
	
	
	//4.좌석정보를 비교해서 중복이 없을때 하나씩 저장해놓을 사본리스트를 생성
	//4.좌석정보와 2번에 리스트를 비교해서, 중복된 좌석이 아니라면, 사본리스트에 추가
	
	//5.사본리스트와 좌석정보가 길이가 같다면 중복이 없으므로, 2번리스트에 통째로 사본리스트를 추가
	//6.application에 같은 이름으로 저장
	
	//7.화면에 예약 성공실패의 결과를 출력해주세요
	
	
	request.setCharacterEncoding("utf-8");

	//좌석정보
	String[] arr=request.getParameterValues("seat");
	
	//2.좌석정보리스트
	ArrayList<String> two = new ArrayList<>();
	
	if(application.getAttribute("app") !=null){
		two=(ArrayList<String>)application.getAttribute("app");			
	}
	
	ArrayList<String> sabon = new ArrayList<>();
	for(String a:arr){
		if(two.contains(a)){
			two.add(a);
		}
	}
	
	
	for(String a:arr){
		if(!two.contains(a)){
			sabon.add(a);
		}
	}
	
	if(sabon.size()==arr.length){
		two.addAll(sabon);
	}
	application.setAttribute("app", two);
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<div>
		<h2>예약 결과</h2>
		예약한 좌석:
		<%for(String s: arr){ %>
			[<%=s %>]
		<%} %>
		
		<b><%=sabon.size()==arr.length?"예약성공":"예약실패" %></b>
		<button type="button" onclick="location.href=reverse.jsp">다시 예약하기</button>
	</div>
</body>
</html>
