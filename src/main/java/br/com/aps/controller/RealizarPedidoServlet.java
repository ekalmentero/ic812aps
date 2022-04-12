package br.com.aps.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.aps.model.CD;
import br.com.aps.model.Pedido;
import br.com.aps.model.Produto;

/**
 * Servlet implementation class RealizarPedidoServlet
 */
@WebServlet("/realizarpedido")
public class RealizarPedidoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//PrintWriter out = response.getWriter();
		String destino = "detalhes_pedido.jsp";
		RequestDispatcher requestDispatcher = request.getRequestDispatcher(destino);
				
		String cds[] = request.getParameterValues("cd");
		String dvds[] = request.getParameterValues("dvd");
		
		ArrayList<Produto> produtos = new ArrayList<>();
		
		
		
		

		//request.setAttribute("pedidoRealizado", pedidoRealizado.getProdutos());
		//request.setAttribute("valorTotal", pedidoRealizado.getValorTotal());
		
		
		requestDispatcher.forward(request, response);
		//out.println(pedidoRealizado.getProdutos().size());
	}

}
