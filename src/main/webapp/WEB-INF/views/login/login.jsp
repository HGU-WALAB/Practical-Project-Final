<%--
  Created by IntelliJ IDEA.
  User: ian
  Date: 2022/12/06
  Time: 9:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Login Page</h2>
<img src="../img/pokemongo.jpeg" width="300" />
<form action="loginOk" method="post">

    <div><label>User ID: </label> <input type ="text" name="userid"/></div>
    <div><label>Password: </label> <input type="password" name="password"/></div>
    <button type="submit">login</button>
</form>
</body>
</html>
