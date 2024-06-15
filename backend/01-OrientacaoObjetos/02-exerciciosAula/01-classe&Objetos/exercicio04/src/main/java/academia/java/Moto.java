package academia.java;

public class Moto {
    public String marca;
    public String modelo;
    public String cilindradas ;

    public void atribuirValores(String marca, String modelo, String cilindradas) {
        this.marca = marca;
        this.modelo = modelo;
        this.cilindradas = cilindradas;
    }

    public void retornarValoresMoto1(){

        System.out.println("A marca da Moto 1 é: " + marca + ", Modelo: " + modelo + ", Cilindradas: " + cilindradas);

    }

    public void retornarValoresMoto2(){

        System.out.println("A marca da Moto 2 é: " + marca + ", Modelo: " + modelo + ", Cilindradas: " + cilindradas);

    }
}
