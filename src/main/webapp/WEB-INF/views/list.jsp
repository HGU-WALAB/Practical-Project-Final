<%@ page language="java" contentType="text/html; charset=UTF-8"
		 isELIgnored="false" pageEncoding="UTF-8" %>
<%@ page import="com.mycom.myapp.PokemonDAO, com.mycom.myapp.PokemonVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<%--font awesome--%>
		<script src="https://kit.fontawesome.com/e879e74340.js" crossorigin="anonymous"></script>
	<%--boot strap 5--%>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<%--		<link rel="stylesheet" href="${path}/resources/css/style.css"/>--%>
<title>free board</title>
<%--	<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" type="text/css">--%>
<style>
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
	.container{
		background-color: white;
	}
	#block{
		margin: 10px;
		margin-top: 30px;
		width: 300px;
		height: 400px;
		border: 5px solid gray;
		border-radius: 5%;
		background-color: white;
	}
	#block_img{
		background-color: white;
		height: 200px;
		margin-top: 50px;
		margin-bottom: 50px;
		text-align: center;
	}
	#block_text{
		color: black;
		text-align: center;

	}
	#option{
		float: right;
		width: 150px;
		margin: 5px;
		text-align: center;
		font-size: 20px;
		border: 2px solid gray;
		border-radius: 10px;
	}
	#one_line{
		margin: 10px;
		margin-top: 40px;
		margin-left: 50px;
	}

</style>

</head>
<body>


<nav class="navbar navbar-light" id="topbar">
	<div class="container-fluid">
		<a class="navbar-brand" href="#">
			<img src="./img/pokemongo.jpeg" alt="" width="50" height="34" class="d-inline-block align-text-top">
			<Label id="title">Pokemon List</Label>
		</a>
		<span>
		<button type="button" class="btn btn-light" onclick="location.href='add'" style="margin-right: 8px">Add</button>
		<button type="button" class="btn btn-secondary" onclick="location.href='login/logout'" style="margin-right: 20px">logout</button>
			</span>
	</div>
</nav>


<div id="option">
	상세보기  <img src="./img/pokeball.png" width="30" /> <br>
	수정하기  <i class="fa-solid fa-user-pen " style="font-size: 20px; margin-bottom: 5px"></i><br>
	삭제하기  <i class="fa-sharp fa-solid fa-trash" style="font-size: 20px; "></i>
</div>

<h1 id="one_line"><img src="./img/pokeball.png" width="50" /> My Pokemons </h1>

<div class="container">
	<div class="row">
<c:forEach items="${list}" var="u">

			<div class="col-md-4" id="block">
				<div id="block_img"><img src="./img/${u.getPhoto()}" width=200 /></div>

				<div id="block_text">
					<h4><a href="detail/${u.getPokemonID()}"><img src="./img/pokeball.png" width="30"></a>
						${u.getPokemonName()}</h4>
						<h4 ><span style="font-size: x-large;">★</span> CP ${u.getCP()}

						<a href="editform/${u.getPokemonID()}" style=" margin-left: 20px; font-size: 20px;color: lightgrey"><i class="fa-solid fa-user-pen "></i></a>
						<a href="deleteok/${u.getPokemonID()}" style="color: lightgrey; font-size: 20px;" ><i class="fa-sharp fa-solid fa-trash"></i></a>
						</h4>
				</div>
			</div>



</c:forEach>
	</div>
</div>
<%--<table id="list" width="90%">--%>
<%--<tr>--%>
<%--	<th>Id</th>--%>
<%--	<th>CP</th>--%>
<%--	<th>Photo</th>--%>
<%--	<th>PokemonName</th>--%>
<%--	<th>Gender</th>--%>
<%--	<th>Age</th>--%>
<%--	<th>Weight</th>--%>
<%--	<th>Habitat</th>--%>
<%--	<th>Characteristic</th>--%>
<%--	<th>Catchdate</th>--%>
<%--	<th>Detail</th>--%>
<%--	<th>Edit</th>--%>
<%--	<th>Delete</th>--%>
<%--</tr>--%>
<%--<c:forEach items="${list}" var="u">--%>
<%--	<tr>--%>
<%--		<td>${u.getPokemonID()}</td>--%>
<%--		<td>${u.getCP()}</td>--%>
<%--		<td><img src="./img/${u.getPhoto()}" width="100" /></td>--%>
<%--		<td>${u.getPokemonName()}</td>--%>
<%--		<td>${u.getGender()}</td>--%>
<%--		<td>${u.getAge()}</td>--%>
<%--		<td>${u.getWeight()}</td>--%>
<%--		<td>${u.getHabitat()}</td>--%>
<%--		<td>${u.getCharacteristic()}</td>--%>
<%--		<td>${u.getCatchdate()}</td>--%>
<%--		<td><a href="detail/${u.getPokemonID()}">Detail</a></td>--%>
<%--		<td><a href="editform/${u.getPokemonID()}">Edit</a></td>--%>
<%--		<td><a href="deleteok/${u.getPokemonID()}">Delete</a></td>--%>
<%--	</tr>--%>
<%--</c:forEach>--%>
<%--</table>--%>
<br/>
</body>
</html>