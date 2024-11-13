package Entity;
import java.time.LocalDate;
import java.util.ArrayList;


// il carrello non è altro che l'ordino, ovvero il carrello acquistato

public class Carrello {
    private int id;
    private LocalDate date;
    private int quantita;
    private int codiceUtente;
    //private int codiceArticolo;
    private float totale;
    private ArrayList<ArticoloCarrello> articoli;


    public ArrayList<ArticoloCarrello> getArticoli() {
        return articoli;
    }

    public void setArticoli(ArrayList<ArticoloCarrello> articoli) {
        this.articoli = articoli;
    }




    public Carrello(LocalDate date, int quantita, int codiceUtente,  float totale) {
        super();
        this.date = date;
        this.quantita = quantita;
        this.codiceUtente = codiceUtente;
       // this.codiceArticolo = codiceArticolo;
        this.totale = totale;
    }

    public Carrello() {}

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    public int getQuantita() {
        return quantita;
    }

    public void setQuantita(int quantita) {
        this.quantita = quantita;
    }

    public int getCodiceUtente() {
        return codiceUtente;
    }

    public void setCodiceUtente(int codiceUtente) {
        this.codiceUtente = codiceUtente;
    }


    public float getTotale() {
        return totale;
    }

    public void setTotale(float totale) {
        this.totale = totale;
    }

    @Override
    public String toString() {
        return "Carrello [date=" + date + ", quantita=" + quantita + ", codiceUtente=" + codiceUtente
                + ", totale=" + totale + "]";
    }




}
