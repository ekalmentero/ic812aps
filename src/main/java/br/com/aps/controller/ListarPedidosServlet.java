package br.com.aps.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;


import br.com.aps.model.Pedido;

/**
 * Servlet para listar pedidos
 */
@WebServlet(description = "Listar pedidos", urlPatterns = { "/listarpedidos" })
public class ListarPedidosServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*FakeBD meuBD = new FakeBD();
		ArrayList<Pedido> pedidos = new ArrayList<>();
		pedidos = meuBD.getPedidos();
		String jsonPedidos = new Gson().toJson(pedidos);
		*/
		
		PrintWriter out = response.getWriter();
		//out.println(jsonPedidos);
	}

}
