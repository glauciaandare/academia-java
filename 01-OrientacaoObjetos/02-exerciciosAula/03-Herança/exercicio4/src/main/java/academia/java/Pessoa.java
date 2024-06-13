package academia.java;

public class Pessoa {
    private String nome;
    private int rg;

    public Pessoa(String nome, int rg) {
        this.nome = nome;
        this.rg = rg;
    }

    public String apresentarDados() {
        return "Nome: " + nome + ", RG: " + rg;
    }
}

