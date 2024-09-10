package Control;

import Model.Utente;
import Model.UtenteDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UtenteDAO DAO = new UtenteDAO();
        String nomeUtente = req.getParameter("nomeUtente");
        String password = req.getParameter("passwordUtente");

        Utente utente = null;
        try {
            utente = DAO.doRetriveByUserName(nomeUtente, password);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        if(utente != null)
        {
            HttpSession session = req.getSession();
            session.setAttribute("logged_user", utente);
        }else System.out.println("Non loggato, errore");

        resp.sendRedirect("index.jsp");
    }
}
