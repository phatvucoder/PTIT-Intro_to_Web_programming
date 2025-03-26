<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
			<th>Họ và tên</th>
			<th>Giới tính</th>
			<th>Phòng</th>
		</tr>
		<c:forEach var="s" items="${staffs}">
			<tr>
				<td>${s.id}</td>
				<td>${s.name}</td>
				<td>${s.gender ? 'Nam' : 'Nữ'}</td>
				<td>${s.depart.name}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>