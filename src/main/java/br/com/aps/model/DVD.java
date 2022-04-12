package br.com.aps.model;

public class DVD extends Produto {
	private int duracao;
	
	public DVD() {}
	
	public DVD (int codigo, String titulo, double preco, String descricao, int duracao) {
		this.setCodigo(codigo);
		this.setTitulo(titulo);
		this.setPreco(preco);
		this.setDescricao(titulo);
		this.duracao = duracao;
	}

	public int getDuracao() {
		return duracao;
	}

	public void setDuracao(int duracao) {
		this.duracao = duracao;
	}

}