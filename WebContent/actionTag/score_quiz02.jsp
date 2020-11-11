<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%


	/*
	앞에서 넘어온 폼값을 받아서 평균을 구합니다
	평균이 60이상이면 score_quiz03으로 이동해서 평균과 이름을 출력
	평균이 60이하면 score_quiz04으로 이동해서 "~님은 불합격입니다"
	조건:세션사용 노노
	*/
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String kor=request.getParameter("kor");
	String eng=request.getParameter("eng");
	String math=request.getParameter("math");
	
	int kor1=Integer.parseInt(kor);
	int eng1=Integer.parseInt(eng);
	int math1=Integer.parseInt(math);
	double avg=(double)(kor1+eng1+math1)/3;
	String avg1=String.format("%.2f",avg);
	
	RequestDispatcher rd=null;
	request.setAttribute("avg", avg1);
	if(avg>= 60){
		rd=request.getRequestDispatcher("score_quiz03.jsp");	
		rd.forward(request, response);
	}else{
		rd=request.getRequestDispatcher("score_quiz04.jsp");
		rd.forward(request, response);
		
	}
%>