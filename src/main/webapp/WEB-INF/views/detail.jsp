<%@ page language="java" contentType="text/html; charset=UTF-8"
         isELIgnored="false" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>

    <%--font awesome--%>
    <script src="https://kit.fontawesome.com/e879e74340.js" crossorigin="anonymous"></script>
    <%--boot strap 5--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <meta charset="UTF-8">

    <title>Detail Form</title>



    <style>
        #topbar{
            background-color: black;
        }
        #title{
            padding-left : 5px;
            padding-bottom: 5px;
            font-size: 25px;
            font-weight: bold;
            color: white;
        }
        #detail_block{
            color: white;
            padding: 10px;
            margin:0 auto;
            margin-top: 30px;
            margin-bottom: 50px;
            width: 40%;
            height: 80%;
            text-align: center;
            border: 5px solid black;
            border-radius: 10%;
            background-color: orangered;
        }
        #characteristic{
            font-size: larger;
        }
        #photo{
            background-color: white;
            border: solid 5px black;
            margin: 10px;
        }

    </style>
</head>
<body>


<nav class="navbar navbar-light" id="topbar">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
            <img src="../img/pokemongo.jpeg" alt="" width="50" height="34" class="d-inline-block align-text-top">
            <Label id="title">Pokemon Detail</Label>
        </a>
        <span>
            <button type="button" class="btn btn-light" onclick="location.href='../list'" style="margin-right: 8px">List</button>
		<button type="button" class="btn btn-secondary" onclick="location.href='../login/logout'" style="margin-right: 20px">logout</button>
			</span>
    </div>
</nav>

<div align="center" id="detail_block">
    <div id="name">
<%--        #ffcf00--%>
        <h2 style="color: white"><span style="font-size: xxx-large;">★</span>CP ${pokemonVO.getCP() }</h2>
        <h4><img src="../img/pokeball.png" width="30" /> ${pokemonVO.getPokemonName() }</h4>
    </div>
        <div><img id="photo" src="../img/${pokemonVO.getPhoto()}" width="370" /><br></div>

    <div id="characteristic">

        <div class="row justify-content-around">
            <div class="col-5"><span style="font-weight: bold;">[Gender]</span> ${pokemonVO.getGender()}</div>
            <div class="col-5"><span style="font-weight: bold;">[Age]</span> ${pokemonVO.getAge() }</div>
        </div>
        <div class="row justify-content-around">
            <div class="col-5"><span style="font-weight: bold;">[Weight]</span> ${pokemonVO.getWeight() }</div>
            <div class="col-5"><span style="font-weight: bold;">[Habitat]</span> ${pokemonVO.getHabitat() }</div>
        </div>

        <div><span style="font-weight: bold;">[Characteristic]</span> ${pokemonVO.getCharacteristic() }</div>
        <div><span style="font-weight: bold;">[Catch Date]</span>${pokemonVO.getCatchdate() }</div>

    </div>
    <button type="button" class="btn btn-light" onclick="history.back()" style="margin: 10px;">Go Back</button>


</div>
<%--</form:form>--%>


<%--<form:form modelAttribute="pokemonVO" method="POST" action="../editok">--%>
<%--    <form:hidden path="pokemonID"/>--%>

<%--<c:forEach items="${pokemonVO}" var="u">--%>

<%--        ${u.getPokemonID()}--%>
<%--        ${u.getCP()}--%>
<%--            &lt;%&ndash;		<td>${u.getPhoto()}</td>&ndash;%&gt;--%>
<%--        <img src="./img/${u.getPhoto()}" width="100" />--%>
<%--        ${u.getPokemonName()}--%>
<%--        ${u.getGender()}--%>
<%--        ${u.getAge()}--%>
<%--        ${u.getWeight()}--%>
<%--        ${u.getHabitat()}--%>
<%--        ${u.getCharacteristic()}--%>
<%--        ${u.getCatchdate()}--%>
<%--        <a href="editform/${u.getPokemonID()}">Edit</a>--%>
<%--        <a href="deleteok/${u.getPokemonID()}">Delete</a>--%>

<%--</c:forEach>--%>

</body>
</html>