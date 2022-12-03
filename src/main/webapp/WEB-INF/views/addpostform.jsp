<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Add New Post</h1>
<form action="addok" method="post">
<table id="edit">
<tr><td>CP : </td><td><input type="text" name="cp"/></td></tr>
<tr><td>Photo : </td><td><input type="text" name="photo"/></td></tr>
<tr><td>PokemonName : </td><td><input type="text" name="pokemonname"/></td></tr>
    <tr><td>Gender : </td><td><input type="text" name="gender"/></td></tr>
    <tr><td>Age : </td><td><input type="number" name="age"/></td></tr>
    <tr><td>Weight : </td><td><input type="number" name="weight"/></td></tr>
    <tr><td>Habitat : </td><td><input type="text" name="habitat"/></td></tr>
    <tr><td>Characteristic : </td><td><textarea name="characteristic" id="story"
                                                rows="5" cols="40"/></td></tr>
<%--    <tr><td>Catchdata : </td><td><input type="date" name="Catchdata"/></td></tr>--%>
<%--    <td><textarea cols="50" rows="5" name="content"></textarea></td></tr>--%>

</table>
    <button type="button" onclick="location.href='list'">목록보기</button>
    <button type="submit" >등록하기</button>

</form>

</body>
</html>