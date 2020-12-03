<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="path" value="${ pageContext.request.contextPath }" />

<!DOCTYPE HTML>
<!--
	Phantom by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Phantom by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />

		<link rel="stylesheet" type="text/css" href="${path}/resources/dist/css/style_login.css"> 
	    <link rel="stylesheet" type="text/css" href="${path}/resources/dist/css/style.css">
	    
		<link rel="stylesheet" href="${path}/resources/dist/css/main.css" /> <!-- 추가된 부분 -->
		<link rel="stylesheet" href="${path}/resources/dist/css/noscript.css" /> <!-- 추가된 부분 -->
	</head>
	<body class="is-preload">
		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header">
						<div class="inner">
							<%! String id; %>
							<% request.setCharacterEncoding("utf-8"); %>
								<%
									id = request.getParameter("user_id");
									if(id == null) {
								%>
									
								기본 페이지 입니다.
								<br>
								사용자 : 비회원
								<form action='loginpage' method="post">
									<input type="hidden" name="user_id" type="text" value=<%=id%>>
									<input type="submit" value="로그인" class="signUpButton">
								</form>
								
								<%
									} else {
								%>
								기본 페이지 입니다.
								<br>
								사용자 : 회원 &emsp; 보유 금액 : ${ cardMoney }
								<br>
								<br>
								<form action='fix_info' method="post" style="display: inline;">
									<input type="hidden" name="user_id" type="text" value=<%=id %>>
									<input type="submit" value="정보수정" class="signUpButton" style="width: 200px">
								</form> &emsp;
								<form action='card_enroll' method="post" style="display: inline;">
									<input type="hidden" name="user_id" type="text" value=<%=id%>>
									<input type="submit" value="카드등록" class="signUpButton" style="width: 200px">
								</form> &emsp;
								<form action='card_del' method="post" style="display: inline;">
									<input type="hidden" name="user_id" type="text" value=<%=id%>>
									<input type="submit" value="등록해제" class="signUpButton" style="width: 200px">
								</form>
								<br>
								<br>
								<% } %>

							<!-- Nav -->
								

						</div>
					</header>

				<!-- Menu -->
					

				<!-- Main -->
					<div id="main">
						<div class="inner">
							<header>
								<h1>상품 목록<br />
							</header>
							<section class="tiles">
								<%! int count = 0; %>
								<c:forEach items="${ list }" var="item">
									<% count++; %>
									<article>
										<span class="image">
											<img src="${path}/resources/image/pic<%=count %>.jpg" alt="" />
										</span>
										<br>
										<form action="goods" method="post">
											<input name="user_id" value=<%=id%> hidden>
											<input name="goods_no" value="${ item.goodsNo }" hidden>
											<input type="submit" class="navBtn" value="구매하기">
										</form>
									</article>
								</c:forEach>
								<% count = 0; %>
							</section>
						</div>
					</div>

				<!-- Footer -->

			</div>

		<!-- Scripts -->
			<script src="${path}/resources/dist/js/jquery.min.js"></script>
			<script src="${path}/resources/dist/js/browser.min.js"></script>
			<script src="${path}/resources/dist/js/breakpoints.min.js"></script>
			<script src="${path}/resources/dist/js/util.js"></script>
			<script src="${path}/resources/dist/js/main.js"></script>

	</body>
</html>