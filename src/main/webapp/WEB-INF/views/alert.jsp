<%@ page language="java" contentType="text/html; charset=UTF-8"
         isELIgnored="false" pageEncoding="UTF-8" %>
<%@ page import="com.mycom.myapp.PokemonDAO, com.mycom.myapp.PokemonVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>free board</title>

</head>
<body>

<script>
  var msg = "<c:out value='${msg}'/>";
  var url = "<c:out value='${url}'/>";
  alert(msg);
  location.href = url;
</script>

</body>
</html>