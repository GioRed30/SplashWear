package Model;

public class Prodotto {

    private int codice;
    private String nome;
    private float prezzo;
    private String tipo;
    private String link_immagine;
    private String descrizione;

    public Prodotto() {}

    public Prodotto(String nome, float prezzo, String tipo, String link_immagine, String descrizione) {
        super();
        this.nome = nome;
        this.prezzo = prezzo;
        this.tipo = tipo;
        this.link_immagine = link_immagine;
        this.descrizione = descrizione;
    }

    public int getCodice() {
        return codice;
    }

    public void setCodice(int codice) {
        this.codice = codice;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public float getPrezzo() {
        return prezzo;
    }

    public void setPrezzo(float prezzo) {
        this.prezzo = prezzo;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getLink_immagine() {
        return link_immagine;
    }

    public void setLink_immagine(String link_immagine) {
        this.link_immagine = link_immagine;
    }

    public String getDescrizione() {
        return descrizione;
    }

    public void setDescrizione(String descrizione) {
        this.descrizione = descrizione;
    }

    @Override
    public String toString() {
        return "Prodotto [nome=" + nome + ", prezzo=" + prezzo + ", tipo=" + tipo + ", link_immagine=" + link_immagine
                + ", descrizione=" + descrizione + "]";
    }







}