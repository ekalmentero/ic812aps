package br.com.aps.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bd.ConexaoBD;
import br.com.aps.model.CD;
import br.com.aps.model.DVD;
import br.com.aps.model.Produto;

public class ProdutoDAO extends DAO<Produto> {

	@Override
	public boolean inserir(Produto produto) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean remover(Produto produto) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Produto get(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Produto> getPorPalavraChave(String palavrachave) {
		
		ArrayList<Produto> produtos = new ArrayList<Produto>(); 
		 
		try{
			
			Connection conexao = ConexaoBD.getConnection();
			Statement stmt = conexao.createStatement();
			Statement stmt2 = conexao.createStatement();
		     
		   
		    String queryCD = "SELECT * FROM CD WHERE titulo LIKE '%"+palavrachave+"%'";
		    String queryDVD = "SELECT * FROM DVD WHERE titulo LIKE '%"+palavrachave+"%'";
		    		     
		    ResultSet resultadoCD = stmt.executeQuery(queryCD);
	    
		    while(resultadoCD.next()){ 
		    	CD cd = new CD();
		    	
		    	cd.setId(resultadoCD.getInt("id"));
		    	cd.setCodigo(resultadoCD.getInt("codigo"));
		    	cd.setTitulo(resultadoCD.getString("titulo"));
		    	cd.setPreco(resultadoCD.getDouble("preco"));
		    	cd.setDescricao(resultadoCD.getString("descricao"));
		    	cd.setArtista(resultadoCD.getString("artista"));
		    	
		    	produtos.add(cd);
		    	
		    }

		    stmt.getMoreResults(Statement.KEEP_CURRENT_RESULT);

		    ResultSet resultadoDVD = stmt.executeQuery(queryDVD);
		    
		    while(resultadoDVD.next()){ 
		    	DVD dvd = new DVD();
		    	
		    	dvd.setId(resultadoDVD.getInt("id"));
		    	dvd.setCodigo(resultadoDVD.getInt("codigo"));
		    	dvd.setTitulo(resultadoDVD.getString("titulo"));
		    	dvd.setPreco(resultadoDVD.getDouble("preco"));
		    	dvd.setDescricao(resultadoDVD.getString("descricao"));
		    	dvd.setDuracao(resultadoDVD.getInt("duracao"));
		    	
		    	produtos.add(dvd);
		    	
		    }
		    				     
		    stmt.close(); 
		    conexao.close();
			
		}catch(SQLException sqle){

		     sqle.printStackTrace();
		     
		}
		return produtos;
	}

	@Override
	public List<Produto> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

}
