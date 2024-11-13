package Controller;

import Entity.Prodotto;
import dao.ProdottoDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "EliminaProdotto", value = "/EliminaProdotto")
public class EliminaProdotto extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProdottoDao dao = new ProdottoDao();
        try {
            dao.doDeleteById(request.getParameter(("codice")));
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        response.sendRedirect(request.getContextPath()+"/JSP/Admin.jsp");
    }
}
