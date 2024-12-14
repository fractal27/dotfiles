/*
 * Classe Abitazione
 */
public class Abitazione {
    private int nstanze;
    private double superfice;
    private String indirizzo;
    private String citta;

    private Punto2D posizione = new Punto2D(0,0);
    private int copertura;

    public Abitazione(int nstanze, double superfice, String indirizzo,
            String città, Punto2D p, int cop){
        this.setNstanze(nstanze);
        this.setSuperfice(superfice);
        this.setIndirizzo(indirizzo);
        this.setCitta(città);
        this.setCopertura(cop);
        this.setP(p);
    }
    public Abitazione(Abitazione a){
        this(a.getNstanze(), a.getSuperfice(), a.getIndirizzo(), a.getCitta(), a.getP(), a.getCopertura());
    }

    public int getNstanze(){
        return this.nstanze;
    }

    public double getSuperfice(){
        return this.superfice;
    }

    public String getIndirizzo(){
        return this.indirizzo;
    }

    public String getCitta(){
        return this.citta;
    }

    public void setNstanze(int nstanze){
        if(nstanze <= 0){
            return;
        }
        this.nstanze = nstanze;
    }

    public Punto2D getP(){
        return new Punto2D(this.posizione); 
    }

    public int getCopertura(){
        return this.copertura;
    }

    public void setSuperfice(double area){
        if(nstanze <= 0){
            return;
        }
        this.superfice = area;
    }

    public void setIndirizzo(String indirizzo){
        this.indirizzo = indirizzo;
    }

    public void setCitta(String c){
        this.citta = c;
    }

    public void setP(Punto2D posizione){
        this.posizione = posizione;
    }

    public void setCopertura(int cop){
        this.copertura = cop;
    }

    public String toString(){
        return "Abitazione[nstanze="+ nstanze +";superfice="+ superfice +"m^2;indirizzo="+ indirizzo +";città="+citta+"]";
    }

    public boolean equals(Abitazione altro){
        return this.getNstanze()    == altro.getNstanze() &&
                this.getSuperfice() == altro.getSuperfice() &&
                this.getIndirizzo() == altro.getIndirizzo() &&
                this.getCitta()     == altro.getCitta() &&
                this.getCopertura() == altro.getCopertura();
    }
    public double calcolaTassa(){
        return 0.30*this.getSuperfice();
    }
}


