<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${ pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
	
	    <!-- link 선언 --> 
	    <link rel="stylesheet" type="text/css" href="${path}/resources/dist/css/style_login.css"> 
	    <link rel="stylesheet" type="text/css" href="${path}/resources/dist/css/style.css">
	    
		<title>
	    PayDay Card Enrollment
	    </title>
	</head>
	<body>
	<%! String id; %>
		<%
			id = request.getParameter("user_id");
			if (id == null) {
			%>
				로그인 되지 않은 사용자는 등록할 수 없습니다.
			<% } else {
		%>
		<form class="signUp" id="signupForm" action="enroll" method="post">
		   <h1 class="signUpTitle">PayDay</h1>
		   <input name="user_id" type="text" value=<%=id%> class="signUpInput" readonly hidden>
		   카드 번호 : <input name="card_no" type="text" class="signUpInput" placeholder="카드 번호를 입력해주세요" autofocus required>
		   카드 cvc : <input name="card_cvc" type="text" class="signUpInput" placeholder="카드 cvc를 입력해주세요">
		   카드 유효기간 : <input name="card_duration" type="text" class="signUpInput" placeholder="카드 유효기간을 입력해주세요">
		   카드 비밀번호 : <input name="card_pw" type="password" class="signUpInput" placeholder="카드 비밀번호를 입력해주세요">
		   카드 잔액 : <input name="card_money" type="text" class="signUpInput" placeholder="잔액을 입력해주세요">
		   <input type="submit" value="Enrollment" class="signUpButton">
		</form>
		<% } %>
	</body>
</html>