package Controller;

import Entity.Prodotto;
import com.mysql.cj.Session;
import dao.ProdottoDao;
import dao.UtenteDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.text.DecimalFormat;
import java.util.ArrayList;

@WebServlet(name = "AggiungiAlCarrello", value = "/AggiungiAlCarrello")
public class AggiungiAlCarrelloServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try {
            ArrayList<Prodotto> carrello = (ArrayList<Prodotto>) req.getSession().getAttribute("carrello");
            int quantita;
            float prezzo;
            if (req.getSession().getAttribute("quantita") == null) {
                quantita = 0;
                prezzo = 0;
            } else {
                quantita = Integer.parseInt(req.getParameter("quantita"));
            }
            if (req.getSession().getAttribute("prezzo") == null) {
                prezzo = 0.0F;
            } else {
                prezzo = Float.parseFloat(req.getParameter("prezzo"));
            }
            if (carrello == null) {
                carrello = new ArrayList<>();
                req.getSession().setAttribute("carrello", carrello);
            }

            Prodotto pr = new Prodotto();
            ProdottoDao prDAO = new ProdottoDao();
            pr = prDAO.doRetrieveById(req.getParameter("id"));
            carrello.add(pr);
            quantita++;
            prezzo = 0;
            for(Prodotto k : carrello) {
                prezzo += k.getPrezzo();
            }
            int prezzoInt = (int) prezzo;
            req.getSession().setAttribute("quantita", quantita);
            req.getSession().setAttribute("prezzo", prezzoInt);
        } catch (Exception e) {
            resp.sendRedirect("index.jsp");
        }
    }
}
