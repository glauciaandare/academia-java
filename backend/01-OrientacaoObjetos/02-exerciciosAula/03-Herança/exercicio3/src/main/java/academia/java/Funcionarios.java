package academia.java;

public class Funcionarios extends Pessoa{

    private String setor;
    private String cargo;
    private String funcao;

    public Funcionarios(String nome, int idade, String telefone, String setor, String cargo, String funcao) {
        super(nome, idade, telefone);
        this.setor = setor;
        this.cargo = cargo;
        this.funcao = funcao;
    }

    public String getSetor() {
        return setor;
    }

    public String getCargo() {
        return cargo;
    }

    public String getFuncao() {
        return funcao;
    }

    @Override
    public String toString() {
        return super.toString() + ", Setor: " + setor + ", Cargo: " + cargo + ", Função: " + funcao;
    }
}
