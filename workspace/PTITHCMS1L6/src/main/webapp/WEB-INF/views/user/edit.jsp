<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chỉnh sửa User</title>
</head>
<body>
	<h2>Cập nhật thông tin User</h2>
	<form:form action="${pageContext.request.contextPath}/user/update" modelAttribute="user" method="post">
		<div>
			<label>Username</label>
			<form:input path="username" readonly="true"/> 
		</div>
		<div>
			<label>Password</label>
			<form:input path="password" />
		</div>
		<div>
			<label>Fullname</label>
			<form:input path="fullname" />
		</div>
		<div>
			<button class="btn btn-success">Cập nhật</button>
		</div>
	</form:form>
</body>
</html>
