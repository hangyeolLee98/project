<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>녹음 파일 업로드</title>
		<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
		<script src="<c:url value='/js/recordFileUpload.js'/>"></script>
	</head>
	
	<body>
		<button id="recordBtn">녹음</button>
		<button id="stopBtn">정지</button><br>
		<!-- 녹음 파일 플레이하는 audio 태그 출력  -->
		<div id="audioBox"></div>
		<br>
		<a href="<c:url value='/'/>">메인 화면으로 이동</a>		
	</body>
</html>