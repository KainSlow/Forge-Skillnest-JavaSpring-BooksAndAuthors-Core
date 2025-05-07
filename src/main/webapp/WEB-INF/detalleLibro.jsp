<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*, java.text.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="../css/styles.css">
</head>
<body class="panel col bg acenter pad gap" >
    
    <c:choose>
       <c:when test="${autor == null}">
        <h1>ERROR: 404</h1>
        <h2>El libro no está en la lista</h2>
       </c:when>
       <c:otherwise>
        <h1>${libro}</h1>
        <div class="panel col acenter pad1 gap1">
        <h5>Autor</h5>
        <h2>${autor}</h2>
        </div>
       </c:otherwise>
    </c:choose>
    <a class="btn" href="/libros">Volver a la lista</a>
</body>
</html>