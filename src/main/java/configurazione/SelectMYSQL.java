package configurazione;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class SelectMYSQL  {
	public static ResultSet select(String sql, Connection c){
		try	{
			PreparedStatement ps = c.prepareStatement(sql);	
			return ps.executeQuery(sql);
		} catch(SQLException	ex)	{
			System.out.println("Select error");
			System.out.println("SQLState:"+ex.getSQLState());
			ex.printStackTrace();
		} 
		return null;
	}
}