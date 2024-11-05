package Entity;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ArticoloCarrelloDAO {
    public List<ArticoloCarrello> doRetrieveAllProduct() {
        List<ArticoloCarrello> list = new ArrayList<ArticoloCarrello>();
        try (Connection con = ConPool.getConnection())
        {
            PreparedStatement ps = con.prepareStatement("SELECT * FROM articolocarrello");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ArticoloCarrello p = new ArticoloCarrello();
                p.setId(rs.getInt(1));
                p.setPrezzoUnita(rs.getFloat(2));
                p.setCodProdotto(rs.getInt(3));
                list.add(p);
            }
            return list;
        }
        catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void doSave(ArticoloCarrello articolo) {
        try (Connection con = ConPool.getConnection()) {
            PreparedStatement ps = con.prepareStatement(
                    "INSERT INTO articolocarrello ( prezzoUnita, codiceUtente, nomeUtente, codProdotto, id) VALUES(?,?,?,?,?)"
                    //            , Statement.RETURN_GENERATED_KEYS                   // questo codice è utile solo se si vuole restituire il bean customer completo di id
            );                                                            // in questo caso restituiamo  void per cui è inutile

            ps.setFloat(1, articolo.getPrezzoUnita());
            ps.setInt(2, articolo.getCodProdotto());
            ps.setInt(3, articolo.getId());
            if (ps.executeUpdate() != 1) {
                throw new RuntimeException("INSERT error.");
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void doDelete(int id) {
        try(Connection con = ConPool.getConnection()) {
            PreparedStatement ps = con.prepareStatement("" +
                    "DELETE FROM articolocarrello WHERE id =?", Statement.RETURN_GENERATED_KEYS);
            ps.setInt(1, id);
            if (ps.executeUpdate() != 1) {
                throw new RuntimeException("INSERT error.");
            }
        } catch (SQLException e) {
            throw  new RuntimeException(e);
        }
    }
}
