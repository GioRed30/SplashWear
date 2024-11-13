package Controller;

import Entity.Prodotto;
import dao.ProdottoDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "AggiungiProdottoServlet", value = "/AggiungiProdottoServlet")
public class AggiungiProdottoServlet extends HttpServlet {
@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    try {
        Prodotto p = new Prodotto();
        ProdottoDao pDAO = new ProdottoDao();
        p.setNome(request.getParameter("prodottoNome"));
        p.setTipo(request.getParameter("tipo"));
        p.setPrezzo(Float.parseFloat(request.getParameter("prezzo")));
        p.setLink_immagine(request.getParameter("immagine"));
        p.setDescrizione(request.getParameter("Descrizione"));
        pDAO.doSave(p.getNome(), p.getPrezzo(), p.getTipo(), p.getLink_immagine(), p.getDescrizione());
        response.sendRedirect(request.getContextPath()+"/JSP/Admin.jsp");
    } catch (Exception e) {
        request.getSession().setAttribute("error", "Errore nell'aggiunta di un nuovo prodotto, riprova immettendo tutti i campi necessari");
        response.sendRedirect(request.getContextPath()+"/JSP/Errori.jsp");
    }
}
}
