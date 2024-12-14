public class Appartamento extends Abitazione {

    private int nterrazzi;
    private boolean haAscensore;

    public Appartamento(int nterrazzi, int nstanze, 
                double superfice, String indirizzo, String citta,
                boolean haAscensore, Punto2D p, int cop){ //p = posizione
        super(nstanze,superfice,indirizzo,citta, p, cop);
        this.setNterrazzi(nterrazzi);
        this.setHaAscensore(haAscensore);
    }
    public Appartamento(int nterrazzi, int nstanze, 
                double superfice, 
                boolean haAscensore, Punto2D p, int cop){
        super(nstanze,superfice,"<Indirizzo sconosciuto>",
                "<Città sconosciuta>", p, cop);
        this.setNterrazzi(nterrazzi);
        this.setHaAscensore(haAscensore);
    }


    public Appartamento(Appartamento
            appartamento){
        super(appartamento.getNstanze(),appartamento.getSuperfice(),
                appartamento.getIndirizzo(), appartamento.getCitta(),
                appartamento.getP(), appartamento.getCopertura());
        this.setNterrazzi(appartamento.getNterrazzi());
        this.setHaAscensore(appartamento.getHaAscensore());
    }

    public void setNterrazzi(int nterrazzi) {
        this.nterrazzi = nterrazzi;
    }
    public void setHaAscensore(boolean haAscensore){
        this.haAscensore = haAscensore;
    }
    public int getNterrazzi(){
        return this.nterrazzi;
    }
    public boolean getHaAscensore(){
        return this.haAscensore;
    }

    public double calcoloTassa(){
        return  1.5*super.getSuperfice()+
                10*(this.getHaAscensore()?1:0)+
                7*this.getNterrazzi();
    }
}

