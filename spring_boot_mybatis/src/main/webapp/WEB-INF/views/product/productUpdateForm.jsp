<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>상품 정보 수정 폼</title>
		<style>
			#wrap{
				margin:0 auto;
				width: 100%;
				text-align: center;
			}
			
			table{
				margin:0 auto;
				width: 400px;
			}			
		</style>
	</head>
	<body>
		<div id="wrap">
			<h3>상품 정보 수정 폼</h3>
			<hr>
			<form method="post" action="<c:url value='/product/updateProduct' />">
				<table>
					<tr><td>상품번호 </td>
							<td><input type="text" name="prdNo" value="${prd.prdNo }" readonly></td></tr>
					<tr><td>상품명  </td>
							<td><input type="text" name="prdName"  value="${prd.prdName }" ></td></tr>
					<tr><td>가격  </td>
							<td><input type="text" name="prdPrice"   value="${prd.prdPrice }" ></td></tr>
					<tr><td>제조회사 </td>
							<td> <input type="text" name="prdCompany"   value="${prd.prdCompany }" ></td></tr>
					<tr><td>재고 </td>
							<td> <input type="text" name="prdStock"   value="${prd.prdStock }" ></td></tr>
					<tr><td>제조일 </td>
							<td> <input type="text" name="prdDate" value="<fmt:formatDate value="${prd.prdDate}"  pattern="yyyy-MM-dd" />"></td></tr>
					<tr><td colspan="2"><input type="submit" value="수정"> 
													      <input type="reset" value="취소"></td></tr>
				</table>
			</form>
			<br><br>
			<a href="<c:url value='/'/>">메인 화면으로 이동</a>
		</div>
	</body>
</html>