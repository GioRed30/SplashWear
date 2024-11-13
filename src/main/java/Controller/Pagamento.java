package Controller;

import Entity.ArticoloCarrello;
import Entity.Carrello;
import Entity.Prodotto;
import Entity.Utente;
import com.mysql.cj.xdevapi.Client;
import dao.ArticoloCarrelloDAO;
import dao.CarrelloDAO;
import dao.ProdottoDao;
import dao.UtenteDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;

import static java.awt.SystemColor.window;

@WebServlet(name = "Pagamento", value = "/Pagamento")
public class Pagamento extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UtenteDAO utenteDAO = new UtenteDAO();
        Utente u = (Utente) request.getSession().getAttribute("logged_user");
        ArrayList<Prodotto> car = (ArrayList<Prodotto>) request.getSession().getAttribute("carrello");
        ArticoloCarrelloDAO adao= new ArticoloCarrelloDAO();
        CarrelloDAO cdao= new CarrelloDAO();
        Carrello c= new Carrello();
        int tot = (int) request.getSession().getAttribute("prezzo");

        int quantita=0;
        for(Prodotto p: car){
            quantita++;
            ArticoloCarrello a= new ArticoloCarrello();
            a.setPrezzoUnita(p.getPrezzo());
            a.setCodProdotto(p.getCodice());
            adao.doSave(a);
            ArrayList<ArticoloCarrello> articolicorrenti=(ArrayList<ArticoloCarrello>) adao.doRetrieveAllProduct();

            System.out.println(articolicorrenti.size());
            System.out.println(articolicorrenti.toString());


            int idcurr=1;
            for(ArticoloCarrello acurr:articolicorrenti){
                if(idcurr<acurr.getId())
                    idcurr=acurr.getId();
            }
            a.setId(idcurr);
            tot+= (int) p.getPrezzo();
        }
        c.setDate(LocalDate.now());
        c.setTotale(tot);
        c.setQuantita(quantita);
        c.setCodiceUtente(u.getId());

        int idCarrCurr=0;
        ArrayList<Carrello> carrelli= (ArrayList<Carrello>) cdao.doRetrieveByCodiceU(u.getId());
        for(Carrello carrello: carrelli){
            if(idCarrCurr<carrello.getId()) {
                idCarrCurr = carrello.getId();
            }
        }
        idCarrCurr++;
        c.setId(idCarrCurr);
        for(Prodotto p: car) {
            cdao.doSave(LocalDate.now(), quantita, u.getId(), p.getCodice(), tot);
        }
        request.getSession().setAttribute("carrello",null);
        request.getSession().setAttribute("prezzo",0);
        request.getSession().setAttribute("quantita",0);

        response.sendRedirect(request.getContextPath()+"/JSP/Utente.jsp");
    }
}
