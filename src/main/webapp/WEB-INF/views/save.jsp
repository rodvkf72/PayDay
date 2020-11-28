<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="path" value="${ pageContext.request.contextPath }" />

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		
		<!-- link 선언 --> 
		<link rel="stylesheet" type="text/css" href="${path}/resources/dist/css/style_login.css"> 
		 
		<title>
		PayDay Fix Info
		</title>
	</head>
	
	
	<body>
	<% request.setCharacterEncoding("utf-8"); %>
		<c:forEach items="${ list }" var="item">
		    <form class="signUp" id="signupForm" action="update" method="post">
			    <h1 class="signUpTitle">PayDay</h1>
			    이름 : <input name="user_name" type="text" value=<c:out value="${ item.userName }"></c:out> class="signUpInput" autofocus required>
			    아이디 : <input name="user_id" type="text" value=<c:out value="${ item.userId }"></c:out> class="signUpInput" readonly>
			    비밀번호 : <input name="user_pw" type="password" value=<c:out value="${ item.userPw }"></c:out> class="signUpInput" required>
			    IP주소 : <input name="user_ip" type="text" value=<c:out value="${ item.userIp }"></c:out> class="signUpInput" readonly>
			    직업 : <input name="user_job" type="text" value=<c:out value="${ item.userJob }"></c:out> class="signUpInput">
			    주소지 : <input name="user_addr" type="text" value=<c:out value="${ item.userAddr }"></c:out> class="signUpInput">
			    간편결제수단 : <input name="user_relay" value=<c:out value="${ item.userRelay }"></c:out> type="text" class="signUpInput">
			    물품전달 방식 : <input name="user_means" type="text" value=<c:out value="${ item.userMeans }"></c:out> class="signUpInput">
			    
				<input type="submit" value="update" class="signUpButton">
			</form>
		</c:forEach>
	</body>
</html>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="path" value="${ pageContext.request.contextPath }" />

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta charset="UTF-8" />


<title>초간단 테이블</title>
</head>


<body>
<c:forEach items="${ list }" var="item">
 <div>

   <form  method = "post" action="update" name = "user_table">
   
    <table border="1" bordercolor = "#BDBDBD"   width = "470" height ="128" >
   
   
   <tr align="center"><!-- 성함 줄 시작 -->
       <td width = 128 height = 40 bgcolor = "#B2F7F9" >성함</td>
        <td width = 300 height = 40 bgcolor = "#F5FEFE" >
        <input name="user_name" type = "text" value = <c:out value="${ item.userName }"></c:out> readonly > 
        </td>
        
        
      
     
   </tr><!-- 성함 줄 끝 -->
    
   <tr align = "center" ><!-- 아이디 줄 시작 -->
       <td bgcolor = "#B2F7F9" >아이디</td>
       <td width = 300 height = 40 bgcolor = "#F5FEFE"> 
        <input name="user_id" type = "text" value = <c:out value="${ item.userId }"></c:out> readonly>
        </td>
        
</td>
   </tr><!-- 아이디 줄 끝 -->
    
    <tr align = "center" ><!-- 비밀번호 줄 시작 -->
       <td bgcolor = "#B2F7F9">비밀번호</td>
         <td width = 300 height = 40 bgcolor = "#F5FEFE">
         <input name="user_pw" type = "password" placeholder = "비밀번호를 입력해주세요">
        </td>
        
          <td width = 40 height = 30>
   <input type="submit" value="변경" onclick=" ';"/>
   
</td>
       
   </tr><!-- 비밀번호 줄 끝 -->
    
    <tr align = "center" ><!-- IP주소 줄 시작 -->
       <td bgcolor = "#B2F7F9">IP주소</td>
       <td width = 300 height = 40 bgcolor = "#F5FEFE">      
        <input name="user_ip" type = "text" value = <c:out value="${ item.userIp }"></c:out> readonly >
        </td>
        
       
   
  
        </td>
   </tr><!-- IP주소 줄 끝 -->
    
    <tr align = "center" ><!-- 직업 줄 시작 -->
       <td bgcolor = "#B2F7F9">직업</td>
        
       <td width = 300 height = 40 bgcolor = "#F5FEFE"> 
        <input name="user_job" type = "text" value = <c:out value="${ item.userJob }"></c:out>>
        </td>
        
          
   
   </tr><!-- 직업 줄 끝 -->
    
    
    
    <tr align = "center" ><!-- 주소지 줄 시작 -->
       <td bgcolor = "#B2F7F9">주소지</td>
        
       <td width = 300 height = 40 bgcolor = "#F5FEFE">
        <input name="user_addr" type = "text" value = <c:out value="${ item.userAddr }"></c:out>  >
        </td>
        
          
   
   </tr><!-- 주소지 줄 끝 -->
    
<tr align = "center" ><!-- 주소지 줄 시작 -->
       <td bgcolor = "#B2F7F9">주소지</td>
        
       <td width = 300 height = 40 bgcolor = "#F5FEFE">
        <input name="user_relay" type = "text" value = <c:out value="${ item.userRelay }"></c:out>  >
        </td>
        
          
   
   </tr><!-- 주소지 줄 끝 -->
   
   <tr align = "center" ><!-- 주소지 줄 시작 -->
       <td bgcolor = "#B2F7F9">주소지</td>
        
       <td width = 300 height = 40 bgcolor = "#F5FEFE">
        <input name="user_means" type = "text" value = <c:out value="${ item.userMeans }"></c:out>  >
        </td>
        
          
   
   </tr><!-- 주소지 줄 끝 -->
    </table>
   
    
    <title>정보입력 테이블</title>
    
   
   <input type="submit" value="저장"/>
   <input type="submit" value="취소" onclick="index"/>
   </form>
   </div>
   </c:forEach>
</body>
</head>

