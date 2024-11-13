package Controller;

import Entity.Utente;
import dao.UtenteDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            UtenteDAO DAO = new UtenteDAO();
            String nomeUtente = request.getParameter("nomeUtente");
            String nome = request.getParameter("nome");
            String cognome = request.getParameter("cognome");
            String via = request.getParameter("via");
            int cap = Integer.parseInt(request.getParameter("cap"));
            String telefono = request.getParameter("telefono");
            String password = request.getParameter("passwordUtente");
            int civico = Integer.parseInt(request.getParameter("civico"));
            String citta = request.getParameter("citta");

            Utente U = new Utente(nomeUtente, nome, cognome, via, cap, telefono, password, civico, false, citta);

            DAO.doSave(U);
            response.sendRedirect(request.getContextPath()+"/index.jsp");

        } catch (Exception e) {
            request.getSession().setAttribute("error", "Errore nella registrazione, riprova");
            response.sendRedirect(request.getContextPath() + "/JSP/Errori.jsp");
        }
    }
}