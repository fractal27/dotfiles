/* File: TestImmobiliare.java
 * Author: Giacomo Dominici
 * Classe: 4BIN
 * Data: 13 dic 2024
 * */
import java.util.ArrayList;

public class TestImmobiliare{

    //@SuppressWarnings({"unchecked","rawtypes"})
    public static void main(String[] args){
        ArrayList<Abitazione> immobiliare = new ArrayList<Abitazione>(); //rawtypes
        Abitazione abitazione;
        Villa villa;
        Appartamento app;

        // Aggiungere alcune Ville
        immobiliare.add(new Villa(1,6,250.0,500.0,"Via Roma 1","Roma",true, new Punto2D(-1,2),4));

        // Aggiungere alcuni Appartamenti
        immobiliare.add(new Appartamento(2,1,100.0,"Via Napoli 2","Napoli",true,new Punto2D(1,1),3));
        immobiliare.add(new Appartamento(1,1,80.0,"Via Torino 3","Torino",false,new Punto2D(1,1),2)); 

        // Aggiungere altra villa e un altro appartamento
        immobiliare.add(new Villa(1,6,300.0,700.0,"Via Milano 4","Milano",false,new Punto2D(2,2),1));
        immobiliare.add(new Appartamento(1,2,90.0,"Via Torino 5","Torino",false,new Punto2D(1,3),3));

        for(int i = 0; i < immobiliare.size(); i++){
            abitazione =  (Abitazione)immobiliare.get(i); //unchecked
            if(abitazione instanceof Villa){
                villa = (Villa) abitazione;
                System.out.println("Villa("+
                        "npiani = " +
                        villa.getNumPiani() +
                        ",superficegiardino = " +
                        villa.getAreaGiardino() +
                        ",superficeinterno = "+
                        villa.getSuperfice() +
                        ",indirizzo = "+
                        villa.getIndirizzo() +
                        ",città = "+
                        villa.getCitta()+
                        ",contienepiscina = "+
                        (villa.getContienePiscina()
                            ? "true"
                            : "false") +
                        ",posizione = "+
                        villa.getP()+
                        ",copertura = "+
                        villa.getCopertura()+
                        ")");
            } else if (abitazione instanceof Appartamento){
                app = (Appartamento) abitazione;
                System.out.println("Appartamento("+
                       "numero terrazzi = " +
                       app.getNterrazzi()+
                       ",numero stanze = "+
                       app.getNstanze()+
                       ",superfice = "+
                       app.getSuperfice() +
                       ",indirizzo = "+
                       app.getIndirizzo()+
                       ",città = "+
                       app.getCitta()+
                       ",haAscensore="+
                       (app.getHaAscensore()
                            ? "true"
                            : "false")+
                       ",posizione = "+
                       app.getP()+
                       ",copertura = "+
                       app.getCopertura()+
                       ")");
            }
        }
    }
}

