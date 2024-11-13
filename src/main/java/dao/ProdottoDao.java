package dao;

import configurazione.Connessione;
import Entity.Prodotto;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProdottoDao {

    // Recupero prodotto per ID
    public Prodotto doRetrieveById(String cod) {
        Prodotto prodotto = null;
        String query = "SELECT cod, nome, prezzo, tipo, link_immagine, descrizione FROM prodotto WHERE cod = ?";

        try (Connection con = Connessione.connessione();
             PreparedStatement ps = con.prepareStatement(query)) {

            ps.setString(1, cod);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    prodotto = new Prodotto();
                    prodotto.setCodice(rs.getInt("cod"));
                    prodotto.setNome(rs.getString("nome"));
                    prodotto.setPrezzo(rs.getFloat("prezzo"));
                    prodotto.setTipo(rs.getString("tipo"));
                    prodotto.setLink_immagine(rs.getString("link_immagine"));
                    prodotto.setDescrizione(rs.getString("descrizione"));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return prodotto;
    }

    // Salvataggio prodotto nel DB
    public void doSave(String nome, float prezzo, String tipo, String link_immagine, String descrizione) {
        String query = "INSERT INTO prodotto (nome, prezzo, tipo, link_immagine, descrizione) VALUES(?, ?, ?, ?, ?)";

        try (Connection con = Connessione.connessione();
             PreparedStatement ps = con.prepareStatement(query)) {

            ps.setString(1, nome);
            ps.setFloat(2, prezzo);
            ps.setString(3, tipo);
            ps.setString(4, link_immagine);
            ps.setString(5, descrizione);

            if (ps.executeUpdate() != 1) {
                throw new SQLException("Errore durante l'inserimento del prodotto.");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }

    public void doUpdateById(Prodotto p)
    {
        String query = "UPDATE prodotto SET nome=?, prezzo=?, tipo=?,link_immagine=?, descrizione=? WHERE cod=?";
        try(Connection con = Connessione.connessione();
            PreparedStatement ps = con.prepareStatement(query)) {
            ps.setString(1, p.getNome());
            ps.setFloat(2, p.getPrezzo());
            ps.setString(3, p.getTipo());
            ps.setString(4, p.getLink_immagine());
            ps.setString(5, p.getDescrizione());
            ps.setInt(6, p.getCodice());

            ps.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void doDeleteById(String cod) throws SQLException {
        String query = "DELETE FROM prodotto WHERE cod = ?";
        try(Connection con = Connessione.connessione();
            PreparedStatement ps  = con.prepareStatement(query))
        {
            ps.setString(1, cod);
            ps.executeUpdate();
        }
    }

    // Recupero tutti i prodotti
    public List<Prodotto> doRetrieveAll() {
        List<Prodotto> prodotti = new ArrayList<>();
        String query = "SELECT cod, nome, prezzo, tipo, link_immagine, descrizione FROM prodotto";

        try (Connection con = Connessione.connessione();
             PreparedStatement ps = con.prepareStatement(query);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                Prodotto prodotto = new Prodotto();
                prodotto.setCodice(rs.getInt("cod"));
                prodotto.setNome(rs.getString("nome"));
                prodotto.setPrezzo(rs.getFloat("prezzo"));
                prodotto.setTipo(rs.getString("tipo"));
                prodotto.setLink_immagine(rs.getString("link_immagine"));
                prodotto.setDescrizione(rs.getString("descrizione"));
                prodotti.add(prodotto);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return prodotti;
    }

    // Recupero prodotti per tipo
    public List<Prodotto> doRetrieveByTipo(String tipo) {
        List<Prodotto> filtrati = new ArrayList<>();
        String query = "SELECT cod, nome, prezzo, tipo, link_immagine, descrizione FROM prodotto WHERE tipo = ?";

        try (Connection con = Connessione.connessione();
             PreparedStatement ps = con.prepareStatement(query)) {

            ps.setString(1, tipo);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    Prodotto prodotto = new Prodotto();
                    prodotto.setCodice(rs.getInt("cod"));
                    prodotto.setNome(rs.getString("nome"));
                    prodotto.setPrezzo(rs.getFloat("prezzo"));
                    prodotto.setTipo(rs.getString("tipo"));
                    prodotto.setLink_immagine(rs.getString("link_immagine"));
                    prodotto.setDescrizione(rs.getString("descrizione"));
                    filtrati.add(prodotto);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return filtrati;
    }

    // Recupero prodotti per nome
    public List<Prodotto> doRetrieveByNome(String nome) {
        List<Prodotto> list = new ArrayList<>();
        String query = "SELECT cod, nome, prezzo, tipo, link_immagine, descrizione FROM prodotto WHERE nome = ?";

        try (Connection con = Connessione.connessione();
             PreparedStatement ps = con.prepareStatement(query)) {

            ps.setString(1, nome);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    Prodotto prodotto = new Prodotto();
                    prodotto.setCodice(rs.getInt("cod"));
                    prodotto.setNome(rs.getString("nome"));
                    prodotto.setPrezzo(rs.getFloat("prezzo"));
                    prodotto.setTipo(rs.getString("tipo"));
                    prodotto.setLink_immagine(rs.getString("link_immagine"));
                    prodotto.setDescrizione(rs.getString("descrizione"));
                    list.add(prodotto);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return list;
    }
}
