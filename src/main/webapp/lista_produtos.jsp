<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista de produtos</title>
</head>
<p><h1>Produtos encontrados:</h1></p>
<body>

	<form action="realizarpedido">
		<b>CDs:</b>
		<br/>
		<c:forEach var="cd" items="${cds}">
							
				<input type="checkbox" id="cd" name="cd" value="<c:out value="${cd.codigo}" />">
		  		Código:<c:out value="${cd.codigo}" /> -
				Título:<c:out value="${cd.titulo}" /> - 
				Artista:<c:out value="${cd.artista}" /> - 
				R$:<c:out value="${cd.preco}" />
				</label>
				<br/>
						
		</c:forEach>
		<br/>
		<b>DVDs:</b>
		<br/>
		<c:forEach var="dvd" items="${dvds}">
							
				<input type="checkbox" id="dvd" name="dvd" value="<c:out value="${dvd.codigo}" />">
		  		Código:<c:out value="${dvd.codigo}" /> - 
				Título:<c:out value="${dvd.titulo}" /> - 
				Duração:<c:out value="${dvd.duracao}" /> minutos - 
				R$:<c:out value="${dvd.preco}" />
				</label>
				<br/>
						
		</c:forEach>
		<br/>
    	<input type="submit" value="Realizar pedido">
	</form>

</body>
</html>