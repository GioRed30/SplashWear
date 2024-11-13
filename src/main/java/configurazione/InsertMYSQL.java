package configurazione;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class InsertMYSQL  {
	public static void insert(String sql, Connection c){
		try	{
			PreparedStatement ps=c.prepareStatement(sql);	
			ps.executeUpdate();
			ps.close();		
		}		
		catch	(SQLException	ex)	{		
			System.out.println("Errore nell'insert");
			
			ex.printStackTrace();
		}
	}
}