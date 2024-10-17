package br.com.aps.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.aps.DAO.ProdutoDAO;
import br.com.aps.model.CD;
import br.com.aps.model.DVD;
import br.com.aps.model.Pedido;

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
		
		Pedido pedido = new Pedido();
		
		// Obtém os CDs selecionados
        String[] cdsSelecionados = request.getParameterValues("cd");
        if (cdsSelecionados != null) {
            for (String cdSel : cdsSelecionados) {
                int id = Integer.parseInt(cdSel);
                
                
                ProdutoDAO produtoDAO = new ProdutoDAO();		
        		CD cd = new CD();
        		
        		cd =  produtoDAO.getCDById(id);
        		        		             
        		pedido.addProduto(cd);
            }
        }
		
        // DVDs selecionados
        String[] dvdsSelecionados = request.getParameterValues("dvd");
       
        if (dvdsSelecionados != null) {
            for (String dvdSel : dvdsSelecionados) {
            	int id = Integer.parseInt(dvdSel);
                
                
                ProdutoDAO produtoDAO = new ProdutoDAO();		
        		DVD dvd = new DVD();
        		
        		dvd =  produtoDAO.getDVDById(id);
        		        		             
        		pedido.addProduto(dvd);
            }
        }
        
		//PrintWriter out = response.getWriter();
		String destino = "detalhes_pedido.jsp";
		RequestDispatcher requestDispatcher = request.getRequestDispatcher(destino);
				
		request.setAttribute("pedidoRealizado", pedido);
		request.setAttribute("valorTotal", pedido.getValorTotal());
	    		
		requestDispatcher.forward(request, response);			
		
		
	}

}
