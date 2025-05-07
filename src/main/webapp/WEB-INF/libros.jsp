<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*, java.text.*"%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body class="panel col bg acenter pad gap">
    <h1>Libros</h1>

    <a class="btn fL" href="/libros/formulario">+</a>

    <ul class="panel col gap acenter">
        <c:forEach items="${libros}" var="libro">
            <li><a href="libros/${libro}">${libro}</a></li>
        </c:forEach>
    </ul>
</body>
</html>