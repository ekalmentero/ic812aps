<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Detalhes do pedido</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            border-radius: 8px;
            width: 80%;
            max-width: 600px;
            padding: 20px;
            box-sizing: border-box;
            overflow: auto;
        }
        h1 {
            font-size: 24px;
            margin-bottom: 20px;
            text-align: center;
            color: #333;
        }
        .produto {
            margin-bottom: 20px;
            padding: 10px;
            border-bottom: 1px solid #ddd;
        }
        .produto:last-child {
            border-bottom: none;
        }
        .produto h3 {
            font-size: 18px;
            margin: 0 0 10px 0;
            color: #555;
        }
        .produto p {
            margin: 5px 0;
            color: #666;
        }
        .total {
            font-size: 18px;
            font-weight: bold;
            text-align: right;
            margin-top: 20px;
            color: #333;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Detalhes do pedido</h1>
        <%@ page import="br.com.aps.model.CD" %>
        <%@ page import="br.com.aps.model.DVD" %>
        <c:forEach var="produto" items="${pedidoRealizado.getProdutos()}">
        
	       	<c:if test="${produto.getClass().getSimpleName() == 'CD'}"> 
	    		<div class="produto">
	                <h3>CD:</h3>
	                <p>Título: <c:out value="${produto.getTitulo()}" /></p>
	                <p>Descrição: <c:out value="${produto.getDescricao()}" /></p>
	                <p>Preço R$: <c:out value="${produto.getPreco()}" /></p>
	            </div>
	    	</c:if>
	    	<c:if test="${produto.getClass().getSimpleName() == 'DVD'}"> 
	    		<div class="produto">
	                <h3>DVD:</h3>
	                <p>Título: <c:out value="${produto.getTitulo()}" /></p>
	                <p>Descrição: <c:out value="${produto.getDescricao()}" /></p>
	                <p>Preço R$: <c:out value="${produto.getPreco()}" /></p>
	            </div>
	    	</c:if>
	    	        
        </c:forEach>
        <p class="total">O valor total do pedido é: R$ <c:out value="${valorTotal}"/></p>
    </div>
</body>
</html>
