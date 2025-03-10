<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Spring MVC</title>
    <base href="${pageContext.servletContext.contextPath}/">
    <style>
        li {
            list-style: none;
            line-height: 25px;
        }
        li>label {
            display: inline-block;
            text-align: right;
            width: 110px;
            font-variant: small-caps;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <h1>EL & JSTL</h1>

    <!-- Lấy từ bean -->
    <ul>
        <li><label>Họ và tên:</label> ${bean.name}</li>
        <li><label>Điểm TB:</label> ${bean.mark}</li>
        <li><label>Chuyên ngành:</label> ${bean.major}</li>
    </ul>

    <!-- Lấy từ list (phần tử đầu tiên) -->
    <ul>
        <li><label>Họ và tên:</label> ${list[0].name}</li>
        <li><label>Điểm TB:</label> ${list[0].mark}</li>
        <li><label>Chuyên ngành:</label> ${list[0].major}</li>
    </ul>

    <!-- Lấy từ map (theo key "KietLPT") -->
    <ul>
        <li><label>Họ và tên:</label> ${map.KietLPT.name}</li>
        <li><label>Điểm TB:</label> ${map.KietLPT.mark}</li>
        <li><label>Chuyên ngành:</label> ${map.KietLPT.major}</li>
    </ul>
    
    <h1>EL & JSTL</h1>

    <!-- Sinh viên từ bean -->
    <ul>
        <li><label>Họ và tên:</label> ${bean.name}</li>
        <li><label>Điểm TB:</label> ${bean.mark}</li>
        <li><label>Chuyên ngành:</label> ${bean.major}</li>

        <c:if test="${bean.mark >= 9}">
            <li><label>Danh hiệu:</label> ONG VÀNG</li>
        </c:if>
    </ul>

    <!-- Sinh viên từ list -->
    <ul>
        <li><label>Họ và tên:</label> ${list[0].name}</li>
        <li><label>Điểm TB:</label> ${list[0].mark}</li>
        <li><label>Chuyên ngành:</label> ${list[0].major}</li>

        <c:if test="${list[0].mark >= 9}">
            <li><label>Danh hiệu:</label> ONG VÀNG</li>
        </c:if>
    </ul>

    <!-- Sinh viên từ map (Key = "KietLPT") -->
    <ul>
        <li><label>Họ và tên:</label> ${map.KietLPT.name}</li>
        <li><label>Điểm TB:</label> ${map.KietLPT.mark}</li>
        <li><label>Chuyên ngành:</label> ${map.KietLPT.major}</li>

        <c:if test="${map.KietLPT.mark >= 9}">
            <li><label>Danh hiệu:</label> ONG VÀNG</li>
        </c:if>
    </ul>
    
    <h1>EL & JSTL</h1>
    
	<ul>
	    <li><label>Họ và tên:</label> ${bean.name}</li>
	    <li><label>Điểm TB:</label> ${bean.mark}</li>
	    <li><label>Chuyên ngành:</label> ${bean.major}</li>
	
	    <c:if test="${bean.mark >= 9}">
	        <li><label>Danh hiệu:</label> ONG VÀNG</li>
	    </c:if>
	
	    <li><label>Xếp loại:</label>
	        <c:choose>
	            <c:when test="${bean.mark < 5}">YẾU</c:when>
	            <c:when test="${bean.mark < 6.5}">TRUNG BÌNH</c:when>
	            <c:when test="${bean.mark < 7.5}">KHÁ</c:when>
	            <c:when test="${bean.mark < 9}">GIỎI</c:when>
	            <c:otherwise>XUẤT SẮC</c:otherwise>
	        </c:choose>
	    </li>
	</ul>
	
	<ul>
	    <li><label>Họ và tên:</label> ${list[0].name}</li>
	    <li><label>Điểm TB:</label> ${list[0].mark}</li>
	    <li><label>Chuyên ngành:</label> ${list[0].major}</li>
	
	    <c:if test="${list[0].mark >= 9}">
	        <li><label>Danh hiệu:</label> ONG VÀNG</li>
	    </c:if>
	
	    <li><label>Xếp loại:</label>
	        <c:choose>
	            <c:when test="${list[0].mark < 5}">YẾU</c:when>
	            <c:when test="${list[0].mark < 6.5}">TRUNG BÌNH</c:when>
	            <c:when test="${list[0].mark < 7.5}">KHÁ</c:when>
	            <c:when test="${list[0].mark < 9}">GIỎI</c:when>
	            <c:otherwise>XUẤT SẮC</c:otherwise>
	        </c:choose>
	    </li>
	</ul>
	
	<ul>
	    <li><label>Họ và tên:</label> ${map.KietLPT.name}</li>
	    <li><label>Điểm TB:</label> ${map.KietLPT.mark}</li>
	    <li><label>Chuyên ngành:</label> ${map.KietLPT.major}</li>
	
	    <c:if test="${map.KietLPT.mark >= 9}">
	        <li><label>Danh hiệu:</label> ONG VÀNG</li>
	    </c:if>
	
	    <li><label>Xếp loại:</label>
	        <c:choose>
	            <c:when test="${map.KietLPT.mark < 5}">YẾU</c:when>
	            <c:when test="${map.KietLPT.mark < 6.5}">TRUNG BÌNH</c:when>
	            <c:when test="${map.KietLPT.mark < 7.5}">KHÁ</c:when>
	            <c:when test="${map.KietLPT.mark < 9}">GIỎI</c:when>
	            <c:otherwise>XUẤT SẮC</c:otherwise>
	        </c:choose>
	    </li>
	</ul>
    

</body>
</html>
