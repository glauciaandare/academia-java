package academia.java;

public class Carro {
    public String fabricante = "VW";
    public String modelo = "Jetta";

    public void ligar(){
        System.out.println("Carro Ligado");
    }

    public void desligar(){
        System.out.println("Carro Desligado");

    }

    public void exibirDados(){
        System.out.println("O Fabricante do Carro é: " + fabricante + " e " + "O Modelo do Carro é: " + modelo);

    }
}
