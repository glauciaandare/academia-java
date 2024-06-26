package academia.java;

public class Pessoal extends Compromisso implements InterfacePessoal {
    public Pessoal(String nomeDoCompromisso, String data, String hora) {
        super(nomeDoCompromisso, data, hora);
    }

    @Override
    public void exibeCompromissoPessoal() {
        System.out.println(this.nomeDoCompromisso + ": " + this.data + ": " + this.hora);
    }
}
