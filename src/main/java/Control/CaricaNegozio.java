package Control;

import Model.Prodotto;
import Model.ProdottoDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/CaricaNegozio")
public class CaricaNegozio extends HttpServlet {

    public CaricaNegozio() {}

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ProdottoDAO prodottoDAO = new ProdottoDAO();
        ArrayList<Prodotto> prodotti = (ArrayList<Prodotto>) prodottoDAO.doRetrieveAll();

        req.setAttribute("Negozio", prodotti);
    }
}
