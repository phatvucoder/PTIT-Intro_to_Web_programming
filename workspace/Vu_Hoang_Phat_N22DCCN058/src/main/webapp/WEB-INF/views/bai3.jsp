<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>Danh sách sản phẩm</title>
    <base href="${pageContext.request.contextPath}/">
    <style>
        table {
            border-collapse: collapse;
            width: 60%;
            margin: 10px auto;
        }
        th, td {
            border: 1px solid #888;
            padding: 8px;
        }
        th {
            background: #eee;
        }
    </style>
</head>
<body>
    <h2 style="text-align:center">DANH SÁCH SẢN PHẨM</h2>

    <table>
        <tr>
            <th>Số thứ tự</th>
            <th>Tên sản phẩm</th>
            <th>Giá</th>
            <th>Giảm giá</th>
            <th>Giá sau khi giảm</th>
        </tr>

        <c:forEach var="p" items="${prods}" varStatus="st">
            <tr>
                <td>${st.index}</td>
                <td>${p.name}</td>

                <td>
                    <f:formatNumber value="${p.price}" type="number" pattern="$ #,##0.00"/>
                </td>

                <td>
                    <f:formatNumber value="${p.discount}" type="percent" />
                </td>

                <td>
                    <f:formatNumber value="${p.finalPrice}" type="number" pattern="#,##0.00" />
                    &nbsp;VND
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>