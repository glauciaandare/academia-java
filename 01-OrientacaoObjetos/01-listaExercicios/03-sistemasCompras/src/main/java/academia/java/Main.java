package academia.java;

public class Main {
    public static void main(String[] args) {


        Produto p1 = new Produto("Mouse Gamer", 60.00, 2);
        Produto p2 = new Produto("Fone de Ouvido", 100.00, 3);
        Produto p3 = new Produto("Monitor Game", 2000.00, 1);


        carrinhoCompras carrinho = new carrinhoCompras();

        carrinho.adicionarProduto(p1);
        carrinho.adicionarProduto(p2);
        carrinho.adicionarProduto(p3);

        carrinho.listarProdutos();
        System.out.println("--------------------------------------------");
        System.out.printf("Total:                            R$ %.2f\n", carrinho.getTotal());


    }
}