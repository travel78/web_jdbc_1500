<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
<body>
<h1>Welcome user ${user}</h1>

<form class="form-inline " action="/save" method="post">
    <div class="form-group">
        <label for="email">Name:</label>
        <input type="text" name="username" class="form-control" id="email">
    </div>
    <div class="form-group">
        <label for="pwd">Password:</label>
        <input type="text" name="password" class="form-control" id="pwd">
    </div>

    <button type="submit" class="btn btn-default">Відправити</button>
</form>
<hr>


<div class="container ">
    <table class="table table-striped">
        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Password</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${users}" var="user">
            <tr>
                <td>${user.id}</td>
                <td>${user.name}</td>
                <td>${user.password}</td>
            </tr>

        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
