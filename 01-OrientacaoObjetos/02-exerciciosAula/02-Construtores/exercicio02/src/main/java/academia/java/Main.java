package academia.java;

public class Main {
    public static void main(String[] args) {

        Aluno aluno1 = new Aluno("Cecília", 123456);
        Aluno aluno2 = new Aluno("20/11/1969");
        Aluno aluno3 = new Aluno("Vanessa", "02/05/1989", 2024);

        System.out.println("Aluno1" + aluno1);
        System.out.println("Aluno2" + aluno2);
        System.out.println("Aluno3" + aluno3);

    }
}