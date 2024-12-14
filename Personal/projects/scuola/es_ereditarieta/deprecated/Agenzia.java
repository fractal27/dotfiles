
public class Agenzia {
    private Abitazione[] abitazioni;
    private int nabitazioni = 0;
    private final int MAXABITAZIONI = 1024;


    public Agenzia(){
        this.abitazioni = new Abitazione[MAXABITAZIONI];
    }

    public Abitazione[] getAbitazioni(){
        return this.abitazioni;
    }

    public int getNabitazioni(){
        return this.nabitazioni;
    }

    public void add(Abitazione a){
        if(a != null){
            if(a instanceof Villa){
                this.abitazioni[nabitazioni] = new Villa((Villa)a);
            }
            if(a instanceof Appartamento){
                this.abitazioni[nabitazioni] = new Appartamento((Appartamento)a);
            }
            nabitazioni++;
        }
    }
    public void remove(){
        if(nabitazioni > 0){
            abitazioni[--nabitazioni] = null; //gc automatico
        }
    }

    public double calcoloTassa(){
        double tassatot = 0;
        for(int i = 0; i < nabitazioni; i++){
            tassatot += this.getAbitazioni()[i].calcolaTassa();
        }
        return tassatot;
    }

    public String toString(){
        String stringa = "Agenzia(";
        for(int i = 0;i < nabitazioni; i++){
            stringa+="\n\t"+this.abitazioni[i];
        }
        stringa+=")";
        return stringa;
    }
}

