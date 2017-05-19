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

</body>
</html>
