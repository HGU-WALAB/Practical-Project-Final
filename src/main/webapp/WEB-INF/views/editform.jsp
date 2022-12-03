<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.mycom.myapp.PokemonDAO, com.mycom.myapp.PokemonVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
</head>
<body>

<%
	PokemonDAO pokemonDAO = new PokemonDAO();
//	String id=request.getParameter("");
//	PokemonVO u=pokemonDAO.getPokemon(Integer.parseInt(id));
%>

<h1>Edit Form</h1>

<form:form commandName="pokemonVO" method="POST" action="../editok">
	<form:hidden path="PokemonID"/>
	<table id="edit">
		<tr><td>CP : </td><td><form:input path="cp"/></td></tr>
		<tr><td>Photo : </td><td><form:input path="photo"/></td></tr>
		<tr><td>PokemonName : </td><td><form:input path="pokemonname"/></td></tr>
		<tr><td>Gender : </td><td><<tr><td>Age : </td><td><form:input path="age"/></td></tr>
		<tr><td>Weight : </td><td><form:input path="weight"/></td></tr>
		<tr><td>Habitat : </td><td><form:input path="habitat"/></td></tr>
		<tr><td>Characteristic : </td><td><form:input path="story"
													rows="5" cols="40"/></td></tr>
		="gender"/></td></tr>
<%--		<tr><td>Age : </td><td><input type="number" name="age"/></td></tr>--%>
<%--		<tr><td>Weight : </td><td><input type="number" name="weight"/></td></tr>--%>
<%--		<tr><td>Habitat : </td><td><input type="text" name="habitat"/></td></tr>--%>
<%--		<tr><td>Characteristic : </td><td><textarea name="characteristic" id="story"--%>
<%--													rows="5" cols="40"/></td></tr>--%>
		<tr><td>Age : </td><td><input type="number" name="age"/></td></tr>
		<tr><td>Weight : </td><td><input type="number" name="weight"/></td></tr>
		<tr><td>Habitat : </td><td><input type="text" name="habitat"/></td></tr>
		<tr><td>Characteristic : </td><td><textarea name="characteristic" id="story"
													rows="5" cols="40"/></td></tr>

	</table>
	<input type="submit" value="수정하기">
	<input type="button" value="취소하기" onclick="history.back">
</form:form>

</body>
</html>