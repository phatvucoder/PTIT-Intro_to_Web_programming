<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Xác nhận xóa User</title>
</head>
<body>
    <h2>Bạn có chắc chắn muốn xóa user: ${user.username}?</h2>
    <form action="${pageContext.request.contextPath}/user/delete/${user.username}" method="post">
        <button type="submit">Xóa</button>
        <a href="${pageContext.request.contextPath}/user/index">Hủy</a>
    </form>
</body>
</html>
