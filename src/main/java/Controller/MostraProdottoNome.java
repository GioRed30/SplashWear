package Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import dao.ProdottoDao;
import Entity.Prodotto;
import java.io.IOException;
import java.util.List;

@WebServlet("/VisualizzaProdottiServlet")
public class MostraProdottoNome extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Creazione di un'istanza del DAO per accedere ai dati dei prodotti
        ProdottoDao prodottoDao = new ProdottoDao();

        // Recupero dei prodotti dal database
        List<Prodotto> listaProdotti = prodottoDao.doRetrieveAll();

        // Salvataggio della lista di prodotti nella sessione
        request.getSession().setAttribute("listaProdotti", listaProdotti);

        // Reindirizzamento alla pagina JSP per la visualizzazione
        request.getRequestDispatcher("/JSP/Prodotti.jsp").forward(request, response);


    }
}
