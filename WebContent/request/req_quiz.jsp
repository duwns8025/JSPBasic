<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
	1.form를 이용해서 post형식으로 이름, 국,영,수 값을 입력받습니다(태그에서는 반드시 값을 입력하도록)
	2.req_quiz_result.jsp로 전송
	3.해당 페이지에서 평균,합계를 구해서, 80이상 =고득점, 60이상=중간, 60아래=저득점 출력
	
	required - 필수
	pattern - 값의 정규표현식
	 -->
	 
	 <form action="req_quiz_result.jsp" method="post">
	 	국어:<input type=text name=korea pattern="[0-9]{1,2}" required><br>
	 	영어:<input type=text name=eng pattern="[0-9]{1,2}" required><br>
	 	수학:<input type=text name=math pattern="[0-9]{1,2}" required><br>
	 	<input type="submit" value="입력">
	 	<input type="reset" value="취소">
	 </form>
	 
</body>
</html>