package academia.java;

public class Animal {

    private String tipo;

    public Animal(String tipo) {
        this.tipo = tipo;
    }

    public void andar(){
        System.out.println("Todos andam, mas o modo é variado");
    }

    public String getTipo() {
        return tipo;
    }
}


