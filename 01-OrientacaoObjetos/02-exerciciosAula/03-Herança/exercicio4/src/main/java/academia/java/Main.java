package academia.java;

public class Main {
    public static void main(String[] args) {
        Pessoa pessoa = new Pessoa("Laercio da Silva", 12345678);
        Aluno aluno = new Aluno("Cecilia Abranges", 87654321, "2021001");
        Professor professor = new Professor("Carlos Oliveira", 12348765, "PROF123", 4500.50);

        System.out.println(pessoa.apresentarDados());
        System.out.println(aluno.apresentarDados());
        System.out.println(professor.apresentarDados());
    }
}
