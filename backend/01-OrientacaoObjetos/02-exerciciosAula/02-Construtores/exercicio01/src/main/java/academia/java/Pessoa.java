package academia.java;

public class Pessoa {
    public String nome;
    public int idade;

    public Pessoa(String nome, int idade) {
        this.nome = nome;
        this.idade = idade;
        System.out.println("Nome é: " + nome + " , e a Idade é: " + idade + "\n");
    }

    public Pessoa(int idade) {
        this.idade = idade;
        System.out.println("Idade é: " + idade);
    }

}
