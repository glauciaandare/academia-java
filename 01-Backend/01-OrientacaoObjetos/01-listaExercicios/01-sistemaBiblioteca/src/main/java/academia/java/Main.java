package src.main.java.academia.java;
public class Main {
    public static void main(String[] args) {

        Livro livro1 = new Livro("Duna", "Frank Herbert", 1965);
        Livro livro2 = new Livro("Harry Potter e a Pedra Filosofal", "J.K. Rowling", 1997);
        Livro livro3 = new Livro("Star Wars: Herdeiro do Império", "Timothy Zahn", 1991);

        Biblioteca biblioteca = new Biblioteca();

        biblioteca.adicionarLivro(livro1);
        biblioteca.adicionarLivro(livro2);
        biblioteca.adicionarLivro(livro3);

        biblioteca.listarLivros();
    }
}