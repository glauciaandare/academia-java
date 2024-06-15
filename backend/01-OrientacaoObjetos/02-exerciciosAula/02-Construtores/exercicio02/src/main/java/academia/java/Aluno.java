package academia.java;

public class Aluno {

    private String nome;
    private int matricula;
    private String dataNascimento;
    private int anoIngresso;

    public Aluno(String nome, int matricula) {
        this.nome = nome;
        this.matricula = matricula;
    }

    public Aluno(String dataNascimento) {
        this.dataNascimento = dataNascimento;
    }

    public Aluno(String dataNascimento, String nome, int anoIngresso) {
        this.dataNascimento = dataNascimento;
        this.nome = nome;
        this.anoIngresso = anoIngresso;
    }

    public String toString() {
        return  "{" +
                "nome='" + nome + '\'' +
                ", matricula='" + matricula + '\'' +
                ", dataNascimento='" + dataNascimento + '\'' +
                ", anoIngresso=" + anoIngresso +
                '}';
    }
}
