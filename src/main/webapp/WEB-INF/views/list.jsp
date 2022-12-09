<%@ page language="java" contentType="text/html; charset=UTF-8"
		 isELIgnored="false" pageEncoding="UTF-8" %>
<%@ page import="com.mycom.myapp.PokemonDAO, com.mycom.myapp.PokemonVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>free board</title>
<style>
#list {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#list td, #list th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align:center;
}
#list tr:nth-child(even){background-color: #f2f2f2;}
#list tr:hover {background-color: #ddd;}
#list th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #006bb3;
  color: white;
}
</style>

</head>
<body>
<h1>자유게시판</h1>

<button type="button" onclick="location.href='login/logout'">logout</button>

<table id="list" width="90%">
<tr>
	<th>Id</th>
	<th>CP</th>
	<th>Photo</th>
	<th>PokemonName</th>
	<th>Gender</th>
	<th>Age</th>
	<th>Weight</th>
	<th>Habitat</th>
	<th>Characteristic</th>
	<th>Catchdate</th>
	<th>Edit</th>
	<th>Delete</th>
</tr>
<c:forEach items="${list}" var="u">
	<tr>
		<td>${u.getPokemonID()}</td>
		<td>${u.getCP()}</td>
<%--		<td>${u.getPhoto()}</td>--%>
		<td><img src="./img/${u.getPhoto()}" width="100" /></td>
		<td>${u.getPokemonName()}</td>
		<td>${u.getGender()}</td>
		<td>${u.getAge()}</td>
		<td>${u.getWeight()}</td>
		<td>${u.getHabitat()}</td>
		<td>${u.getCharacteristic()}</td>
		<td>${u.getCatchdate()}</td>
		<td><a href="editform/${u.getPokemonID()}">Edit</a></td>
		<td><a href="deleteok/${u.getPokemonID()}">Delete</a></td>
	</tr>
</c:forEach>
</table>
<br/>
<button type="button" onclick="location.href='add'">새글쓰기</button>
</body>
</html>