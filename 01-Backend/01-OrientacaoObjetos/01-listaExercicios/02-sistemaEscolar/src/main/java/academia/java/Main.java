package academia.java;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        Aluno[] alunos = new Aluno[5];
        for (int i = 0; i < alunos.length; i++) {
            System.out.println("Escreva o nome do aluno " + (i + 1) + ":");
            String nome = sc.nextLine();

            System.out.println("Informe a idade do aluno " + (i + 1) + ":");
            int idade = Integer.parseInt(sc.nextLine());

            System.out.println("Informe a matricula do aluno " + (i + 1) + ":");
            int matricula = Integer.parseInt(sc.nextLine());
            sc.nextLine();

            alunos[i] = new Aluno(nome, idade, matricula);
        }

        System.out.println("Informe o nome da primeira turma: ");
        String nomeTurmaA = sc.nextLine();

        System.out.println("Informe o codigo da primeira turma: ");
        String codigoTurmaA = sc.nextLine();

        Turma turmaA = new Turma(nomeTurmaA, codigoTurmaA);

        System.out.println("Informe o nome da segunda turma: ");
        String nomeTurmaB = sc.nextLine();

        System.out.println("Informe o código da segunda turma:");
        String codigoTurmaB = sc.nextLine();

        Turma turmaB = new Turma(nomeTurmaB, codigoTurmaB);

        for (Aluno aluno : alunos) {
            turmaA.adicionarAluno(aluno);
            turmaB.adicionarAluno(aluno);
        }

        System.out.println("Alunos na " + turmaA.getNome() + ":");
        turmaA.listarAlunos();

        System.out.println("Alunos na " + turmaB.getNome() + ":");
        turmaB.listarAlunos();

        sc.close();

    }
}