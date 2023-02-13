<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title> 파일 업로드 </title>
	</head>
	
	<body>
		<h2>1개 파일 업로드</h2>
		<form id="fileUploadForm" method="post" action="<c:url value='/fileUpload'/>" enctype="multipart/form-data">
			파일 : <input type="file" id="uploadFlie" name="uploadFile">
			<input type="submit" value="업로드">
		</form>
		<hr>
		<h2>여러 파일 업로드 </h2>
		<form id="fileUploadFormMulti" method="post" action="<c:url value='/fileUploadMultiple'/>" enctype="multipart/form-data">
			파일 : <input type="file" id="uploadFliemulti" name="uploadFileMulti" multiple="multiple">
			<input type="submit" value="업로드">
		</form><br>
		<hr>
		<h2>이름 그대로 파일 업로드 </h2>
		<form id="fileOriginalNameUploadForm" method="post" action="<c:url value='/fileOriginalNameUpload'/>" enctype="multipart/form-data">
			파일 : <input type="file" id="uploadFliOrigin" name="uploadFileOrigin">
			<input type="submit" value="업로드">
		</form><br>
		<a href="<c:url value='/'/>">메인 화면으로 이동</a>	
	</body>
</html>