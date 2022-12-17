<%@ page language="java" contentType="text/html; charset=UTF-8"
         isELIgnored="false" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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
        #add{
            margin: 0 auto;
            align-content: center;
            width: 70%;
            margin-top: 50px;
            margin-bottom: 30px;
            border: 1px solid lightgray;
            border-radius: 5%;
            text-align: left;
            padding: 30px;
            color: black;
            padding-bottom: 60px;
            font-weight: bold;
            font-size: 17px;
            background-color: white;
        }
        input{
            border: 1px solid black;
            margin-bottom: 5px;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-light" id="topbar">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
            <img src="./img/pokemongo.jpeg" alt="" width="50" height="34" class="d-inline-block align-text-top">
            <Label id="title">Pokemon Add</Label>
        </a>
        <span>
            <button type="button" class="btn btn-light" onclick="location.href='list'" style="margin-right: 8px">List</button>
            <button type="button" class="btn btn-secondary" onclick="location.href='/login/logout'" style="margin-right: 20px">Logout</button>
        </span>
    </div>
</nav>

<div id="add">
<h1><img src="./img/pokeball.png" width="50" /> New Pokemon</h1>
<form name="myForm" action="addok" method="post" onsubmit="return validateForm()">
<table id="edit">
<tr><td>[ 1. CP ]</td><td><input type="text" name="CP"/></td></tr>
<tr><td>[ 2. Photo ]<br>
    ( Available : bufferfly.jpg / eve.jpg <br>
    gobugi.jpg / gugu.jpg / mangnanyong.jpg <br>
    metamon.jpg / pikachu.jpg / pyree.png <br>
    strange.png / yadon.png )<br>
</td><td><input type="text" name="Photo"/></td></tr>
    <tr><td>[ 3. PokemonName ]</td><td><input type="text" name="PokemonName"/></td></tr>
    <tr><td>[ 4. Gender ]</td><td><input type="text" name="Gender"/></td></tr>
    <tr><td>[ 5. Age ]</td><td><input type="number" name="Age"/></td></tr>
    <tr><td>[ 6. Weight ]</td><td><input type="number" name="Weight"/></td></tr>
    <tr><td>[ 7. Habitat ]</td><td><input type="text" name="Habitat"/></td></tr>
    <tr><td>[ 8. Characteristic ]</td><td><textarea name="Characteristic" id="story"
                                                rows="5" cols="40"></textarea></td></tr>
    <tr><td>[ 9. Are you sure you want to catch this Pokémon? ]</td><td><input type="checkbox" name="chk" style="margin-left: 10px" checked></td></tr>

</table>
    <div style="float: right">
        <button class="btn btn-dark" type="submit" style="margin-right: 8px">Submit</button>
        <button type="button" class="btn btn-secondary" onclick="location.href='list'" >Cancel</button>
    </div>
</form>
</div>
<script>
    function validateForm() {
        var cp = document.myForm.CP;
        var photo = document.myForm.Photo;
        var name = document.myForm.PokemonName;
        var gender = document.myForm.Gender;
        var age = document.myForm.Age;
        var weight = document.myForm.Weight;
        var habitat = document.myForm.Habitat;
        var characteristic = document.myForm.Characteristic;
        var agree = document.myForm.chk;

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