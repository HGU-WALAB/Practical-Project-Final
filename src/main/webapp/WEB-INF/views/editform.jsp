<%@ page language="java" contentType="text/html; charset=UTF-8"
		 isELIgnored="false" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>

	<%--font awesome--%>
	<script src="https://kit.fontawesome.com/e879e74340.js" crossorigin="anonymous"></script>
	<%--boot strap 5--%>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

	<style>
		body{
			background-color: lightgrey;
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
		#edit{
			margin: 0 auto;
			align-content: center;
			width: 70%;
			margin-top: 50px;
			border: 1px solid lightgray;
			border-radius: 5%;
			text-align: left;
			padding: 30px;
			color: black;
			padding-bottom: 60px;
			font-weight: bold;
			font-size: 20px;
			background-color: white;
		}
		input{
			border: 1px solid black;
			margin-top: 5px;
		}
	</style>
</head>
<body>


<nav class="navbar navbar-light" id="topbar">
	<div class="container-fluid">
		<a class="navbar-brand" href="#">
			<img src="../img/pokemongo.jpeg" alt="" width="50" height="34" class="d-inline-block align-text-top">
			<Label id="title">Pokemon Edit</Label>
		</a>
		<span>
        <button type="button" class="btn btn-light" onclick="location.href='../list'" style="margin-right: 8px">List</button>
        <button type="button" class="btn btn-secondary" onclick="location.href='../login/logout'" style="margin-right: 20px">Logout</button>
</span>
	</div>
</nav>

<div id="edit">
<h1><img src="../img/pokeball.png" width="50" /> Edit Pokemon</h1>

<form:form modelAttribute="pokemonVO" method="POST" action="../editok" id="myForm" name="myForm" onsubmit="return validateForm()">
	<form:hidden path="pokemonID" />
	<table>
		<tr>
			<td>[ 1. CP ] </td>
			<td><form:input path="CP" id="CP"/></td>
		</tr>
		<tr><td>[ 2. Photo ] </td> <td><form:input path="photo" id="Photo"/></td></tr>
		<tr><td>[ 3. PokemonName ] </td> <td><form:input path="pokemonName" id="PokemonName"/></td></tr>
		<tr><td>[ 4. Gender ] </td><td><form:input path="gender" id="Gender"/></td></tr>
		<tr><td>[ 5. Age ] </td><td><form:input path="age" id="Age"/></td></tr>
		<tr><td>[ 6. Weight ] </td><td><form:input path="weight" id="Weight"/></td></tr>
		<tr><td>[ 7. Habitat ] </td><td><form:input path="habitat" id="Habitat"/></td></tr>
		<tr><td>[ 8. Characteristic ] </td><td><form:input path="characteristic" rows="5" cols="40" id="Characteristic"/></td></tr>
		<tr><td>[ 9. Are you sure you want to catch this Pokémon? ]</td> <td><input type="checkbox" style="margin-left: 10px" id="chk" checked></td></tr>
	</table>

	<div style="float: right">
		<button class="btn btn-dark" type="submit" style="margin-right: 8px">Edit</button>
		<button type="button" class="btn btn-secondary" onclick="location.href='../list'" >Cancel</button>
	</div>
</div>

</form:form>


<script>
	function validateForm() {
		var cp = document.getElementById("CP");
		var photo = document.getElementById("Photo");
		var name = document.getElementById("PokemonName");
		var gender = document.getElementById("Gender");
		var age = document.getElementById("Age");
		var weight = document.getElementById("Weight");
		var habitat = document.getElementById("Habitat");
		var characteristic = document.getElementById("Characteristic");
		var agree = document.getElementById("chk");

		if(cp.value == "") {
			alert("CP 작성을 완료해주세요..!");
			cp.focus();
			return false;
		}
		if(photo.value == "") {
			alert("사진 작성을 완료해주세요..!");
			photo.focus();
			return false;
		}
		if(name.value == "") {
			alert("이름 작성을 완료해주세요..!");
			name.focus();
			return false;
		}
		if(gender.value == "") {
			alert("성별 작성을 완료해주세요..!");
			gender.focus();
			return false;
		}
		if(age.value == "") {
			alert("나이 작성을 완료해주세요..!");
			age.focus();
			return false;
		}
		if(weight.value == "") {
			alert("몸무게 작성을 완료해주세요..!");
			weight.focus();
			return false;
		}
		if(habitat.value == "") {
			alert("서식지 작성을 완료해주세요..!");
			habitat.focus();
			return false;
		}
		if(characteristic.value == "") {
			alert("특성 작성을 완료해주세요..!");
			characteristic.focus();
			return false;
		}

		if(!agree.checked){
			alert("체크 박스를 체크해주세요..!");
			agree.focus();
			return false;
		}

	}

</script>
</body>
</html>

