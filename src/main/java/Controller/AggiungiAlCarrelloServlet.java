package Controller;

import Entity.Prodotto;
import Entity.ProdottoDao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "AggiungiAlCarrello", value = "/AggiungiAlCarrello")
public class AggiungiAlCarrelloServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);

    ArrayList<Prodotto> carrello = (ArrayList<Prodotto>) req.getSession().getAttribute("carrello");
    int quantita;
    float prezzo;
    if(req.getSession().getAttribute("quantita") != null){
        quantita = 0;
        prezzo = 0;
    }else{
        quantita = (int)req.getSession().getAttribute("quantita");
    }
    if(req.getSession().getAttribute("prezzo") != null){
        prezzo = 0.0F;
    }else {
        prezzo = (float)req.getSession().getAttribute("prezzo");
    }
    if(carrello == null){
        carrello = new ArrayList<>();
        req.getSession().setAttribute("carrello", carrello);
    }
    Prodotto p = new Prodotto();
    ProdottoDao pDAO = new ProdottoDao();
    p = pDAO.doRetrieveById(req.getParameter("id"));
    carrello.add(p);
    quantita++;
    prezzo += p.getPrezzo();
    req.getSession().setAttribute("quantita", quantita);
    req.getSession().setAttribute("prezzo", prezzo);
    RequestDispatcher dispatcher = req.getRequestDispatcher("index.jsp");
    dispatcher.forward(req, resp);

    }

}
