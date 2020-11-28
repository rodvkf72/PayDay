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
		<%! String id; %>
		<%
			id = request.getParameter("user_id");
			if(id == null) {
		%>
		기본 페이지 입니다.
		<br>
		사용자 : 비회원
		<form action='loginpage' method="post">
			<input name="user_id" type="text" value=<%=id%> hidden>
			<input type="submit" value="로그인" class="signUpButton">
		</form>
		<%
			} else {
		%>
		기본 페이지 입니다.
		<br>
		사용자 : 회원
		<form action='fix_info' method="post">
			<input name="user_id" type="text" value=<%=id%> hidden>
			<input type="submit" value="정보수정" class="signUpButton">
		</form>
		<% } %>
	</body>
</html>