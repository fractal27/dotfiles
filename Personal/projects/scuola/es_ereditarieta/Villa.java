

public class Villa extends Abitazione{
    private int numPiani;
    private double areaGiardino;
    private boolean contienePiscina = false;

    public Villa(int npiani, int nstanze, 
                double superficeGiardino,
                double superficeInterno,
                String indirizzo, String città,
                boolean contienepiscina,
                Punto2D p, int cop){
        super(nstanze,superficeInterno,indirizzo,
                città, p, cop);
        this.setNumPiani(npiani);
        this.setAreaGiardino(areaGiardino);
        this.setContienePiscina(contienepiscina);
     }
    public Villa(int npiani, int nstanze, 
                double superficeGiardino,
                double superficeInterno,
                boolean contienepiscina,
                Punto2D p, int cop){
        super(nstanze,superficeInterno,"<Indirizzo sconosciuto>","<Città sconosciuta>", p, cop);
        this.setNumPiani(npiani);
        this.setAreaGiardino(areaGiardino);
        this.setContienePiscina(contienepiscina);
    }
    public Villa(Villa villa){
        super(villa.getNstanze(),villa.getSuperfice(),villa.getIndirizzo(),villa.getCitta(), villa.getP(), villa.getCopertura());
        this.setNumPiani(villa.getNumPiani());
        this.setAreaGiardino(villa.getAreaGiardino());
        this.setContienePiscina(villa.getContienePiscina());
    }


    public void setNumPiani(int npiani){
        this.numPiani = npiani;
    }

    public void setAreaGiardino(double area){
        this.areaGiardino = area;
    }

    public void setContienePiscina(boolean contienePiscina){
        this.contienePiscina = contienePiscina;
    }

    public int getNumPiani(){
        return this.numPiani;
    }

    public double getAreaGiardino(){
        return this.areaGiardino;
    }

    public boolean getContienePiscina(){
        return this.contienePiscina;
    }

    public double calcoloTassa(){
        return  1.5*super.getSuperfice()+
                100*(this.getContienePiscina()?1:0)+
                0.3*this.getAreaGiardino();
    }
}
