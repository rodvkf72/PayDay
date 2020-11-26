<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="path" value="${ pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
	<head>
		<meta charset="kr"> 
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
				id = "비회원";
			} else {
				id = "회원";
			}
		%>
		기본 페이지 입니다.
		<br>
		사용자 : <%=id%>
		<%
			if (id.equals("비회원")) {
		%>
		<form action='loginpage' method="get">
			<input type="submit" value="로그인" class="signUpButton">
		</form>
		<%
			} else { %>
		<form action='fix_info' method="get">
			<input type="submit" value="정보 수정" class="signUpButton">
		</form>
		<%
			}
		%>
	</body>
</html>