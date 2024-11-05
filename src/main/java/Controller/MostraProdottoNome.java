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
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet(name = "MostraProdottoNome", value = "/MostraProdottoNome")
public class MostraProdottoNome extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nome= request.getParameter("nome");
        ProdottoDao prodottoDAO = new ProdottoDao();
        ArrayList<Prodotto> prodotto = prodottoDAO.doRetrieveByNome(nome);

        PrintWriter output = response.getWriter();

        for(Prodotto p: prodotto)
        {
            output.println(p.getNome());
        }
        request.setAttribute("listaProdotti", prodotto);
        RequestDispatcher dispatcher = request.getRequestDispatcher("Prodotto.jsp");
        dispatcher.forward(request, response);

    }

//CAMI

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
