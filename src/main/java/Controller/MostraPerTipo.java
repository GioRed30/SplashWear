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

@WebServlet("/MostraPerTipo")
public class MostraPerTipo extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("MyServlet è stata richiamata correttamente.");
        String genere = request.getParameter("tipo");
        ProdottoDao prodottoDAO = new ProdottoDao();
        ArrayList<Prodotto> prodotto = (ArrayList<Prodotto>) prodottoDAO.doRetrieveByTipo(genere);

     /*   PrintWriter output = response.getWriter();

        for(Prodotto p: prodotto)
        {
            output.println(p.getNome());
        }*/
        request.setAttribute("listaProdotti", prodotto);
        RequestDispatcher dispatcher = request.getRequestDispatcher("JSP/Prodotti.jsp");
        dispatcher.forward(request, response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doGet(request,response);
    }
}
