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
	    PayDay Simple Card Enroll Page
	    </title>
	</head>
	<body>
	<% request.setCharacterEncoding("utf-8"); %>
		<%! String id; %>
		<% id = request.getParameter("user_id");%>
		<form class="signUp" id="signupForm" action="card_simple" method="post">
		   <h1 class="signUpTitle">PayDay</h1>
		   <input name="user_id" type="hidden" class="signUpInput" value="<%=id%>">
		   <input name="simple_mean" type="hidden" class="signUpInput" value="simple">
		   <b>계정 비밀번호 확인</b>
		   <input name="user_pw" type="password" class="signUpInput" placeholder="로그인 중인 아이디의 비밀번호를 입력해주세요." autofocus required>
		   <br>
		   <br>
		   <b>간편결제로 등록할 비밀번호</b><input name="simple_pw" type="password" class="signUpInput" required>
		   <br>
		   <br>
		   <input type="submit" value="등록" class="signUpButton">
		</form>
	</body>
</html>