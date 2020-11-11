<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<!-- form에 작성된 데이터를 서버로 전송을 할 때, 받아서 처리할 url정보를 action속성에 적습니다. -->
	
	<form action="req_get_parameter.jsp">
		<h3>회원가입 양식</h3>
		<hr/>
		아이디:<input type="text" name="id" required ><br/>
		비밀번호:<input type="password" name="pw"><br/>
		이메일:<input type="email" name="email"><br/>
		<!-- radio는 name으로 통일시켜야, 여러개의 버튼을 하나의 그룹으로 보고 다중선택이 가능합니다. -->
		전공:
		<input type="radio" name="major" value="경영">경영학
		<input type="radio" name="major" value="컴퓨터">컴퓨터
		<input type="radio" name="major" value="전기">전기전자
		<input type="radio" name="major" value="기계">기계공학<br>
		취미:
		<input type="checkbox" name="inter" value="java">자바 
		<input type="checkbox" name="inter" value="db">DB 
		<input type="checkbox" name="inter" value="jsp">JSP 
		<input type="checkbox" name="inter" value="javascript">JavaScript 
		
		<br>
		통신사:
		<select name="phone1">
			<option>SKT</option>
			<option>KT</option>
			<option>LGU+</option>
		</select>
		
		<br>
		자기소개:
		<textarea rows="5" cols="30" name="txt"></textarea>
		
		<br>
		<!-- submit은 폼안에 있는 데이터를 서버로 전송 -->
		<input type="submit" value="가입하기">
		<input type="button" value="그냥버튼">		
	</form>
</body>
</html>