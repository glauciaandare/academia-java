package academia.java;
import java.util.Scanner;

public class Principal {
    public static void main(String[] args) {
        Principal p = new Principal();
        p.exibeMensagemA();
        p.exibeMensagemB();
    }

    public void exibeMensagemA() {
        System.out.println("Cuide bem dos animais!");
    }

    public void exibeMensagemB() {
        Scanner entrada = new Scanner(System.in);

        System.out.println("Insira uma mensagem de para preservação do planeta: ");
        String mensagem = entrada.nextLine();

        System.out.println("Mensagem: " + mensagem);

        entrada.close();
    }
}
