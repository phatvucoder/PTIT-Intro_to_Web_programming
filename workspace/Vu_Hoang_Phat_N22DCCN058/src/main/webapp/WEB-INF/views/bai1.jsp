<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bài 1 - Danh sách SV</title>
    <style>
        /* Tuỳ ý định dạng, ví dụ: */
        .box {
            border: 1px solid #333;
            margin: 10px 0;
            padding: 10px;
        }
        .name {
            color: red;
            font-weight: bold;
            font-size: 18px;
        }
        .mark {
            color: blue;
            font-size: 16px;
        }
        .major {
            color: orange;
            font-size: 16px;
        }
    </style>
</head>
<body>
    <h2>DANH SÁCH SINH VIÊN</h2>

<c:forEach var="sv" items="${students}">
    <div style="margin: 10px; padding: 10px; border: 1px solid #ccc;">
        
        <img src="${sv.photo}" alt="${sv.name}" style="width:150px; height:150px;" />

        <div style="color:red; font-weight:bold;">
            Họ và tên: ${sv.name}
        </div>

        <div style="color:green; font-size:16px;">
            Điểm TB: ${sv.mark}
        </div>

        <div style="color:blue; font-size:16px;">
            Chuyên ngành: ${sv.major}
        </div>

        <div style="color:gold; font-weight:bold;">
            Danh hiệu: 
            <c:choose>
                <c:when test="${sv.mark >= 9}">
                    BANG CHỦ VÕ LÂM
                </c:when>
                <c:when test="${sv.mark >= 5}">
                    BANG CHÚA TỂ
                </c:when>
                <c:otherwise>
                    ĐỆ TỬ HẠ SƠN
                </c:otherwise>
            </c:choose>
        </div>

        <div>
            <c:choose>
                <c:when test="${sv.mark >= 8}">
                    <span style="color:magenta;">Xếp loại: Nội công thâm hậu</span>
                </c:when>
                <c:when test="${sv.mark >= 5}">
                    <span style="color:orange;">Xếp loại: Nội công trung bình</span>
                </c:when>
                <c:otherwise>
                    <span style="color:gray;">Xếp loại: Nội công kém</span>
                </c:otherwise>
            </c:choose>
        </div>

    </div>

</c:forEach>
    
</body>
</html>