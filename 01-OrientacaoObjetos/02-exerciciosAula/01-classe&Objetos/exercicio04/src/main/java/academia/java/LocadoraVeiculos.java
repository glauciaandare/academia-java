package academia.java;
import java.util.Scanner;

public class LocadoraVeiculos {
    public static void main(String[] args) {

        try (Scanner sc = new Scanner(System.in)) {
            Carro carro = new Carro();
            System.out.println("Informe o fabricante do carro: ");
            carro.fabricante = sc.nextLine();
            System.out.println("Informe o modelo do carro: ");
            carro.modelo = sc.nextLine();

            Moto moto1 = new Moto();
            System.out.println("Informe a marca da moto 1: ");
            moto1.marca = sc.nextLine();
            System.out.println("Informe o modelo da moto 1: ");
            moto1.modelo = sc.nextLine();
            System.out.println("Informe a cilindradas da moto 1: ");
            moto1.cilindradas = sc.nextLine();

            Moto moto2 = new Moto();
            System.out.println("Informe a marca da moto 2: ");
            moto2.marca = sc.nextLine();
            System.out.println("Informe o modelo da moto 2: ");
            moto2.modelo = sc.nextLine();
            System.out.println("Informe a cilindradas da moto 2: ");
            moto2.cilindradas = sc.nextLine();

            carro.exibirDados();
            moto1.retornarValoresMoto1();
            moto2.retornarValoresMoto2();

            sc.close();
        }
    }
}