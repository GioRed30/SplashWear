package Controller;

import Entity.Utente;
import Entity.UtenteDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "CreaSessione", value = "/CreaSessione")
public class CreaSessione extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Utente u = (Utente) request.getSession().getAttribute("utenteSessione");
        UtenteDAO uDAO = new UtenteDAO();
        String nomeUtente = u.getNomeUtente();
        try {
            u = uDAO.doRetriveByUserName(u.getNomeUtente(), u.getPasswordUtente());
        }catch (Exception e){}

        request.getSession().setAttribute("utenteSessione", u);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}