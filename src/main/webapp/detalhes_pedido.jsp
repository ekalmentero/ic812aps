<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Detalhes do pedido</title>
</head>
<p><h1>Detalhes do pedido:</h1></p>
<body>
	
	<c:forEach var="cd" items="${pedidoRealizado}">
				
		Nome: <c:out value="${cd.getNome()}" /> -
		Artista: <c:out value="${cd.artista}" /> - 
		Preço R$:<c:out value="${cd.getPreco()}" />
		<br/>	
	</c:forEach>
	<b>Valor total: ${valorTotal}</b>

</body>
</html>