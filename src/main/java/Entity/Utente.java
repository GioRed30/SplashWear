package Entity;

public class Utente {
    private int id;
    private String nomeUtente;
    private String nome;
    private String cognome;
    private String via;
    private int cap;
    private String telefono;
    private String passwordUtente;
    private int civico;
    private boolean amministratore;
    private String citta;


    public Utente() {}

    public Utente(String nomeUtente, String nome, String cognome, String via, int cap, String telefono,
                  String passwordUtente, int civico, boolean amministratore, String citta) {
        super();
        this.nomeUtente = nomeUtente;
        this.nome = nome;
        this.cognome = cognome;
        this.via = via;
        this.cap = cap;
        this.telefono = telefono;
        this.passwordUtente = passwordUtente;
        this.civico = civico;
        this.amministratore = amministratore;
        this.citta = citta;
    }

    public String getNomeUtente() {
        return nomeUtente;
    }

    public void setNomeUtente(String nomeUtente) {
        this.nomeUtente = nomeUtente;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCognome() {
        return cognome;
    }

    public void setCognome(String cognome) {
        this.cognome = cognome;
    }

    public String getVia() {
        return via;
    }

    public void setVia(String via) {
        this.via = via;
    }

    public int getCap() {
        return cap;
    }

    public void setCap(int cap) {
        this.cap = cap;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getPasswordUtente() {
        return passwordUtente;
    }

    public void setPasswordUtente(String passwordUtente) {
        this.passwordUtente = passwordUtente;
    }

    public int getCivico() {
        return civico;
    }

    public void setCivico(int civico) {
        this.civico = civico;
    }

    public boolean isAmministratore() {
        return amministratore;
    }

    public void setAmministratore(boolean amministratore) {
        this.amministratore = amministratore;
    }

    public String getCitta() {
        return citta;
    }

    public void setCitta(String citta) {
        this.citta = citta;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    // Override del metodo clone
    @Override
    public Utente clone() {
        try {
            return (Utente) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException("Clone not supported for Utente class", e);
        }
    }

    // Override di toString, equals e hashCode


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Utente utente = (Utente) o;

        return nomeUtente != null ? nomeUtente.equals(utente.nomeUtente) : utente.nomeUtente == null;
    }

    @Override
    public String toString() {
        return "Utente [nomeUtente=" + nomeUtente + ", nome=" + nome + ", cognome=" + cognome + ", via=" + via
                + ", cap=" + cap + ", telefono=" + telefono + ", passwordUtente=" + passwordUtente + ", civico="
                + civico + ", amministratore=" + amministratore + ", citta=" + citta + "]";
    }

    @Override
    public int hashCode() {
        return nomeUtente != null ? nomeUtente.hashCode() : 0;
    }
}
