package Controller;

import java.util.ArrayList;

import Entity.Prodotto;
import Entity.ProdottoDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "CaricaNegozio", value = "/CaricaNegozio")
public class CaricaNegozio extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException {
        ProdottoDao pdao = new ProdottoDao();
        ArrayList<Prodotto> prodottos = (ArrayList<Prodotto>) pdao.doRetrieveAll();

        req.setAttribute("Negozio", prodottos);
    }
}