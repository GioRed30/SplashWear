package Controller;

import java.io.IOException;

import Entity.Prodotto;
import dao.ProdottoDao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/InfoProdotti")
public class InfoProdotti extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Gestione delle richieste GET
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ProdottoDao dao = new ProdottoDao();
        Prodotto p = dao.doRetrieveById(request.getParameter("id"));

        request.setAttribute("prodotto", p);
        request.setAttribute("nome", p.getNome());
        request.setAttribute("link_immagine", "Image/"+p.getLink_immagine());
        request.setAttribute("descrizione", p.getDescrizione());
        request.setAttribute("prezzo", p.getPrezzo());
        request.setAttribute("id", p.getCodice());


        // Inoltra la richiesta alla JSP
        RequestDispatcher dispatcher = request.getRequestDispatcher("/JSP/InfoProdotti.jsp");
        dispatcher.forward(request, response);

    }
}
