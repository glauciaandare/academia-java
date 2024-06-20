package academia.java;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        System.out.print("Digite o seu nome: ");
        String nome = sc.nextLine();

        System.out.print("Digite o seu salário: ");
        double salario = sc.nextDouble();

        sc.close();

        Pessoa pessoa = new Pessoa(nome, salario);
        ImpostoDeRenda impostoDeRenda = new ImpostoDeRenda(pessoa);

        impostoDeRenda.imprimir();
    }
}