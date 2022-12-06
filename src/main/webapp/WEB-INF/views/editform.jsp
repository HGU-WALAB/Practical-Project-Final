<%@ page language="java" contentType="text/html; charset=UTF-8"     pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
</head>
<body>

<h1>Edit Form</h1>

<form:form modelAttribute="pokemonVO" method="POST" action="../editok">
	<form:hidden path="pokemonID"/>
	<table id="edit">
		<tr>
			<td>CP : </td>
			<td><form:input path="CP"/></td>
		</tr>
		<tr><td>Photo : </td> <td><form:input path="photo" /></td></tr>
		<tr><td>PokemonName : </td> <td><form:input path="pokemonName"/></td></tr>
		<tr><td>Gender : </td><td><form:input path="gender"/></td></tr>
		<tr><td>Age : </td><td><form:input path="age"/></td></tr>
		<tr><td>Weight : </td><td><form:input path="weight"/></td></tr>
		<tr><td>Habitat : </td><td><form:input path="habitat"/></td></tr>
		<tr><td>Characteristic : </td><td><form:input path="characteristic" rows="5" cols="40"/></td></tr>
	</table>
	<input type="submit" value="수정하기" >
	<input type="button" value="취소하기" onclick="history.back()">
</form:form>

</body>
</html>