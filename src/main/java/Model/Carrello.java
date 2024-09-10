package Model;
import java.time.LocalDate;

public class Carrello {
    private int id;
    private LocalDate date;
    private int quantita;
    private int codiceUtente;
    private int codiceArticolo;
    private float totale;

    public Carrello(LocalDate date, int quantita, int codiceUtente, int codiceArticolo, float totale) {
        super();
        this.date = date;
        this.quantita = quantita;
        this.codiceUtente = codiceUtente;
        this.codiceArticolo = codiceArticolo;
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

    public int getCodiceArticolo() {
        return codiceArticolo;
    }

    public void setCodiceArticolo(int codiceArticolo) {
        this.codiceArticolo = codiceArticolo;
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
                + ", codiceArticolo=" + codiceArticolo + ", totale=" + totale + "]";
    }




}
