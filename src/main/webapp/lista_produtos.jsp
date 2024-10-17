<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista de Produtos</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 20px;
        background-color: #f4f4f4;
    }
    h1 {
        color: #333;
    }
    .container {
        background: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    .product-list {
        margin-bottom: 20px;
    }
    .product-list b {
        font-size: 1.2em;
    }
    .product-item {
        padding: 10px;
        border-bottom: 1px solid #ddd;
    }
    .product-item:last-child {
        border-bottom: none;
    }
    .product-item label {
        display: block;
        margin-bottom: 5px;
    }
    .submit-button {
        background-color: #4CAF50;
        color: white;
        border: none;
        padding: 10px 20px;
        font-size: 1em;
        cursor: pointer;
        border-radius: 5px;
    }
    .submit-button:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>

<div class="container">
    <h1>Produtos encontrados:</h1>

    <form action="realizarpedido">
        <div class="product-list">
            <b>CDs:</b>
            <br/>
            <c:forEach var="cd" items="${cds}">
                <div class="product-item">
                    <input type="checkbox" id="cd" name="cd" value="<c:out value='${cd.codigo}' />">
                    <label for="cd">
                        Código: <c:out value="${cd.codigo}" /> - 
                        Título: <c:out value="${cd.titulo}" /> - 
                        Artista: <c:out value="${cd.artista}" /> - 
                        R$: <c:out value="${cd.preco}" />
                    </label>
                </div>
            </c:forEach>
        </div>

        <div class="product-list">
            <b>DVDs:</b>
            <br/>
            <c:forEach var="dvd" items="${dvds}">
                <div class="product-item">
                    <input type="checkbox" id="dvd" name="dvd" value="<c:out value='${dvd.codigo}' />">
                    <label for="dvd">
                        Código: <c:out value="${dvd.codigo}" /> - 
                        Título: <c:out value="${dvd.titulo}" /> - 
                        Duração: <c:out value="${dvd.duracao}" /> minutos - 
                        R$: <c:out value="${dvd.preco}" />
                    </label>
                </div>
            </c:forEach>
        </div>

        <input type="submit" value="Realizar pedido" class="submit-button">
    </form>
</div>

</body>
</html>

</html>