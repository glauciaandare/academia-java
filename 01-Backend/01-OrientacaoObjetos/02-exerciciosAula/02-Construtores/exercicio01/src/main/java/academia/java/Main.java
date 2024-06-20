package academia.java;

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        System.out.println("|---------------Menu--------------|");
        System.out.println("Qual construtor você prefere usar? ");
        System.out.println("1 - Construtor com Nome e Idade");
        System.out.println("2 - Construtor somente Idade");
        int escolha = entrada.nextInt();

        switch (escolha) {
            case 1:
                System.out.println("Insira o nome: ");
                String nome = entrada.next();
                System.out.println("Insira o idade: ");
                int idade = entrada.nextInt();
                Pessoa pessoa = new Pessoa(nome, idade);
                break;
            case 2:
                System.out.println("Insira o idade: ");
                int idade2 = entrada.nextInt();
                Pessoa pessoa1 = new Pessoa(idade2);
                break;
            default:
                System.out.println("Opção Invalida. Tente novamente.");
                break;
        }
        entrada.close();
    }
}