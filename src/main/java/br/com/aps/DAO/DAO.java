package br.com.aps.DAO;

import java.util.List;



/* a classe abstrata DAO utiliza Java Generics para definir valores de retorno e atributo genéricos*/

public abstract class DAO<T> {
	public abstract boolean inserir(T a);
	public abstract boolean remover(T a);
	public abstract T get(int id);
	public abstract List<T> getPorPalavraChave(String keyword);
	public abstract List<T> getAll();
		
}
