package config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connessione {
	
	private static Connection conn=null;
	public final static String DB_DRIVER_CLASS="com.mysql.cj.jdbc.Driver";
	public final static String DB_URL="jdbc:mysql://localhost:3306/GestionePersone";
	public final static String DB_USERNAME="root";
	public final static String DB_PASSWORD="";
	
	static {
		try {
			Class.forName(DB_DRIVER_CLASS);
			conn=DriverManager.getConnection(DB_URL,DB_USERNAME,DB_PASSWORD);
		}
		catch(ClassNotFoundException e) {
			System.out.println("Classe non trovata");
		}
		catch(SQLException e) {
			System.out.println("Errore di connessione");
		}
	}
	
	public static Connection getConnessione() {
		return conn;
	}

}
