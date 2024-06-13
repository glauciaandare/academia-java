package academia.java;

public class Aluno extends Pessoa{
    private int matricula;

    public Aluno(String nome, int rg, String matricula) {
        super(nome, rg);
        this.matricula = Integer.parseInt(matricula);
    }

    @Override
    public String apresentarDados() {
        return super.apresentarDados() + ", Matrícula: " + matricula;
    }
}
