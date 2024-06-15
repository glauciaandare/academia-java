package academia.java;

public class Main {
    public static void main(String[] args) {

        Paciente paciente1 = new Paciente(70, 1.75);
        Paciente paciente2 = new Paciente(69, 1.55);
        Paciente paciente3 = new Paciente(25, 1.20);

        paciente1.setNome("Lucas");
        paciente2.setNome("Gláucia");
        paciente3.setNome("Joaquim");

        System.out.println("O diagnóstico do pac. " + paciente1.getNome() + " é "
                + paciente1.diagnostico() + " = IMC entre 18,50 e 24,99 kg/m²");
        System.out.println("O diagnóstico do pac. " + paciente2.getNome() + " é "
                + paciente2.diagnostico() + " = IMC entre 25 e 29,99 kg/m²");
        System.out.println("O diagnóstico do pac. " + paciente3.getNome() + " é "
                + paciente3.diagnostico() + " = IMC entre 30 e 34,99 kg/m²");

    }
}