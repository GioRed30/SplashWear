package Entity;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProdottoDao {
    public Prodotto doRetrieveById(String cod) {
        Prodotto prodotto = new Prodotto();
        try (Connection con = ConPool.getConnection()) {
            PreparedStatement ps =
                    con.prepareStatement("SELECT cod, nome, prezzo, tipo, link_immagine, descrizione FROM Prodotto WHERE cod=?");
            ps.setString(1, cod);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                prodotto.setCodice(rs.getInt("cod"));
                prodotto.setNome(rs.getString("nome"));
                prodotto.setPrezzo(rs.getFloat("prezzo"));
                prodotto.setTipo(rs.getString("tipo"));
                prodotto.setLink_immagine(rs.getString("link_immagine"));
                prodotto.setDescrizione(rs.getString("descrizione"));
                return prodotto;
            }
            return null;
        }catch(SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void doSave(String nome, float prezzo, String tipo, String link_immagine, String descrizione) {
        try (Connection con = ConPool.getConnection()) {
            PreparedStatement ps = con.prepareStatement(
                    "INSERT INTO prdotto (nome, prezzo, tipo, link_immagine, descrizione) VALUES(?,?,?,?,?)"
            );
            ps.setString(1, nome);
            ps.setFloat(2, prezzo);
            ps.setString(3, tipo);
            ps.setString(4, link_immagine);
            ps.setString(5, descrizione);
            if (ps.executeUpdate() != 1) {
                throw new RuntimeException("INSERT error.");
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public List<Prodotto> doRetrieveAll(){
        ArrayList<Prodotto> prodotti = new ArrayList<>();
        Connection con = null;
        PreparedStatement ps = null;
        try{
            con = ConPool.getConnection();
            ps = con.prepareStatement("SELECT * FROM prodotto");
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                Prodotto prodotto = new Prodotto();
                prodotto.setCodice(rs.getInt("cod"));
                prodotto.setNome(rs.getString("nome"));
                prodotto.setPrezzo(rs.getFloat("prezzo"));
                prodotto.setTipo(rs.getString("tipo"));
                prodotto.setLink_immagine(rs.getString("link_immagine"));
                prodotto.setDescrizione(rs.getString("descrizione"));
                prodotti.add(prodotto);
            }
            con.close();
            return prodotti;
        }
        catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public List<Prodotto> doRetrieveByTipo(String tipo){
        ArrayList<Prodotto> filtrati = new ArrayList<>();
        Connection con = null;
        PreparedStatement ps = null;
        try{
            con = ConPool.getConnection();
            ps = con.prepareStatement("SELECT * FROM prodotto WHERE tipo=?");
            ps.setString(1, tipo);
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                Prodotto prodotto = new Prodotto();
                prodotto.setCodice(rs.getInt("cod"));
                prodotto.setNome(rs.getString("nome"));
                prodotto.setPrezzo(rs.getFloat("prezzo"));
                prodotto.setTipo(rs.getString("tipo"));
                prodotto.setLink_immagine(rs.getString("link_immagine"));
                prodotto.setDescrizione(rs.getString("descrizione"));
                filtrati.add(prodotto);
            }
            con.close();
            return filtrati;
        }
        catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }


    public ArrayList<Prodotto> doRetrieveByNome(String nome) {
        ArrayList<Prodotto> list = new ArrayList<Prodotto>();
        try (Connection con = ConPool.getConnection())
        {
            PreparedStatement ps = con.prepareStatement("SELECT * FROM prodotto WHERE nome=?");
            ps.setString(1, nome);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Prodotto p = new Prodotto();
                p.setCodice((rs.getInt(1)));
                p.setNome(rs.getString(2));
                p.setPrezzo(rs.getFloat(3));
                p.setTipo(rs.getString(4));
                p.setLink_immagine(rs.getString(5));
                p.setDescrizione(rs.getString(6));
                list.add(p);
            }
            return list;
        }
        catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
