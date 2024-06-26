package academia.java;

public class Produto {

    private String nome;
    private double preco;
    private int quantidade;

    public Produto(String nome, double preco, int quantidade) {
        this.nome = nome;
        this.preco = preco;
        this.quantidade = quantidade;
    }

    public String getNome() {
        return nome;
    }

    public double getPreco() {
        return preco;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public  double getSubTotal(){
        return preco*quantidade;
    }

    public String toString() {
        return String.format("%-15s R$ %-8.2f %-5d R$ %-8.2f", nome, preco, quantidade, getSubTotal());
    }
}
