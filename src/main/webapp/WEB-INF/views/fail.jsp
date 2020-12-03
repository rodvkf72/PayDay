<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Fail</title>
</head>
<body>
	아이디 또는 비밀번호를 확인하세요.
	<button id="btn" type="button" value="취소" onclick="history.back()" hidden></button>
	<script>
		var btn = document.getElementById('btn');
        setTimeout(function() {
            btn.click();
        }, 2000);
    </script>
</body>
</html>