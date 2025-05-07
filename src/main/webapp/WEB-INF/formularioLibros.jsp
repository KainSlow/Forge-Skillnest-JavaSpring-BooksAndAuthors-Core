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
<body class="panel col bg acenter pad gap">
    <h2>Registra tu libro aquí</h2>
    <form class="panel col gap pad acenter" action="/procesa/libro" method="post">
        <div class="panel col inputBox">
            <input id="nombreLibro" type="text" name="nombreLibro" required>
            <label for="nombreLibro">Título</label>
        </div>
        <div class="panel col inputBox">
            <input id="nombreAutor" type="text" name="nombreAutor" required>
            <label for="nombreAutor">Autor</label>
        </div>

        <a class="btn" href="/libros">Volver</a>
        <button class="btn" type="submit">Registrar</button>
    </form>

</body>
</html>