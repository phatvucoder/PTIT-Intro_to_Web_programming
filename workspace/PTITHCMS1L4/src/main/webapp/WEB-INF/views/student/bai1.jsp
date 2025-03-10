<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Spring MVC</title>
    <base href="${pageContext.servletContext.contextPath}/">
    <style>
        div {
            display: inline-block;
            text-align: center;
            margin: 5px;
            padding: 5px;
            border: 1px dotted orangered;
            border-radius: 5px;
        }
        
        img {
	        width: 150px;
	        height: 200px;
	        object-fit: cover;
	        border-radius: 10px;
    	}
    </style>
</head>
<body>
    <h1>EL & JSTL</h1>
    
<%--     <div>
        <img src="${photo}">
        <br>
        <strong>${applicationScope.name}</strong>
        <em>${salary * level}</em>
    </div>

    <div>
        <img src="${photo}">
        <br>
        <strong>${applicationScope.name}</strong>
        <em>${salary * level}</em>
    </div>

    <div>
        <img src="${photo}">
        <br>
        <strong>${applicationScope.name}</strong>
        <em>${salary * level}</em>
    </div> --%>
    
    <!-- ServletContext -->
    <div>
        <img src="${applicationScope.photo1}">
        <br>
        <strong>${applicationScope.name1}</strong>
        <br>
        <em>${sessionScope.salary * applicationScope.level1}</em>
    </div>

    <!-- HttpSession -->
    <div>
        <img src="${sessionScope.photo2}">
        <br>
        <strong>${sessionScope.name2}</strong>
        <br>
        <em>${sessionScope.salary * sessionScope.level2}</em>
    </div>

    <!-- HttpServletRequest -->
    <div>
        <img src="${requestScope.photo3}">
        <br>
        <strong>${requestScope.name3}</strong>
        <br>
        <em>${sessionScope.salary * requestScope.level3}</em>
    </div>
</body>
</html>