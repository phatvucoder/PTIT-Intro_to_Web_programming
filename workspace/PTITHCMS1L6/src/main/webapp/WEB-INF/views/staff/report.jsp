<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table class="table table-hover">
		<tr>
			<th>Mã NV</th>
			<th>Tổng thành tích</th>
			<th>Tổng kỷ luật</th>
			<th>Tổng kết</th>
		</tr>
		<c:forEach var="a" items="${arrays}">
			<tr>
				<td>${a[0]}</td>
				<td>${a[1]}</td>
				<td>${a[2]}</td>
				<td>${a[1] * a[2]}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>