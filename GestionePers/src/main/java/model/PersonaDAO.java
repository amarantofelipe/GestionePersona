package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import config.Connessione;

public class PersonaDAO {
	
	public int TotPagine() {
		
		Connection conn = Connessione.getConnessione();
		
		int pagina = 0; 
		
		String sql = "SELECT COUNT(*) FROM Persona";
		
		PreparedStatement ps;
		try {
			ps = conn.prepareStatement(sql);
			System.out.println(sql);
			ResultSet rs = ps.executeQuery(sql);
			
			while (rs.next() ) {
				
                int totPersone;
                
                totPersone = rs.getInt("COUNT(*)");
                
                pagina = totPersone / 3;
            }
			
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return pagina;
	}
	

	public boolean InserisciPersona (Persona p) {
		
		Connection conn = Connessione.getConnessione();
		
		
		
		String sql = "INSERT INTO Persona (Nome, Cognome, Eta) VALUE ('"+ p.getNome() + "','" + p.getCognome() + "'," + p.getEta() + ")";
		

		PreparedStatement ps;
		try {
			ps = conn.prepareStatement(sql);
			System.out.println(sql);
			ps.executeUpdate(sql);
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		
	}
	
	public void EliminaPersona(int ID) {
		
		Connection conn = Connessione.getConnessione();
		
		String Dsql = "DELETE FROM Persona WHERE ID = "+ ID;
		
		PreparedStatement ps;
		try {
			ps = conn.prepareStatement(Dsql);
			ps.executeUpdate(Dsql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		
		}
	}
	
	
	
	public List<Persona> DatiPersona() {
		
		Connection conn = Connessione.getConnessione();
		
		
		String sql = "SELECT * FROM Persona ";
		
		
		List<Persona> listaP = new ArrayList<Persona>();
		
		
		PreparedStatement ps;
		
		try {
			
			ps = conn.prepareStatement(sql);
			
			ResultSet rs = ps.executeQuery(sql);
			
			while (rs.next() ) {
				
                String firstName = rs.getString("nome");
                String lastName = rs.getString("cognome");
                int age = rs.getInt("eta");
                int id = rs.getInt("ID");
                
                Persona p = new Persona(firstName, lastName, age, id);
                p.setId(id);
                
                System.out.println(firstName + "" + lastName + "" + age);
                
                
                listaP.add(p);
            }
			
			rs.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return listaP;
	}
	
	
	public List<Persona> paginazione(int pagina) {
		
		Connection conn = Connessione.getConnessione();
		
		
		String sql = "SELECT * FROM Persona LIMIT " + pagina + ", 3";
		
		List<Persona> listaP = new ArrayList<Persona>();
		
		PreparedStatement ps;
		
		try {
			
			ps = conn.prepareStatement(sql);
			
			ResultSet rs = ps.executeQuery(sql);
			
			while (rs.next() ) {
				
                String firstName = rs.getString("nome");
                String lastName = rs.getString("cognome");
                int age = rs.getInt("eta");
                int id = rs.getInt("ID");
                
                Persona p = new Persona(firstName, lastName, age, id);
                p.setId(id);
                
                System.out.println(firstName + "" + lastName + "" + age);
                
                
                listaP.add(p);
            }
			
			rs.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return listaP;
		
	}
	
	
	public void DoUpdate(Persona p) {
		
		Connection conn = Connessione.getConnessione();
		
		String sql = "UPDATE Persona SET Nome = '" + p.getNome() + "' , Cognome = '" + p.getCognome() + "' , Eta = " + p.getEta() + " WHERE ID = " + p.getId();
		

		PreparedStatement ps;
		try {
			ps = conn.prepareStatement(sql);
			System.out.println(sql);
			ps.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
