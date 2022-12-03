<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.mycom.myapp.PokemonDAO, com.mycom.myapp.PokemonVO,java.util.*"%>
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
<script>
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='deletepost.jsp?id=' + id;
	}
</script>
</head>
<body>
<h1>자유게시판</h1>
 
<table id="list" width="90%">
<tr>
	<th>Id</th>
	<th>Title</th>
	<th>Writer</th>
	<th>Content</th>
	<th>Regdate</th>
	<th>Edit</th>
	<th>Delete</th>
</tr>
<c:forEach items="${list}" var="u">
	<tr>
		<td>${u.getPokemonID()}</td>
		<td>${u.getCP()}</td>
		<td>${u.getPhoto()}</td>
		<td>${u.getPokemonName()}</td>
		<td>${u.getGender()}</td>
		<td>${u.getAge()}</td>
		<td>${u.getWeight()}</td>
		<td>${u.getHabitat()}</td>
		<td>${u.getCharacteristic()}</td>
		<td>${u.getCatchdate()}</td>
		<td><a href="editform/${u.getPokemonID()}">Edit</a></td>
		<td><a href="javascript:delete_ok('${u.getPokemonID()}')">Delete</a></td>
	</tr>
</c:forEach>
</table>
<br/>
<button type="button" onclick="location.href='add'">새글쓰기</button>
</body>
</html>