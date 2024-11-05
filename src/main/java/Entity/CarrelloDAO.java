package Entity;

import java.sql.*;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.List;

public class CarrelloDAO {
    public Carrello doRetrieveById(String id) {
        Carrello carrello = new Carrello();
        try (Connection con = ConPool.getConnection()) {
            PreparedStatement ps =
                    con.prepareStatement("SELECT * FROM Carrello WHERE idC=?");
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                carrello.setId(rs.getInt("idC"));
                carrello.setDate(rs.getDate("dataC").toInstant().atZone(ZoneId.systemDefault()).toLocalDate());
                carrello.setQuantita(rs.getInt("quantita"));
                carrello.setCodiceUtente(rs.getInt("codiceU"));
                carrello.setCodiceArticolo(rs.getInt("id"));
                carrello.setTotale(rs.getFloat("totale"));
                return carrello;
            }
            return null;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void doSave(LocalDate date, int quantita, int codiceU, int id, float totale) {
        try (Connection con = ConPool.getConnection()) {
            PreparedStatement ps = con.prepareStatement(
                    "INSERT INTO carrello (dataC, quantita, codiceU, id, totale) VALUES(?,?,?,?,?)"
            );
            ps.setDate(1, Date.valueOf(date));
            ps.setInt(2, quantita);
            ps.setInt(3, codiceU);
            ps.setInt(4, id);
            ps.setFloat(4, totale);
            if (ps.executeUpdate() != 1) {
                throw new RuntimeException("INSERT error.");
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public List<Carrello> doRetrieveAll(){
        ArrayList<Carrello> carrello = new ArrayList<>();
        Connection con = null;
        PreparedStatement ps = null;
        try{
            con = ConPool.getConnection();
            ps = con.prepareStatement("SELECT * FROM carrello ");
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                Carrello carr = new Carrello();
                carr.setId(rs.getInt("idC"));
                carr.setDate(rs.getDate("dataC").toInstant().atZone(ZoneId.systemDefault()).toLocalDate());
                carr.setQuantita(rs.getInt("quantita"));
                carr.setCodiceUtente(rs.getInt("codiceU"));
                carr.setCodiceArticolo(rs.getInt("id"));
                carr.setTotale(rs.getFloat("totale"));
                carrello.add(carr);
            }
            con.close();
            return carrello;
        }
        catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public List<Carrello> doRetrieveByCodiceU(int codiceU){
        ArrayList<Carrello> carrello = new ArrayList<>();
        Connection con = null;
        PreparedStatement ps = null;
        try{
            con = ConPool.getConnection();
            ps = con.prepareStatement("SELECT * FROM carrello WHERE CodiceU = ?");
            ps.setInt(1, codiceU);
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                Carrello carr = new Carrello();
                carr.setId(rs.getInt("idC"));
                carr.setDate(rs.getDate("dataC").toInstant().atZone(ZoneId.systemDefault()).toLocalDate());
                carr.setQuantita(rs.getInt("quantita"));
                carr.setCodiceUtente(rs.getInt("codiceU"));
                carr.setCodiceArticolo(rs.getInt("id"));
                carr.setTotale(rs.getFloat("totale"));
                carrello.add(carr);
            }
            con.close();
            return carrello;
        }
        catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public List<Carrello> doRetrieveByDate(Date dataX, Date dataY){
        ArrayList<Carrello> carrello = new ArrayList<>();
        Connection con = null;
        PreparedStatement ps = null;
        try{
            con = ConPool.getConnection();
            ps = con.prepareStatement("SELECT * FROM carrello WHERE dataC BETWEEN ? AND  ?");
            ps.setDate(1, new Date(dataX.getTime()));
            ps.setDate(2, new Date(dataY.getTime()));
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                Carrello carr = new Carrello();
                carr.setId(rs.getInt("idC"));
                carr.setDate(rs.getDate("dataC").toInstant().atZone(ZoneId.systemDefault()).toLocalDate());
                carr.setQuantita(rs.getInt("quantita"));
                carr.setCodiceUtente(rs.getInt("codiceU"));
                carr.setCodiceArticolo(rs.getInt("id"));
                carr.setTotale(rs.getFloat("totale"));
                carrello.add(carr);
            }
            con.close();
            return carrello;
        }
        catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

}




