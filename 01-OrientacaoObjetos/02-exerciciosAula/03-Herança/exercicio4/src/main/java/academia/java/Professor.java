package academia.java;

public class Professor extends Pessoa {
    private String matricula;
    private double salario;

    public Professor(String nome, int rg, String matricula, double salario) {
        super(nome, rg);
        this.matricula = matricula;
        this.salario = salario;
    }

    @Override
    public String apresentarDados() {
        return super.apresentarDados() + ", Matrícula: " + matricula + ", Salário: " + String.format("%.2f", salario);
    }
}

