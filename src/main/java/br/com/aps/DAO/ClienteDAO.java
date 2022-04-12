package br.com.aps.DAO;

import java.sql.Connection;

import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import bd.ConexaoBD;
import br.com.aps.model.Cliente;

public class ClienteDAO extends DAO<Cliente> {

	@Override
	public boolean remover(Cliente cliente) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Cliente> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean inserir(Cliente cliente) {
				
		try{
						
			Connection conexao = ConexaoBD.getConnection();
			Statement stmt = conexao.createStatement();
		     
		    String query = "INSERT INTO cliente(nome, sobrenome, email) VALUES"
					+"('"+cliente.getNome()+"','"+cliente.getSobrenome()+"','"+cliente.getEmail()+"')";
		     
		    int resultado = stmt.executeUpdate(query);
		    		     
		    stmt.close(); 
		    conexao.close();
		    
		    if (resultado == 1) {
		    	return true;
		    }else {
		    	return false;
		    }

		}catch(SQLException sqle){

		     sqle.printStackTrace();
		     
		}
		
		return false;
	}

	@Override
	public Cliente get(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Cliente> getPorPalavraChave(String keyword) {
		// TODO Auto-generated method stub
		return null;
	}

}
