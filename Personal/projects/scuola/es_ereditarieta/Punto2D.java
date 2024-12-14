public class Punto2D{
    //variabili
    private double x;
    private double y;

    //costruttore
    public Punto2D(){
        this.setX(0);
        this.setY(0);
    }
    public Punto2D(double x,double y){
        this.setX(x);
        this.setY(y);
    }
    public Punto2D(Punto2D p){
        this(p.getX(),p.getY());
    }
    //set/get
    
    public double getY(){
        return this.y;
    }
    public double getX(){
        return this.x;
    }

    public void setY(double y){
        this.y = y;
    }
    public void setX(double x){
        this.x = x;
    }

    /* Distanza dall'origine */
    public double calcolaDistanza(){
        return Math.sqrt(x*x+y*y);
    }
    /* Distanza da un punto p*/
    public double calcolaDistanza(Punto2D p){
        return Math.sqrt((this.getX()-p.getX())*(this.getX()-p.getX())+
                         (this.getY()-p.getY())*(this.getY()-p.getY()));
    }
    public double calcolaDistanza(double x, double y){
        return Math.sqrt((this.getX()-x)*(this.getX()-x)+
                         (this.getY()-y)*(this.getY()-y));
    }
    /*Rappresentatore della stringa*/
    public String toString(){
        return "Punto2D(x="+this.x+",y="+this.y+")";
    }
}


