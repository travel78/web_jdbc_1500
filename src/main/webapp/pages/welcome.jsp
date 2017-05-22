<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>welcome user ${user}</h1>
<form action="/save" method="post">
    <input type="text" name="username">
    <input type="text" name="password">
    <input type="submit">
</form>
<hr>

<c:forEach items="${users}" var="user">
    <P>${user.id} ${user.name} ${user.password}</P>
</c:forEach>

</body>
</html>
