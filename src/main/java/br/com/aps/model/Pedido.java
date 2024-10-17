package br.com.aps.model;

import java.util.ArrayList;

public class Pedido {
	private int codigo;
	private ArrayList<Produto> produtos = new ArrayList<>();
	
	

	public Pedido (int codigo) {
		this.codigo = codigo;
	}
	
	public Pedido () {
		
	}
	
	public void addProduto(Produto produto) {
		produtos.add(produto);
	}
	
	public ArrayList<Produto> getProdutos() {
		return produtos;
	}

	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}
	
	public double getValorTotal() {
		double total = 0;
		for (Produto produto : this.produtos) {
			total = total + produto.getPreco();
	    }
		return total;
	}

	

}

