<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>상품 검색</title>
		<style>
			#wrap{
				margin:0 auto;
				width: 100%;
				text-align: center;
			}
			
			table{
				margin:0 auto;
				width: 800px;
			}
			
			table th{ 
				background-color: skyblue;
			}
		</style>
		<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
		<script src="<c:url value='/js/productSearch3.js'/>"></script>
	</head>
	<body>
		<div id="wrap">
		<h3>상품 검색</h3>
		<form id="prdSearchFrm">
			<select id="type" name="type">
				<option value="">검색 조건 선택</option>
				<option value="prdName">상품명</option>
				<option value="prdCompany">제조회사</option>
			</select>
			<input type="text" name="keyword">
			<input type="submit" value="검색">
		</form>
			<a href="<c:url value='/'/>">메인 화면으로 이동</a><br><br>
		<!-- 검색 결과 출력  -->
		<div id="searchResultBox"></div>
		</div>
	</body>
</html>





