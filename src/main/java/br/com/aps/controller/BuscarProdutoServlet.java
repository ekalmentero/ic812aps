package br.com.aps.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.aps.DAO.ProdutoDAO;
import br.com.aps.model.CD;
import br.com.aps.model.DVD;
import br.com.aps.model.Produto;

/**
 * Servlet para busca de produto por palavra-chave
 */
@WebServlet("/buscarproduto")
public class BuscarProdutoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Página que irá apresentar a lista
		String destino = "lista_produtos.jsp";
		
		RequestDispatcher requestDispatcher = request.getRequestDispatcher(destino);
		String palavrachave = "";
		palavrachave = request.getParameter("palavrachave");
				
		ProdutoDAO produtoDAO = new ProdutoDAO();		
		ArrayList<Produto> produtos = new ArrayList<>();
		
		produtos = (ArrayList<Produto>) produtoDAO.getPorPalavraChave(palavrachave);
		
		//Separação de CDs e DVDs
		ArrayList<CD> cds = new ArrayList<CD>();
		ArrayList<DVD> dvds = new ArrayList<DVD>();
		for (Produto produto : produtos) {
			if (produto instanceof CD) {
				cds.add((CD) produto);
			}else {
				dvds.add((DVD) produto);
			}
		}
			 
	    request.setAttribute("cds", cds);
	    request.setAttribute("dvds", dvds);
		
		requestDispatcher.forward(request, response);
		
		
	}

}
