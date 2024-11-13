package Controller;

import Entity.Carrello;
import Entity.Prodotto;
import dao.CarrelloDAO;
import dao.ProdottoDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "CancellaProdottoCarrello", value = "/CancellaProdottoCarrello")
public class CancellaProdottoCarrello extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      //  CarrelloDAO cDao = new CarrelloDAO();
        ProdottoDao prodottoDao = new ProdottoDao();
        Prodotto p = prodottoDao.doRetrieveById(request.getParameter("codice"));
        ArrayList<Prodotto> car = (ArrayList<Prodotto>) request.getSession().getAttribute("carrello");

        for(int i = 0; i < car.size(); i++) {
            if (car.get(i).getCodice() == p.getCodice()) {
                car.remove(car.get(i));
                break;
            }
        }
        int nuovoPrezzo = (int) ((int) request.getSession().getAttribute("prezzo") - p.getPrezzo());
        request.getSession().setAttribute("prezzo", nuovoPrezzo);
        request.getSession().setAttribute("carrello", car);
        response.sendRedirect(request.getContextPath()+"/JSP/Carrello.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
