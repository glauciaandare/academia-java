package academia.java;

public class Carro {

    public String fabricante;
    public String modelo;

    public void configurarDados(String fabricanteCarro, String modeloCarro){
        fabricante = fabricanteCarro;
        modelo = modeloCarro;
    }

    public void exibirDados() {
        System.out.println("Dados do Carro: " + fabricante + " " + modelo);
    }

}

