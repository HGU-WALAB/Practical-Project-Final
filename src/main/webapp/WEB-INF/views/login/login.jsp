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


    <%--font awesome--%>
    <script src="https://kit.fontawesome.com/e879e74340.js" crossorigin="anonymous"></script>
    <%--boot strap 5--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

    <style>
        body{
            /*background-color: #ffcf00;*/
            background-color: #ffcf00;
        }
        #title{
            padding-left : 5px;
            padding-bottom: 5px;
            font-size: 25px;
            font-weight: bold;
            color: white;

        }

        #topbar{
            background-color: black;
        }
    #login{
        color: darkblue;
        margin: 0 auto;
        width: 70%;
        background-color: white;
        margin-top: 50px;
        align-content: center;
        text-align: center;
        border-radius: 50%;
    }
    #logo{
        margin: 20px;
    }
    </style>
</head>
<body>

<%--<nav class="navbar navbar-light" id="topbar">--%>
<%--    <div class="container-fluid">--%>
<%--        <a class="navbar-brand" href="#">--%>
<%--            <img src="../img/pokemongo.jpeg" alt="" width="50" height="34" class="d-inline-block align-text-top">--%>
<%--            <Label id="title">Login</Label>--%>
<%--        </a>--%>
<%--    </div>--%>
<%--</nav>--%>

<form action="loginOk" method="post">

    <div id="login">
        <img id="logo" src="../img/pokemongo.jpeg" width="400" />
        <div style="margin: 10px;"><i class="fa-solid fa-user"></i> <span style="font-weight: bold">User ID:</span>  <input style="border: 3px solid darkblue" type ="text" name="userid"/></div>
        <div ><i class="fa-regular fa-lock"></i> <span style="font-weight: bold">Password:</span>  <input type="password" name="password" style="border: 3px solid darkblue"/></div>
        <button type="submit" class="btn btn-dark" style="margin: 10px; width: 100px;background-color: darkblue" >login</button>
    </div>
</form>
</body>
</html>
