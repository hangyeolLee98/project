<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>로그인폼</title>
		<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
		<script src="<c:url value='/js/login.js'/>"></script>

	</head>
	<body>
	<h3>로그인</h3>
		<!-- 	id 설정 해줘야함 -->
		<form id="frmLogin" method="post" action="/mybatis/login">
		 	아이디  :<input type="text" id="user_id" name="user_id"><br>
	     	비밀번호:<input type="password" id="user_pw" name="user_pw" ><br>
	    	<input type="submit" value="로그인">  <input type="reset" value="다시입력">
	 	</form>
	</body>
</html>