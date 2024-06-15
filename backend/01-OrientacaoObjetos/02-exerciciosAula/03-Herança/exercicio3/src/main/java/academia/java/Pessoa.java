package academia.java;

public class Pessoa {

    private String nome;
    private int idade;
    private String telefone;

    public Pessoa(String nome, int idade, String telefone) {
        this.nome = nome;
        this.idade = idade;
        this.telefone = telefone;
    }

    public String getNome() {
        return nome;
    }

    public int getIdade() {
        return idade;
    }

    public String getTelefone() {
        return telefone;
    }

    @Override
    public String toString() {
        return "Nome: " + nome + ", Idade: " + idade + ", Telefone: " + telefone;
    }
}
