package academia.java;

import java.util.Scanner;

public class Principal {
    private Pessoa pessoa;

    public void solicitarDados() {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Informe o tipo: ");
        String tipo = scanner.nextLine();

        System.out.print("Informe o nome: ");
        String nome = scanner.nextLine();

        System.out.print("Informe a idade: ");
        int idade = scanner.nextInt();

        pessoa = new Pessoa(tipo, nome, idade);
        exibirDados();

        scanner.close();
    }

    public void exibirDados() {
        System.out.println("Tipo: " + pessoa.getTipo());
        System.out.println("Nome: " + pessoa.getNome());
        System.out.println("Idade: " + pessoa.getIdade());
        System.out.println("Falar: " + pessoa.falar());
        pessoa.andar();
    }

    public static void main(String[] args) {
        Principal principal = new Principal();
        principal.solicitarDados();
    }
}