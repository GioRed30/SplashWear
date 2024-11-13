package Controller;

import Entity.Prodotto;
import dao.ProdottoDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "ModificaProdotto", value = "/ModificaProdotto")
public class ModificaProdotto extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Prodotto p = new Prodotto();
        ProdottoDao pDAO = new ProdottoDao();
        p.setCodice(Integer.parseInt(request.getParameter("codice")));
        p.setNome(request.getParameter("prodottoNome"));
        p.setTipo(request.getParameter("tipo"));
        p.setPrezzo(Float.parseFloat(request.getParameter("prezzo")));
        p.setLink_immagine(request.getParameter("immagine"));
        p.setDescrizione(request.getParameter("Descrizione"));
        pDAO.doUpdateById(p);
        response.sendRedirect(request.getContextPath()+"/JSP/Admin.jsp");
    }
}
