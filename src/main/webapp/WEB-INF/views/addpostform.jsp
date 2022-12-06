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
<tr><td>CP : </td><td><input type="text" name="CP"/></td></tr>
<tr><td>Photo : </td><td><input type="text" name="Photo"/></td></tr>
<tr><td>PokemonName : </td><td><input type="text" name="PokemonName"/></td></tr>
    <tr><td>Gender : </td><td><input type="text" name="Gender"/></td></tr>
    <tr><td>Age : </td><td><input type="number" name="Age"/></td></tr>
    <tr><td>Weight : </td><td><input type="number" name="Weight"/></td></tr>
    <tr><td>Habitat : </td><td><input type="text" name="Habitat"/></td></tr>
    <tr><td>Characteristic : </td><td><textarea name="Characteristic" id="story"
                                                rows="5" cols="40"></textarea></td></tr>
<%--    <tr><td>Catchdata : </td><td><input type="date" name="Catchdata"/></td></tr>--%>
<%--    <td><textarea cols="50" rows="5" name="content"></textarea></td></tr>--%>

</table>
    <button type="button" onclick="location.href='list'">목록보기</button>
    <button type="submit" >등록하기</button>

</form>

</body>
</html>