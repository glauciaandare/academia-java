package academia.java;

import java.util.Scanner;

public class Principal extends Usuario{
    public static void main(String[] args) {

        Scanner entrada = new Scanner(System.in);

        System.out.println("Informe seu nome: ");
        String nome = entrada.nextLine();

        System.out.println("Informe seu email: ");
        String email = entrada.nextLine();

        System.out.println("Informe seu telefone: ");
        String telefone = entrada.nextLine();


        Principal usuario = new Principal();
        usuario.setNome(nome);
        usuario.setEmail(email);
        usuario.setTelefone(telefone);

        System.out.println(" ");
        System.out.println("Saida: ");
        System.out.println("Nome: " + usuario.getNome());
        System.out.println("E-mail: " + usuario.getEmail());
        System.out.println("Telefone: " + usuario.getTelefone());

        entrada.close();
    }
}