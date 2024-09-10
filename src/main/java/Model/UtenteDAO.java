package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;

public class UtenteDAO {

    public synchronized void doSave(Utente utente) throws SQLException{
        PreparedStatement ps=null;

        try(Connection con = ConPool.getConnection()) {
            ps = con.prepareStatement("SELECT nomeUtente FROM Utente WHERE nomeUtente='"+utente.getNomeUtente()+"';");
            ResultSet result= ps.executeQuery();
            if(result.next()) {
                System.out.println("Nome utente già in uso!");
            }else {
                ps.close();
                ps = con.prepareStatement("INSERT INTO Utente(nomeUtente, nome, cognome, via, cap, telefono, passwordUtente, civico, amministratore, citta) VALUES(?,?,?,?,?,?,?,?,?,?)");
                ps.setString(1, utente.getNomeUtente());
                ps.setString(2, utente.getNome());
                ps.setString(3, utente.getCognome());
                ps.setString(4, utente.getVia());
                ps.setInt(5, utente.getCap());
                ps.setString(6, utente.getTelefono());
                ps.setString(7, utente.getPasswordUtente());
                ps.setInt(7, utente.getCivico());
                ps.setBoolean(9, utente.isAmministratore());
                ps.setString(10, utente.getCitta());
                ps.executeUpdate();
            }
        }catch(Exception e) {
            e.printStackTrace();
        }
    }


    public synchronized Utente doRetriveByUserName(String nomeUtente, String passwordUtente) throws SQLException{
        Connection con = null;
        PreparedStatement ps = null;
        Utente utente = new Utente();

        try {
            con = ConPool.getConnection();
            ps = con.prepareStatement("SELECT * FROM Utente WHERE nomeUtente='?' and passwordUtente='?';");
            ps.setString(1, nomeUtente);
            ps.setString(2, passwordUtente);
            ResultSet result = ps.executeQuery();


            if(result.next()) {
                utente.setNomeUtente(result.getString("nomeUtente"));
                utente.setNome(result.getString("nome"));
                utente.setCognome(result.getString("cognome"));
                utente.setVia(result.getString("via"));
                utente.setCap(result.getInt("cap"));
                utente.setTelefono(result.getString("telefono"));
                utente.setPasswordUtente(result.getString("passwordUtente"));
                utente.setCivico(result.getInt("civico"));
                utente.setAmministratore(result.getBoolean("amministratore"));
                utente.setCitta(result.getString("ciita"));

            }else {
                utente = null;
            }
        }catch(Exception e) {
            e.printStackTrace();
        }
        return utente;
    }


    public synchronized void doDelete(String nomeUtente) throws SQLException{
        Connection con = null;
        PreparedStatement ps = null;

        try {
            con = ConPool.getConnection();
            ps = con.prepareStatement("DELETE FROM Utente WHERE nomeUtente='?';");
            ps.setString(1, nomeUtente);
            ps.executeUpdate();
        }catch(Exception e) {
            e.printStackTrace();
        }

    }
}
