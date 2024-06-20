package academia.java;

public class Main {
    public static void main(String[] args) {
        Pessoal compromissoPessoal = new Pessoal("Levar Pet ao Vet", "13/06/2024", "10:00");
        Profissional compromissoProfissional = new Profissional("Ir ao Supermercado", "14/06/2024", "14:00");

        compromissoPessoal.exibeCompromissoPessoal();
        compromissoProfissional.exibeCompromissoProfissional();
    }

}