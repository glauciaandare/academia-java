Crie uma classe para cada uma das operações (+, -, / ,*).

Cada operação deverá herdar a classe Operacao abaixo, e fazer a
sobrescrita do método calcular.

Uma classe principal deverá solicitar ao usuário os números a serem calculados e exibir o
resultado das operações.

Utilizar construtores.

```
public class Operacao {

    protected double a;
    protected double b;
    protected double resultado;
    
    public double calcular(){
        return resultado;
    }
}
```

Baseado no exercício resolvido anteriormente, crie uma exceção que seja disparada, caso ambos os operandos sejam 0 (zero).

A exceção deverá lançar uma mensagem (“Ambos os valores a serem calculados devem ser diferentes de 0”).

Faça o tratamento dessa exceção, pedindo para que o usuário insira novamente os dados para cálculo.
