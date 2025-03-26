<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
<head>
    <meta charset="UTF-8"/>
    <title>Gui Email</title>
</head>
<body>
<h2>Form Gui Email</h2>

<form:form method="post" modelAttribute="mailInfo" enctype="multipart/form-data">

    <table>
        <tr>
            <td>Name:</td>
            <td><form:input path="name" placeholder="Nhap ten nguoi gui"/></td>
        </tr>
        <tr>
            <td>Recipient Mail:</td>
            <td><form:input path="recipientMail" placeholder="Nhap mail nguoi nhan"/></td>
        </tr>
        <tr>
            <td>Subject:</td>
            <td><form:input path="subject" placeholder="Nhap chu de"/></td>
        </tr>
        <tr>
            <td>Message:</td>
            <td><form:textarea path="message" placeholder="Nhap noi dung"/></td>
        </tr>
        <tr>
            <td>Upload:</td>
            <td><form:input path="file" type="file"/></td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="Send"/>
            </td>
        </tr>
    </table>

</form:form>

<c:if test="${not empty message}">
    <b style="color:green;">${message}</b>
</c:if>

</body>
</html>