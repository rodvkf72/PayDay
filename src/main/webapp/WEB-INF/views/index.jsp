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
	    PayDay Login
	    </title>
	</head>
	<body>
		
		
<div id="wrapper">


  <div id="head_contents">
	<div style="position:absolute; left:270; top:180;">PayDaymain</div>
	

  </div>
 <!-- <form action = "XXXXX.jsp "method ="get" > -->
    <div id = "right_sidebar">
    
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
			<input name="user_id" type="text" value=<%=id%> hidden>
			<input type="submit" value="로그인" class="signUpButton">
		</form>
		
		<%
			} else {
		%>
		기본 페이지 입니다.
		<br>
		사용자 : 회원 &emsp; ${ cardMoney }
		<form action='fix_info' method="post">
			<input name="user_id" type="text" value=<%=id%> hidden>
			<input type="submit" value="정보수정" class="signUpButton" style="width: 100px">
		</form>
		<form action='card_enroll' method="post">
			<input name="user_id" type="text" value=<%=id%> hidden>
			<input type="submit" value="카드등록" class="signUpButton" style="width: 100px">
		</form>
		<% } %>

<!-- 
		<p id = "user_id" class = "null">PayDay90 <p> 
		<p id = "card_money" class = "null">50000<p>
		<button type="button" class="navyBtn" onClick="location.href='https://ovenapp.io/project/rXHhjYPLfQqYQtP2ZIR2xOEDW812vGLh#culK3'">회원정보</button>
 -->

		<!-- 나중에 이걸로 고치기
		<li><%= request.getParameter("user_id")%></li>
		<li><%= request.getParameter("card_money")%></li>
		-->
	
   </form>	

 </div>

  <!-- goods첫번째 줄 -->
   <div id = "body_contents_main">
	<c:forEach items="${ list }" var="item">
		
	<div id = "body_contents1">
	<div id = "goods">
	

	<a href="http://item.gmarket.co.kr/Item?goodscode=1171404569&amp;ver=637419214621165498" onclick="pdsClickLog('200000680', 'Item', {'ASN': 1, 'goodsCode': '1171404569'});"><img class="lazy" src="https://snpi.dell.com/snp/images/products/large/ko-kr~570-AAMO_V2/570-AAMO_V2.jpg"  width="210" height="210"  alt="null" style="display: block;"></a>

<a class="item_name" href="http://item.gmarket.co.kr/Item?goodscode=1171404569&amp;ver=637419214621165498" onclick="pdsClickLog('200000680', 'Item', {'ASN': 1, 'goodsCode': '1171404569'});"><c:out value="${ item.goodsName }"></c:out></a>

<div class="goods_price"><span><span><c:out value="${ item.goodsPrice }"></c:out>원</span></span></div>

<button type="button" class="navyBtn" onClick="location.href='goods?goods_no=<c:out value="${ item.goodsNo }"></c:out>'">구매하기</button>	
	</div>
	</div>
	</c:forEach>


	<div id = "body_contents1">
	    <div id = "goods">
<a href="http://item.gmarket.co.kr/Item?goodscode=1171404569&amp;ver=637419214621165498" onclick="pdsClickLog('200000680', 'Item', {'ASN': 1, 'goodsCode': '1171404569'});"><img class="lazy" src="https://openimage.interpark.com/goods_image/1/7/7/0/7473111770s.jpg"
  width="210" height="210"  alt="null" style="display: block;"></a>


<a class="item_name" href="http://item.gmarket.co.kr/Item?goodscode=1171404569&amp;ver=637419214621165498" onclick="pdsClickLog('200000680', 'Item', {'ASN': 1, 'goodsCode': '1171404569'});">피지뽑기</a>

<div class="goods_price"><span><span>6000원</span></span></div>

<button type="button" class="navyBtn" onClick="location.href='https://namu.wiki/w/%EB%A7%88%EC%9A%B0%EC%8A%A4'">구매하기</button>	
	</div>
	</div>


	<div id = "body_contents1">
		<div id = "goods">

	<a href="http://item.gmarket.co.kr/Item?goodscode=1171404569&amp;ver=637419214621165498" onclick="pdsClickLog('200000680', 'Item', {'ASN': 1, 'goodsCode': '1171404569'});"><img class="lazy" src="https://lh3.googleusercontent.com/proxy/HuTRd9innsTeoEk5h4T4zuZDV-erIxratgHLv1hAej7eUjpnACPPX8nDZWXw-VWZgAr1seyUdpmrTUClCQh-B22ZQxSZREPYfFEEl3iSaBv5ARIqRtY"  width="210" height="210"  alt="null" style="display: block;"></a>

<a class="item_name" href="http://item.gmarket.co.kr/Item?goodscode=1171404569&amp;ver=637419214621165498" onclick="pdsClickLog('200000680', 'Item', {'ASN': 1, 'goodsCode': '1171404569'});">아귀</a>

<div class="goods_price"><span><span>40000원</span></span></div>

<button type="button" class="navyBtn" onClick="location.href='https://namu.wiki/w/%EB%A7%88%EC%9A%B0%EC%8A%A4'">구매하기</button>	
	
		
	</div>
	</div>


	<div id = "body_contents1">
	<div id = "goods">

		


	<a href="http://item.gmarket.co.kr/Item?goodscode=1171404569&amp;ver=637419214621165498" onclick="pdsClickLog('200000680', 'Item', {'ASN': 1, 'goodsCode': '1171404569'});"><img class="lazy" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTImHikafUJUbh5MhaSep15nsOldy4zEAirMg&usqp=CAU"  width="210" height="210"  alt="null" style="display: block;"></a>

<a class="item_name" href="http://item.gmarket.co.kr/Item?goodscode=1171404569&amp;ver=637419214621165498" onclick="pdsClickLog('200000680', 'Item', {'ASN': 1, 'goodsCode': '1171404569'});">루왁커피</a>

<div class="goods_price"><span><span>200000원</span></span></div>

<button type="button" class="navyBtn" onClick="location.href='https://namu.wiki/w/%EB%A7%88%EC%9A%B0%EC%8A%A4'">구매하기</button>		

	</div>
	</div>

	<div id = "body_contents1">
	<div id = "goods">
		
	
	<a href="http://item.gmarket.co.kr/Item?goodscode=1171404569&amp;ver=637419214621165498" onclick="pdsClickLog('200000680', 'Item', {'ASN': 1, 'goodsCode': '1171404569'});"><img class="lazy" src="https://image.yes24.com/momo/TopCate2145/MidCate4/214437096.jpg"  width="210" height="210"  alt="null" style="display: block;"></a>

<a class="item_name" href="http://item.gmarket.co.kr/Item?goodscode=1171404569&amp;ver=637419214621165498" onclick="pdsClickLog('200000680', 'Item', {'ASN': 1, 'goodsCode': '1171404569'});">필통</a>

<div class="o-price"><span><span>2000원</span></span></div>

<button type="button" class="navyBtn" onClick="location.href='https://namu.wiki/w/%EB%A7%88%EC%9A%B0%EC%8A%A4'">구매하기</button>	

	</div>
	</div>

</div>
    <!-- goods두번째 줄 -->

	<!-- goods첫번째 줄 -->
   <div id = "body_contents_main">

	<div id = "body_contents1">
	<div id = "goods">


	<a href="http://item.gmarket.co.kr/Item?goodscode=1171404569&amp;ver=637419214621165498" onclick="pdsClickLog('200000680', 'Item', {'ASN': 1, 'goodsCode': '1171404569'});"><img class="lazy" src="https://image.auction.co.kr/itemimage/19/34/b4/1934b420f6.jpg"  width="210" height="210"  alt="null" style="display: block;"></a>

<a class="item_name" href="http://item.gmarket.co.kr/Item?goodscode=1171404569&amp;ver=637419214621165498" onclick="pdsClickLog('200000680', 'Item', {'ASN': 1, 'goodsCode': '1171404569'});">A4 100매</a>

<div class="o-price"><span><span>12000원</span></span></div>

<button type="button" class="navyBtn" onClick="location.href='https://namu.wiki/w/%EB%A7%88%EC%9A%B0%EC%8A%A4'">구매하기</button>		

	</div>
	</div>
	<div id = "body_contents1">
	
	<div id = "goods">


	<a href="http://item.gmarket.co.kr/Item?goodscode=1171404569&amp;ver=637419214621165498" onclick="pdsClickLog('200000680', 'Item', {'ASN': 1, 'goodsCode': '1171404569'});"><img class="lazy" src="https://thumbnail10.coupangcdn.com/thumbnails/remote/230x230ex/image/vendor_inventory/d036/5e1299cfb4b8245847ad65e662a7296a0c9a7990dec966072392755c41fa.jpg"  width="210" height="210"  alt="null" style="display: block;"></a>

<a class="item_name" href="http://item.gmarket.co.kr/Item?goodscode=1171404569&amp;ver=637419214621165498" onclick="pdsClickLog('200000680', 'Item', {'ASN': 1, 'goodsCode': '1171404569'});">젤리샤프</a>

<div class="o-price"><span><span>15000원</span></span></div>

<button type="button" class="navyBtn" onClick="location.href='https://namu.wiki/w/%EB%A7%88%EC%9A%B0%EC%8A%A4'">구매하기</button>		

	</div>
	</div>

	<div id = "body_contents1">

	<div id = "goods">


	<a href="http://item.gmarket.co.kr/Item?goodscode=1171404569&amp;ver=637419214621165498" onclick="pdsClickLog('200000680', 'Item', {'ASN': 1, 'goodsCode': '1171404569'});"><img class="lazy" src="https://www.hanyul.com/kr/ko/product/__icsFiles/afieldfile/2020/01/20/hand_cream_seoritae_new.jpg"  width="210" height="210"  alt="null" style="display: block;"></a>

<a class="item_name" href="http://item.gmarket.co.kr/Item?goodscode=1171404569&amp;ver=637419214621165498" onclick="pdsClickLog('200000680', 'Item', {'ASN': 1, 'goodsCode': '1171404569'});">핸드크림</a>

<div class="o-price"><span><span>3000원</span></span></div>

<button type="button" class="navyBtn" onClick="location.href='https://namu.wiki/w/%EB%A7%88%EC%9A%B0%EC%8A%A4'">구매하기</button>		

	</div>
	</div>

	<div id = "body_contents1">

	<div id = "goods">


	<a href="http://item.gmarket.co.kr/Item?goodscode=1171404569&amp;ver=637419214621165498" onclick="pdsClickLog('200000680', 'Item', {'ASN': 1, 'goodsCode': '1171404569'});"><img class="lazy" src="https://m.pendepot.co.kr/web/product/big/201710/4227_shop1_693038.jpg"  width="210" height="210"  alt="null" style="display: block;"></a>

<a class="item_name" href="http://item.gmarket.co.kr/Item?goodscode=1171404569&amp;ver=637419214621165498" onclick="pdsClickLog('200000680', 'Item', {'ASN': 1, 'goodsCode': '1171404569'});">지우개</a>

<div class="o-price"><span><span>1000원</span></span></div>

<button type="button" class="navyBtn" onClick="location.href='https://namu.wiki/w/%EB%A7%88%EC%9A%B0%EC%8A%A4'">구매하기</button>		

	</div>
	</div>

	<div id = "body_contents1">

	<div id = "goods">


	<a href="http://item.gmarket.co.kr/Item?goodscode=1171404569&amp;ver=637419214621165498" onclick="pdsClickLog('200000680', 'Item', {'ASN': 1, 'goodsCode': '1171404569'});"><img class="lazy" src="https://image.auction.co.kr/itemimage/18/de/4c/18de4cb7b6.jpg"  width="210" height="210"  alt="null" style="display: block;"></a>

<a class="item_name" href="http://item.gmarket.co.kr/Item?goodscode=1171404569&amp;ver=637419214621165498" onclick="pdsClickLog('200000680', 'Item', {'ASN': 1, 'goodsCode': '1171404569'});">의자</a>

<div class="o-price"><span><span>200000원</span></span></div>

<button type="button" class="navyBtn" onClick="location.href='https://namu.wiki/w/%EB%A7%88%EC%9A%B0%EC%8A%A4'">구매하기</button>		

	</div>

	</div>

</div>
    <!-- goods두번째 줄 -->
</div>
		
	</body>
</html>