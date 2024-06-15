package academia.java;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        List<Funcionarios> funcionarios = new ArrayList<>();

        for (int i = 0; i < 3; i++) {
            System.out.println("Cadastro do Funcionário " + (i + 1));

            System.out.print("Nome: ");
            String nome = scanner.nextLine();

            System.out.print("Idade: ");
            int idade = Integer.parseInt(scanner.nextLine());

            System.out.print("Telefone: ");
            String telefone = scanner.nextLine();

            System.out.print("Setor: ");
            String setor = scanner.nextLine();

            System.out.print("Cargo: ");
            String cargo = scanner.nextLine();

            System.out.print("Função: ");
            String funcao = scanner.nextLine();

            Funcionarios funcionario = new Funcionarios(nome, idade, telefone, setor, cargo, funcao);
            funcionarios.add(funcionario);

            System.out.println();
        }

        System.out.println("Funcionários cadastrados:");
        for (Funcionarios funcionario : funcionarios) {
            System.out.println(funcionario);
        }

        scanner.close();
    }
}