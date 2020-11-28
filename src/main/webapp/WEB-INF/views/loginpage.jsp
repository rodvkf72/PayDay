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
	    
		<title>
	    PayDay Login
	    </title>
	</head>
	<body>
		<form class="signUp" id="signupForm" action="login" method="post">
		   <h1 class="signUpTitle">PayDay</h1>
		   <input name="user_id" type="text" class="signUpInput" placeholder="아이디를 입력해주세요" autofocus required>
		   <input name="user_pw" type="password" class="signUpInput" required>
		   <input type="submit" value="Login" class="signUpButton">
		</form>
	</body>
</html>