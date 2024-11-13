package Entity;

public class ArticoloCarrello {
    private int id;
    private float prezzoUnita;
    private int codProdotto;

    public ArticoloCarrello(float prezzoUnita, int codProdotto) {
        super();
        this.prezzoUnita = prezzoUnita;
        this.codProdotto = codProdotto;
        this.id = id;
    }

    public ArticoloCarrello() {}

    public float getPrezzoUnita() {
        return prezzoUnita;
    }

    public void setPrezzoUnita(float prezzoUnita) {
        this.prezzoUnita = prezzoUnita;
    }

    public int getCodProdotto() {
        return codProdotto;
    }

    public void setCodProdotto(int codProdotto) {
        this.codProdotto = codProdotto;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "ArticoloCarrello [prezzoUnita=" + prezzoUnita + ", codProdotto=" + codProdotto + "]";
    }





}
