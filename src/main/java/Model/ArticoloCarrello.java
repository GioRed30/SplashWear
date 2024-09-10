package Model;

public abstract class ArticoloCarrello {
    private float prezzoUnita;
    private int codProdotto;

    public ArticoloCarrello(float prezzoUnita, int codProdotto) {
        super();
        this.prezzoUnita = prezzoUnita;
        this.codProdotto = codProdotto;
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

    @Override
    public String toString() {
        return "ArticoloCarrello [prezzoUnita=" + prezzoUnita + ", codProdotto=" + codProdotto + "]";
    }





}
