package br.com.aps.model;

public class CD extends Produto {
	private String artista;
	
	public CD() {}
	
	public CD (int codigo, String titulo, double preco, String descricao, String artista) {
		this.setCodigo(codigo);
		this.setTitulo(titulo);
		this.setPreco(preco);
		this.artista = artista;
	}

	public String getArtista() {
		return artista;
	}

	public void setArtista(String artista) {
		this.artista = artista;
	}

}
