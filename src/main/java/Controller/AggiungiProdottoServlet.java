package Controller;

import Entity.Prodotto;
import Entity.ProdottoDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "AggiungiProdottoServlet", value = "/AggiungiProdottoServlet")
public class AggiungiProdottoServlet extends HttpServlet {
@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    Prodotto p = new Prodotto();
    ProdottoDao pDAO = new ProdottoDao();
    p.setNome(request.getParameter("nome"));
    p.setTipo(request.getParameter("tipo"));
    p.setPrezzo(Float.parseFloat(request.getParameter("prezzo")));
    p.setLink_immagine(request.getParameter("link_immagine"));
    p.setDescrizione(request.getParameter("descrizione"));
    pDAO.doSave(p.getNome(), p.getPrezzo(), p.getTipo(), p.getLink_immagine(), p.getDescrizione());
    //  RequestDispatcher dispatcher = request.getRequestDispatcher("PORCODDIO");
    //  dispatcher.forward(request, response);
}
}
